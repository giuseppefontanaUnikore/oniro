# SPDX-FileCopyrightText: Huawei Inc.
# SPDX-License-Identifier: MIT

# libxml uses zero-length array tricks causing array-bounds warnings.
# The warnings have been verified to be harmless in 2.9.10; for extra
# security, this should be re-checked after updating.
#
# Removing -Werror=array-bounds here allows us to use -Werror=array-bounds
# globally in OPTIMIZE_FOR=security mode.

TARGET_CFLAGS:remove = "-Werror=array-bounds"
