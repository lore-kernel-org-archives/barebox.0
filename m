Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d68-00089P-2J
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:34 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5C340200014
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:14 +0200
Message-Id: <20190827150918.16247-7-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 06/10] common: add generic CONFIG_UBSAN plumbing
To: barebox@lists.infradead.org

-fsanitize=undefined allows compile-time instrumentation of code to detect
some classes of runtime undefined behavior.

In preparation for allowing arches to provide infrastructure in support
of this feature, add some generic UBSAN options and associated plumbing.

These are only shown in the debug menu when the arch selects the
appropriate symbol. The option is named equally to their Linux counterparts.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Makefile               |   4 +
 common/Kconfig         |   2 +
 lib/Kconfig.ubsan      |  35 ++++
 lib/Makefile           |   2 +
 lib/ubsan.c            | 442 +++++++++++++++++++++++++++++++++++++++++
 lib/ubsan.h            |  89 +++++++++
 scripts/Makefile.lib   |   8 +
 scripts/Makefile.ubsan |  19 ++
 8 files changed, 601 insertions(+)
 create mode 100644 lib/Kconfig.ubsan
 create mode 100644 lib/ubsan.c
 create mode 100644 lib/ubsan.h
 create mode 100644 scripts/Makefile.ubsan

diff --git a/Makefile b/Makefile
index 0d6fc5f6beca..5cab8d6c58ac 100644
--- a/Makefile
+++ b/Makefile
@@ -329,6 +329,8 @@ export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
 export LDFLAGS_barebox
 
+export CFLAGS_UBSAN
+
 # Files to ignore in find ... statements
 
 RCS_FIND_IGNORE := \( -name SCCS -o -name BitKeeper -o -name .svn -o -name CVS -o -name .pc -o -name .hg -o -name .git \) -prune -o
@@ -489,6 +491,8 @@ CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # change __FILE__ to the relative path from the srctree
 CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 
+include scripts/Makefile.ubsan
+
 # KBUILD_IMAGE: Default barebox image to build
 # Depending on the architecture, this can be either compressed or not.
 # It will also include any necessary headers to be bootable.
diff --git a/common/Kconfig b/common/Kconfig
index 8aad5baecdda..16a2aef7c568 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1295,6 +1295,8 @@ config PBL_BREAK
 	  If this enabled, barebox will be compiled with BKPT instruction
 	  on early pbl init. This option should be used only with JTAG debugger!
 
+source "lib/Kconfig.ubsan"
+
 endmenu
 
 config HAS_DEBUG_LL
diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
new file mode 100644
index 000000000000..09f4a0ab8ab8
--- /dev/null
+++ b/lib/Kconfig.ubsan
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config ARCH_HAS_UBSAN_SANITIZE_ALL
+	bool
+
+config UBSAN
+	bool "Undefined behaviour sanity checker"
+	help
+	  This option enables undefined behaviour sanity checker
+	  Compile-time instrumentation is used to detect various undefined
+	  behaviours in runtime.
+
+config UBSAN_SANITIZE_ALL
+	bool "Enable instrumentation for all of barebox"
+	depends on UBSAN
+	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
+	default y
+	help
+	  This option activates instrumentation for all of barebox.
+	  If you don't enable this option, you have to explicitly specify
+	  UBSAN_SANITIZE := y for the files/directories you want to check for UB.
+	  Enabling this option will get barebox image size increased
+	  significantly.
+
+config UBSAN_NO_ALIGNMENT
+	bool "Disable checking of pointers alignment"
+	depends on UBSAN
+	default y if HAVE_EFFICIENT_UNALIGNED_ACCESS
+	help
+	  This option disables the check of unaligned memory accesses.
+	  This option should be used when building allmodconfig.
+	  Disabling this option on architectures that support unaligned
+	  accesses may produce a lot of false positives.
+
+config UBSAN_ALIGNMENT
+	def_bool !UBSAN_NO_ALIGNMENT
diff --git a/lib/Makefile b/lib/Makefile
index a07ceb15abc2..1a7b2b69f497 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -71,6 +71,7 @@ obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
 obj-$(CONFIG_CRC8)	+= crc8.o
 obj-$(CONFIG_NLS)	+= nls_base.o
 obj-$(CONFIG_FSL_QE_FIRMWARE) += fsl-qe-firmware.o
+obj-$(CONFIG_UBSAN)	+= ubsan.o
 
 # GCC library routines
 obj-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
