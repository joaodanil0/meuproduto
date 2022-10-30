
#include "UserLed.h"

#include <utils/Log.h>
#include <android-base/logging.h>
#include <sys/stat.h>

namespace aidl::placamae::hal::userled {

static const char RED_LED[] = "/sys/devices/platform/leds/leds/vim3:red/trigger";

static int write_value(const char *file, const char *value) {
    
    int to_write, written, ret, fd;

    fd = TEMP_FAILURE_RETRY(open(file, O_WRONLY));
    if (fd < 0) {
        return -1;
    }

    to_write = strlen(value) + 1;
    written = TEMP_FAILURE_RETRY(write(fd, value, to_write));
    if (written == -1) {
        ret = -2;
    } else if (written != to_write) {
        ret = -3;
    } else {
        ret = 0;
    }

    errno = 0;
    close(fd);

    return ret;
}

ndk::ScopedAStatus UserLed::setMode(const std::string &in_mode, bool *_aidl_return) {
    LOG(INFO) << ">>>>>UserLed:setMode data=(" << in_mode.c_str() << ")";
    *_aidl_return = write_value(RED_LED, in_mode.c_str()) == 0;
    return ndk::ScopedAStatus::ok();
}
}