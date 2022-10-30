#include <aidl/placamae/hal/userled/BnUserLed.h>

namespace aidl::placamae::hal::userled {
    
class UserLed : public BnUserLed {
    public:
        ndk::ScopedAStatus setMode(const std::string &in_mode, bool *_aidl_return) override;
};
}