@@ -89,3 +90,4 @@ $(foreach file, $(libfdt_files), \
 
 obj-pbl-$(CONFIG_LIBFDT) += $(libfdt_files)
 
+UBSAN_SANITIZE_ubsan.o := n
diff --git a/lib/ubsan.c b/lib/ubsan.c
new file mode 100644
index 000000000000..89ca6e580bce
--- /dev/null
+++ b/lib/ubsan.c
@@ -0,0 +1,442 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * UBSAN error reporting functions
+ *
+ * Copyright (c) 2014 Samsung Electronics Co., Ltd.
+ * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/bug.h>
+#include <linux/ctype.h>
+#include <init.h>
+#include <linux/kernel.h>
+#include <linux/types.h>
+
+#include "ubsan.h"
+
+void __ubsan_handle_add_overflow(struct overflow_data *, void *, void *);
+void __ubsan_handle_sub_overflow(struct overflow_data *, void *, void *);
+void __ubsan_handle_mul_overflow(struct overflow_data *, void *, void *);
+void __ubsan_handle_negate_overflow(struct overflow_data *, void *);
+void __ubsan_handle_divrem_overflow(struct overflow_data *, void *, void *);
+void __ubsan_handle_type_mismatch(struct type_mismatch_data *, void *);
+void __ubsan_handle_type_mismatch_v1(struct type_mismatch_data_v1 *, void *);
+void __ubsan_handle_out_of_bounds(struct out_of_bounds_data *, void *);
+void __ubsan_handle_shift_out_of_bounds(struct shift_out_of_bounds_data *, void *, void *);
+void __ubsan_handle_builtin_unreachable(struct unreachable_data *);
+void __ubsan_handle_load_invalid_value(struct invalid_value_data *, void *);
+
+const char *type_check_kinds[] = {
+	"load of",
+	"store to",
+	"reference binding to",
+	"member access within",
+	"member call on",
+	"constructor call on",
+	"downcast of",
+	"downcast of"
+};
+
+#define REPORTED_BIT 31
+
+#if (BITS_PER_LONG == 64) && defined(__BIG_ENDIAN)
+#define COLUMN_MASK (~(1U << REPORTED_BIT))
+#define LINE_MASK   (~0U)
+#else
+#define COLUMN_MASK   (~0U)
+#define LINE_MASK (~(1U << REPORTED_BIT))
+#endif
+
+#define VALUE_LENGTH 40
+
+static unsigned int in_ubsan;
+
+static bool was_reported(struct source_location *location)
+{
+	return test_and_set_bit(REPORTED_BIT, &location->reported);
+}
+
+static void print_source_location(const char *prefix,
+				struct source_location *loc)
+{
+	pr_err("%s %s:%d:%d\n", prefix, loc->file_name,
+		loc->line & LINE_MASK, loc->column & COLUMN_MASK);
+}
+
+static bool suppress_report(struct source_location *loc)
+{
+	return in_ubsan || was_reported(loc);
+}
+
+static bool type_is_int(struct type_descriptor *type)
+{
+	return type->type_kind == type_kind_int;
+}
+
+static bool type_is_signed(struct type_descriptor *type)
+{
+	WARN_ON(!type_is_int(type));
+	return  type->type_info & 1;
+}
+
+static unsigned type_bit_width(struct type_descriptor *type)
+{
+	return 1 << (type->type_info >> 1);
+}
+
+static bool is_inline_int(struct type_descriptor *type)
+{
+	unsigned inline_bits = sizeof(unsigned long)*8;
+	unsigned bits = type_bit_width(type);
+
+	WARN_ON(!type_is_int(type));
+
+	return bits <= inline_bits;
+}
+
+static s_max get_signed_val(struct type_descriptor *type, void *val)
+{
+	if (is_inline_int(type)) {
+		unsigned extra_bits = sizeof(s_max)*8 - type_bit_width(type);
+		unsigned long ulong_val = (unsigned long)val;
+
+		return ((s_max)ulong_val) << extra_bits >> extra_bits;
+	}
+
+	if (type_bit_width(type) == 64)
+		return *(s64 *)val;
+
+	return *(s_max *)val;
+}
+
+static bool val_is_negative(struct type_descriptor *type, void *val)
+{
+	return type_is_signed(type) && get_signed_val(type, val) < 0;
+}
+
+static u_max get_unsigned_val(struct type_descriptor *type, void *val)
+{
+	if (is_inline_int(type))
+		return (unsigned long)val;
+
+	if (type_bit_width(type) == 64)
+		return *(u64 *)val;
+
+	return *(u_max *)val;
+}
+
+static void val_to_string(char *str, size_t size, struct type_descriptor *type,
+			void *value)
+{
+	if (type_is_int(type)) {
+		if (type_bit_width(type) == 128) {
+#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
+			u_max val = get_unsigned_val(type, value);
+
+			scnprintf(str, size, "0x%08x%08x%08x%08x",
+				(u32)(val >> 96),
+				(u32)(val >> 64),
+				(u32)(val >> 32),
+				(u32)(val));
+#else
+			WARN_ON(1);
+#endif
+		} else if (type_is_signed(type)) {
+			scnprintf(str, size, "%lld",
+				(s64)get_signed_val(type, value));
+		} else {
+			scnprintf(str, size, "%llu",
+				(u64)get_unsigned_val(type, value));
+		}
+	}
+}
+
+static void ubsan_prologue(struct source_location *location,
+			unsigned long *flags)
+{
+	in_ubsan++;
+
+	pr_err("========================================"
+		"========================================\n");
+	print_source_location("UBSAN: Undefined behaviour in", location);
+}
+
+static void ubsan_epilogue(unsigned long *flags)
+{
+	dump_stack();
+	pr_err("========================================"
+		"========================================\n");
+	in_ubsan--;
+}
+
+static void handle_overflow(struct overflow_data *data, void *lhs,
+			void *rhs, char op)
+{
+
+	struct type_descriptor *type = data->type;
+	unsigned long flags;
+	char lhs_val_str[VALUE_LENGTH];
+	char rhs_val_str[VALUE_LENGTH];
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, &flags);
+
+	val_to_string(lhs_val_str, sizeof(lhs_val_str), type, lhs);
+	val_to_string(rhs_val_str, sizeof(rhs_val_str), type, rhs);
+	pr_err("%s integer overflow:\n",
+		type_is_signed(type) ? "signed" : "unsigned");
+	pr_err("%s %c %s cannot be represented in type %s\n",
+		lhs_val_str,
+		op,
+		rhs_val_str,
+		type->type_name);
+
+	ubsan_epilogue(&flags);
+}
+
+void __ubsan_handle_add_overflow(struct overflow_data *data,
+				void *lhs, void *rhs)
+{
+
+	handle_overflow(data, lhs, rhs, '+');
+}
+EXPORT_SYMBOL(__ubsan_handle_add_overflow);
+
+void __ubsan_handle_sub_overflow(struct overflow_data *data,
+				void *lhs, void *rhs)
+{
+	handle_overflow(data, lhs, rhs, '-');
+}
+EXPORT_SYMBOL(__ubsan_handle_sub_overflow);
+
+void __ubsan_handle_mul_overflow(struct overflow_data *data,
+				void *lhs, void *rhs)
+{
+	handle_overflow(data, lhs, rhs, '*');
+}
+EXPORT_SYMBOL(__ubsan_handle_mul_overflow);
+
+void __ubsan_handle_negate_overflow(struct overflow_data *data,
+				void *old_val)
+{
+	unsigned long flags;
+	char old_val_str[VALUE_LENGTH];
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, &flags);
+
+	val_to_string(old_val_str, sizeof(old_val_str), data->type, old_val);
+
+	pr_err("negation of %s cannot be represented in type %s:\n",
+		old_val_str, data->type->type_name);
+
+	ubsan_epilogue(&flags);
+}
+EXPORT_SYMBOL(__ubsan_handle_negate_overflow);
+
+
+void __ubsan_handle_divrem_overflow(struct overflow_data *data,
+				void *lhs, void *rhs)
+{
+	unsigned long flags;
+	char rhs_val_str[VALUE_LENGTH];
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, &flags);
+
+	val_to_string(rhs_val_str, sizeof(rhs_val_str), data->type, rhs);
+
+	if (type_is_signed(data->type) && get_signed_val(data->type, rhs) == -1)
+		pr_err("division of %s by -1 cannot be represented in type %s\n",
+			rhs_val_str, data->type->type_name);
+	else
+		pr_err("division by zero\n");
+
+	ubsan_epilogue(&flags);
+}
+EXPORT_SYMBOL(__ubsan_handle_divrem_overflow);
+
+static void handle_null_ptr_deref(struct type_mismatch_data_common *data)
+{
+	unsigned long flags;
+
+	if (suppress_report(data->location))
+		return;
+
+	ubsan_prologue(data->location, &flags);
+
+	pr_err("%s null pointer of type %s\n",
+		type_check_kinds[data->type_check_kind],
+		data->type->type_name);
+
+	ubsan_epilogue(&flags);
+}
+
+static void handle_misaligned_access(struct type_mismatch_data_common *data,
+				unsigned long ptr)
+{
+	unsigned long flags;
+
+	if (suppress_report(data->location))
+		return;
+
+	ubsan_prologue(data->location, &flags);
+
+	pr_err("%s misaligned address %p for type %s\n",
+		type_check_kinds[data->type_check_kind],
+		(void *)ptr, data->type->type_name);
+	pr_err("which requires %ld byte alignment\n", data->alignment);
+
+	ubsan_epilogue(&flags);
+}
+
+static void handle_object_size_mismatch(struct type_mismatch_data_common *data,
+					unsigned long ptr)
+{
+	unsigned long flags;
+
+	if (suppress_report(data->location))
+		return;
+
+	ubsan_prologue(data->location, &flags);
+	pr_err("%s address %p with insufficient space\n",
+		type_check_kinds[data->type_check_kind],
+		(void *) ptr);
+	pr_err("for an object of type %s\n", data->type->type_name);
+	ubsan_epilogue(&flags);
+}
+
+static void ubsan_type_mismatch_common(struct type_mismatch_data_common *data,
+				unsigned long ptr)
+{
+	if (!ptr)
+		handle_null_ptr_deref(data);
+	else if (data->alignment && !IS_ALIGNED(ptr, data->alignment))
+		handle_misaligned_access(data, ptr);
+	else
+		handle_object_size_mismatch(data, ptr);
+}
+
+void __ubsan_handle_type_mismatch(struct type_mismatch_data *data,
+				void *ptr)
+{
+	struct type_mismatch_data_common common_data = {
+		.location = &data->location,
+		.type = data->type,
+		.alignment = data->alignment,
+		.type_check_kind = data->type_check_kind
+	};
+
+	ubsan_type_mismatch_common(&common_data, (unsigned long)ptr);
+}
+EXPORT_SYMBOL(__ubsan_handle_type_mismatch);
+
+void __ubsan_handle_type_mismatch_v1(struct type_mismatch_data_v1 *data,
+				void *ptr)
+{
+
+	struct type_mismatch_data_common common_data = {
+		.location = &data->location,
+		.type = data->type,
+		.alignment = 1UL << data->log_alignment,
+		.type_check_kind = data->type_check_kind
+	};
+
+	ubsan_type_mismatch_common(&common_data, (unsigned long)ptr);
+}
+EXPORT_SYMBOL(__ubsan_handle_type_mismatch_v1);
+
+void __ubsan_handle_out_of_bounds(struct out_of_bounds_data *data, void *index)
+{
+	unsigned long flags;
+	char index_str[VALUE_LENGTH];
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, &flags);
+
+	val_to_string(index_str, sizeof(index_str), data->index_type, index);
+	pr_err("index %s is out of range for type %s\n", index_str,
+		data->array_type->type_name);
+	ubsan_epilogue(&flags);
+}
+EXPORT_SYMBOL(__ubsan_handle_out_of_bounds);
+
+void __ubsan_handle_shift_out_of_bounds(struct shift_out_of_bounds_data *data,
+					void *lhs, void *rhs)
+{
+	unsigned long flags;
+	struct type_descriptor *rhs_type = data->rhs_type;
+	struct type_descriptor *lhs_type = data->lhs_type;
+	char rhs_str[VALUE_LENGTH];
+	char lhs_str[VALUE_LENGTH];
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, &flags);
+
+	val_to_string(rhs_str, sizeof(rhs_str), rhs_type, rhs);
+	val_to_string(lhs_str, sizeof(lhs_str), lhs_type, lhs);
+
+	if (val_is_negative(rhs_type, rhs))
+		pr_err("shift exponent %s is negative\n", rhs_str);
+
+	else if (get_unsigned_val(rhs_type, rhs) >=
+		type_bit_width(lhs_type))
+		pr_err("shift exponent %s is too large for %u-bit type %s\n",
+			rhs_str,
+			type_bit_width(lhs_type),
+			lhs_type->type_name);
+	else if (val_is_negative(lhs_type, lhs))
+		pr_err("left shift of negative value %s\n",
+			lhs_str);
+	else
+		pr_err("left shift of %s by %s places cannot be"
+			" represented in type %s\n",
+			lhs_str, rhs_str,
+			lhs_type->type_name);
+
+	ubsan_epilogue(&flags);
+}
+EXPORT_SYMBOL(__ubsan_handle_shift_out_of_bounds);
+
+
+void __ubsan_handle_builtin_unreachable(struct unreachable_data *data)
+{
+	unsigned long flags;
+
+	ubsan_prologue(&data->location, &flags);
+	pr_err("calling __builtin_unreachable()\n");
+	ubsan_epilogue(&flags);
+	panic("can't return from __builtin_unreachable()");
+}
+EXPORT_SYMBOL(__ubsan_handle_builtin_unreachable);
+
+void __ubsan_handle_load_invalid_value(struct invalid_value_data *data,
+				void *val)
+{
+	unsigned long flags;
+	char val_str[VALUE_LENGTH];
+
+	if (suppress_report(&data->location))
+		return;
+
+	ubsan_prologue(&data->location, &flags);
+
+	val_to_string(val_str, sizeof(val_str), data->type, val);
+
+	pr_err("load of value %s is not a valid value for type %s\n",
+		val_str, data->type->type_name);
+
+	ubsan_epilogue(&flags);
+}
+EXPORT_SYMBOL(__ubsan_handle_load_invalid_value);
diff --git a/lib/ubsan.h b/lib/ubsan.h
new file mode 100644
index 000000000000..7bbedd4b7871
--- /dev/null
+++ b/lib/ubsan.h
@@ -0,0 +1,89 @@
+ /* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LIB_UBSAN_H
+#define _LIB_UBSAN_H
+
+enum {
+	type_kind_int = 0,
+	type_kind_float = 1,
+	type_unknown = 0xffff
+};
+
+struct type_descriptor {
+	u16 type_kind;
+	u16 type_info;
+	char type_name[1];
+};
+
+struct source_location {
+	const char *file_name;
+	union {
+		unsigned long reported;
+		struct {
+			u32 line;
+			u32 column;
+		};
+	};
+};
+
+struct overflow_data {
+	struct source_location location;
+	struct type_descriptor *type;
+};
+
+struct type_mismatch_data {
+	struct source_location location;
+	struct type_descriptor *type;
+	unsigned long alignment;
+	unsigned char type_check_kind;
+};
+
+struct type_mismatch_data_v1 {
+	struct source_location location;
+	struct type_descriptor *type;
+	unsigned char log_alignment;
+	unsigned char type_check_kind;
+};
+
+struct type_mismatch_data_common {
+	struct source_location *location;
+	struct type_descriptor *type;
+	unsigned long alignment;
+	unsigned char type_check_kind;
+};
+
+struct nonnull_arg_data {
+	struct source_location location;
+	struct source_location attr_location;
+	int arg_index;
+};
+
+struct out_of_bounds_data {
+	struct source_location location;
+	struct type_descriptor *array_type;
+	struct type_descriptor *index_type;
+};
+
+struct shift_out_of_bounds_data {
+	struct source_location location;
+	struct type_descriptor *lhs_type;
+	struct type_descriptor *rhs_type;
+};
+
+struct unreachable_data {
+	struct source_location location;
+};
+
+struct invalid_value_data {
+	struct source_location location;
+	struct type_descriptor *type;
+};
+
+#if defined(CONFIG_ARCH_SUPPORTS_INT128) && defined(__SIZEOF_INT128__)
+typedef __int128 s_max;
+typedef unsigned __int128 u_max;
+#else
+typedef s64 s_max;
+typedef u64 u_max;
+#endif
+
+#endif
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index fc5fe3d7e8bc..c4d307ae3020 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -120,6 +120,14 @@ _c_flags       = $(CFLAGS) $(EXTRA_CFLAGS) $(CFLAGS_$(basetarget).o)
 _a_flags       = $(AFLAGS) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
 _cpp_flags     = $(CPPFLAGS) $(EXTRA_CPPFLAGS) $(CPPFLAGS_$(@F))
 
+ifeq ($(CONFIG_UBSAN),y)
+_CFLAGS_UBSAN   = $(eval _CFLAGS_UBSAN := $(CFLAGS_UBSAN))$(_CFLAGS_UBSAN)
+_c_flags       += $(if $(patsubst n%,, \
+		$(UBSAN_SANITIZE_$(basetarget).o)$(UBSAN_SANITIZE)$(CONFIG_UBSAN_SANITIZE_ALL)), \
+		$(_CFLAGS_UBSAN))
+PBL_CPPFLAGS   += $(call cc-option,-fno-sanitize=all)
+endif
+
 # If building barebox in a separate objtree expand all occurrences
 # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
 
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
new file mode 100644
index 000000000000..019771b845c5
--- /dev/null
+++ b/scripts/Makefile.ubsan
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+ifdef CONFIG_UBSAN
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=shift)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=integer-divide-by-zero)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=unreachable)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=signed-integer-overflow)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=object-size)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bool)
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=enum)
+
+ifdef CONFIG_UBSAN_ALIGNMENT
+      CFLAGS_UBSAN += $(call cc-option, -fsanitize=alignment)
+endif
+
+      # -fsanitize=* options makes GCC less smart than usual and
+      # increase number of 'maybe-uninitialized false-positives
+      CFLAGS_UBSAN += $(call cc-option, -Wno-maybe-uninitialized)
+endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
