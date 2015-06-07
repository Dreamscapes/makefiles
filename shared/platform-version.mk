# This task allows restricting other tasks to be run only when platform versions match expectations

err_platform_mismatch = Platform version mismatch: current: $(platform_v), required: $(platform_t)

platform-version:
	$(if platform_v, , $(error Failed to detect current platform via platform_v))
	$(if platform_t, , $(error Target platform not specified - set it via platform_t))
	$(if $(filter-out $(platform_v), $(platform_t)), $(error $(err_platform_mismatch)))

.PHONY: platform-version
