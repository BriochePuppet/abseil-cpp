#
# Copyright (C) YuqiaoZhang(HanetakaChou)
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

# https://developer.android.com/ndk/guides/android_mk

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := abseil-cpp

LOCAL_SRC_FILES := \
	$(LOCAL_PATH)/../absl/base/internal/cycleclock.cc \
	$(LOCAL_PATH)/../absl/base/internal/low_level_alloc.cc \
	$(LOCAL_PATH)/../absl/base/internal/poison.cc \
	$(LOCAL_PATH)/../absl/base/internal/raw_logging.cc \
	$(LOCAL_PATH)/../absl/base/internal/scoped_set_env.cc \
	$(LOCAL_PATH)/../absl/base/internal/spinlock.cc \
	$(LOCAL_PATH)/../absl/base/internal/spinlock_wait.cc \
	$(LOCAL_PATH)/../absl/base/internal/strerror.cc \
	$(LOCAL_PATH)/../absl/base/internal/sysinfo.cc \
	$(LOCAL_PATH)/../absl/base/internal/thread_identity.cc \
	$(LOCAL_PATH)/../absl/base/internal/throw_delegate.cc \
	$(LOCAL_PATH)/../absl/base/internal/tracing.cc \
	$(LOCAL_PATH)/../absl/base/internal/unscaledcycleclock.cc \
	$(LOCAL_PATH)/../absl/base/log_severity.cc \
	$(LOCAL_PATH)/../absl/container/internal/hashtablez_sampler.cc \
	$(LOCAL_PATH)/../absl/container/internal/hashtablez_sampler_force_weak_definition.cc \
	$(LOCAL_PATH)/../absl/container/internal/raw_hash_set.cc \
	$(LOCAL_PATH)/../absl/crc/crc32c.cc \
	$(LOCAL_PATH)/../absl/crc/internal/cpu_detect.cc \
	$(LOCAL_PATH)/../absl/crc/internal/crc.cc \
	$(LOCAL_PATH)/../absl/crc/internal/crc_cord_state.cc \
	$(LOCAL_PATH)/../absl/crc/internal/crc_memcpy_fallback.cc \
	$(LOCAL_PATH)/../absl/crc/internal/crc_memcpy_x86_arm_combined.cc \
	$(LOCAL_PATH)/../absl/crc/internal/crc_non_temporal_memcpy.cc \
	$(LOCAL_PATH)/../absl/crc/internal/crc_x86_arm_combined.cc \
	$(LOCAL_PATH)/../absl/debugging/failure_signal_handler.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/address_is_readable.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/decode_rust_punycode.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/demangle.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/demangle_rust.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/elf_mem_image.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/examine_stack.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/utf8_for_code_point.cc \
	$(LOCAL_PATH)/../absl/debugging/internal/vdso_support.cc \
	$(LOCAL_PATH)/../absl/debugging/leak_check.cc \
	$(LOCAL_PATH)/../absl/debugging/stacktrace.cc \
	$(LOCAL_PATH)/../absl/debugging/symbolize.cc \
	$(LOCAL_PATH)/../absl/flags/commandlineflag.cc \
	$(LOCAL_PATH)/../absl/flags/internal/commandlineflag.cc \
	$(LOCAL_PATH)/../absl/flags/internal/flag.cc \
	$(LOCAL_PATH)/../absl/flags/internal/private_handle_accessor.cc \
	$(LOCAL_PATH)/../absl/flags/internal/program_name.cc \
	$(LOCAL_PATH)/../absl/flags/internal/usage.cc \
	$(LOCAL_PATH)/../absl/flags/marshalling.cc \
	$(LOCAL_PATH)/../absl/flags/parse.cc \
	$(LOCAL_PATH)/../absl/flags/reflection.cc \
	$(LOCAL_PATH)/../absl/flags/usage.cc \
	$(LOCAL_PATH)/../absl/flags/usage_config.cc \
	$(LOCAL_PATH)/../absl/hash/internal/city.cc \
	$(LOCAL_PATH)/../absl/hash/internal/hash.cc \
	$(LOCAL_PATH)/../absl/log/die_if_null.cc \
	$(LOCAL_PATH)/../absl/log/flags.cc \
	$(LOCAL_PATH)/../absl/log/globals.cc \
	$(LOCAL_PATH)/../absl/log/initialize.cc \
	$(LOCAL_PATH)/../absl/log/internal/check_op.cc \
	$(LOCAL_PATH)/../absl/log/internal/conditions.cc \
	$(LOCAL_PATH)/../absl/log/internal/fnmatch.cc \
	$(LOCAL_PATH)/../absl/log/internal/globals.cc \
	$(LOCAL_PATH)/../absl/log/internal/log_format.cc \
	$(LOCAL_PATH)/../absl/log/internal/log_message.cc \
	$(LOCAL_PATH)/../absl/log/internal/log_sink_set.cc \
	$(LOCAL_PATH)/../absl/log/internal/nullguard.cc \
	$(LOCAL_PATH)/../absl/log/internal/proto.cc \
	$(LOCAL_PATH)/../absl/log/internal/structured_proto.cc \
	$(LOCAL_PATH)/../absl/log/internal/vlog_config.cc \
	$(LOCAL_PATH)/../absl/log/log_entry.cc \
	$(LOCAL_PATH)/../absl/log/log_sink.cc \
	$(LOCAL_PATH)/../absl/numeric/int128.cc \
	$(LOCAL_PATH)/../absl/profiling/hashtable.cc \
	$(LOCAL_PATH)/../absl/profiling/internal/exponential_biased.cc \
	$(LOCAL_PATH)/../absl/profiling/internal/periodic_sampler.cc \
	$(LOCAL_PATH)/../absl/profiling/internal/profile_builder.cc \
	$(LOCAL_PATH)/../absl/random/discrete_distribution.cc \
	$(LOCAL_PATH)/../absl/random/gaussian_distribution.cc \
	$(LOCAL_PATH)/../absl/random/internal/chi_square.cc \
	$(LOCAL_PATH)/../absl/random/internal/distribution_test_util.cc \
	$(LOCAL_PATH)/../absl/random/internal/entropy_pool.cc \
	$(LOCAL_PATH)/../absl/random/internal/randen.cc \
	$(LOCAL_PATH)/../absl/random/internal/randen_detect.cc \
	$(LOCAL_PATH)/../absl/random/internal/randen_hwaes.cc \
	$(LOCAL_PATH)/../absl/random/internal/randen_round_keys.cc \
	$(LOCAL_PATH)/../absl/random/internal/randen_slow.cc \
	$(LOCAL_PATH)/../absl/random/internal/seed_material.cc \
	$(LOCAL_PATH)/../absl/random/seed_gen_exception.cc \
	$(LOCAL_PATH)/../absl/random/seed_sequences.cc \
	$(LOCAL_PATH)/../absl/status/internal/status_internal.cc \
	$(LOCAL_PATH)/../absl/status/status.cc \
	$(LOCAL_PATH)/../absl/status/statusor.cc \
	$(LOCAL_PATH)/../absl/status/status_payload_printer.cc \
	$(LOCAL_PATH)/../absl/strings/ascii.cc \
	$(LOCAL_PATH)/../absl/strings/charconv.cc \
	$(LOCAL_PATH)/../absl/strings/cord.cc \
	$(LOCAL_PATH)/../absl/strings/cord_analysis.cc \
	$(LOCAL_PATH)/../absl/strings/escaping.cc \
	$(LOCAL_PATH)/../absl/strings/internal/charconv_bigint.cc \
	$(LOCAL_PATH)/../absl/strings/internal/charconv_parse.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cordz_functions.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cordz_handle.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cordz_info.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cordz_sample_token.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cord_internal.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cord_rep_btree.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cord_rep_btree_navigator.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cord_rep_btree_reader.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cord_rep_consume.cc \
	$(LOCAL_PATH)/../absl/strings/internal/cord_rep_crc.cc \
	$(LOCAL_PATH)/../absl/strings/internal/damerau_levenshtein_distance.cc \
	$(LOCAL_PATH)/../absl/strings/internal/escaping.cc \
	$(LOCAL_PATH)/../absl/strings/internal/memutil.cc \
	$(LOCAL_PATH)/../absl/strings/internal/ostringstream.cc \
	$(LOCAL_PATH)/../absl/strings/internal/stringify_sink.cc \
	$(LOCAL_PATH)/../absl/strings/internal/str_format/arg.cc \
	$(LOCAL_PATH)/../absl/strings/internal/str_format/bind.cc \
	$(LOCAL_PATH)/../absl/strings/internal/str_format/extension.cc \
	$(LOCAL_PATH)/../absl/strings/internal/str_format/float_conversion.cc \
	$(LOCAL_PATH)/../absl/strings/internal/str_format/output.cc \
	$(LOCAL_PATH)/../absl/strings/internal/str_format/parser.cc \
	$(LOCAL_PATH)/../absl/strings/internal/utf8.cc \
	$(LOCAL_PATH)/../absl/strings/match.cc \
	$(LOCAL_PATH)/../absl/strings/numbers.cc \
	$(LOCAL_PATH)/../absl/strings/string_view.cc \
	$(LOCAL_PATH)/../absl/strings/str_cat.cc \
	$(LOCAL_PATH)/../absl/strings/str_replace.cc \
	$(LOCAL_PATH)/../absl/strings/str_split.cc \
	$(LOCAL_PATH)/../absl/strings/substitute.cc \
	$(LOCAL_PATH)/../absl/synchronization/barrier.cc \
	$(LOCAL_PATH)/../absl/synchronization/blocking_counter.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/create_thread_identity.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/futex_waiter.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/graphcycles.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/kernel_timeout.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/per_thread_sem.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/pthread_waiter.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/sem_waiter.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/stdcpp_waiter.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/waiter_base.cc \
	$(LOCAL_PATH)/../absl/synchronization/internal/win32_waiter.cc \
	$(LOCAL_PATH)/../absl/synchronization/mutex.cc \
	$(LOCAL_PATH)/../absl/synchronization/notification.cc \
	$(LOCAL_PATH)/../absl/time/civil_time.cc \
	$(LOCAL_PATH)/../absl/time/clock.cc \
	$(LOCAL_PATH)/../absl/time/duration.cc \
	$(LOCAL_PATH)/../absl/time/format.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/civil_time_detail.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_fixed.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_format.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_if.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_impl.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_info.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_libc.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_lookup.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/time_zone_posix.cc \
	$(LOCAL_PATH)/../absl/time/internal/cctz/src/zone_info_source.cc \
	$(LOCAL_PATH)/../absl/time/time.cc

LOCAL_CFLAGS :=

ifeq (armeabi-v7a,$(TARGET_ARCH_ABI))
LOCAL_ARM_MODE := arm
LOCAL_ARM_NEON := true
else ifeq (arm64-v8a,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS +=
else ifeq (x86,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else ifeq (x86_64,$(TARGET_ARCH_ABI))
LOCAL_CFLAGS += -mf16c
LOCAL_CFLAGS += -mfma
LOCAL_CFLAGS += -mavx2
else
LOCAL_CFLAGS +=
endif

LOCAL_CFLAGS += -Wall
LOCAL_CFLAGS += -Werror=return-type

LOCAL_C_INCLUDES :=
LOCAL_C_INCLUDES += $(LOCAL_PATH)/..

LOCAL_CPPFLAGS := 
LOCAL_CPPFLAGS += -std=c++20

include $(BUILD_STATIC_LIBRARY)
