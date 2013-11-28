Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm5xC-0008Um-OU
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:04:48 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8A4BDFFA88A
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:04:21 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 28 Nov 2013 19:06:43 +0100
Message-Id: <1385662007-13057-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/6] ARM: introduce machine description
To: barebox@lists.infradead.org

This will allow to do not check in each board which machine we are running
from. This work on DT & non-DT board.

If only one board is enable autoselect it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/Makefile              |   2 +-
 arch/arm/cpu/dtb.c                 |   8 +-
 arch/arm/cpu/machine.c             | 188 +++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/barebox-arm.h |   8 ++
 arch/arm/include/asm/mach/arch.h   |  68 ++++++++++++++
 arch/arm/lib/barebox.lds.S         |   6 ++
 6 files changed, 277 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/cpu/machine.c
 create mode 100644 arch/arm/include/asm/mach/arch.h

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index aba201b..78532da 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -1,7 +1,7 @@
 obj-y += cpu.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions.o
 obj-$(CONFIG_ARM_EXCEPTIONS) += interrupts.o
-obj-y += start.o setupc.o
+obj-y += machine.o start.o setupc.o
 
 #
 # Any variants can be called as start-armxyz.S
diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index a5881dd..ee7006e 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -18,10 +18,11 @@
 #include <init.h>
 #include <of.h>
 #include <asm/barebox-arm.h>
+#include <asm/mach/arch.h>
 
 extern char __dtb_start[];
 
-static int of_arm_init(void)
+int of_arm_init(void)
 {
 	struct device_node *root;
 	void *fdt;
@@ -48,6 +49,10 @@ static int of_arm_init(void)
 	}
 
 	root = of_unflatten_dtb(NULL, fdt);
+
+	if (arm_set_dt_machine(NULL))
+		pr_debug("No compatible machine found\n");
+
 	if (root) {
 		of_set_root_node(root);
 		if (IS_ENABLED(CONFIG_OFDEVICE))
@@ -56,4 +61,3 @@ static int of_arm_init(void)
 
 	return 0;
 }
-core_initcall(of_arm_init);
diff --git a/arch/arm/cpu/machine.c b/arch/arm/cpu/machine.c
new file mode 100644
index 0000000..ad0d8cb
--- /dev/null
+++ b/arch/arm/cpu/machine.c
@@ -0,0 +1,188 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 Only
+ */
+
+#include <common.h>
+#include <asm/mach/arch.h>
+#include <asm/barebox-arm.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <init.h>
+#include <string.h>
+#include <debug_ll.h>
+
+const struct machine_desc *machine_desc;
+unsigned int __machine_arch_type = ~0;
+
+int arm_set_machine(const unsigned int type)
+{
+	const struct machine_desc *m;
+
+	puts_ll("type ");
+	puthex_ll(type);
+	puts_ll("\n");
+
+	if (type == ~0)
+		return -ENOENT;
+
+	for_each_machine_desc(m) {
+		puts_ll("machine ");
+		if (m->name)
+			puts_ll(m->name);
+		puts_ll("\n");
+		if (m->nr == type) {
+			machine_desc = (const struct machine_desc *)m;
+			__machine_arch_type = type;
+			armlinux_set_architecture(__machine_arch_type);
+			return 0;
+		}
+	}
+
+	return -ENOENT;
+}
+
+int is_dt_compatible(const struct machine_desc *m, const char* dt_compat)
+{
+	const char *const *dtc = m->dt_compat;
+
+	while (dtc) {
+		const char *s = *dtc;
+		if (dt_compat && !of_compat_cmp(s, dt_compat, strlen(dt_compat)))
+			return 1;
+		else if (of_machine_is_compatible(s))
+			return 1;
+		dtc++;
+	}
+
+	return 0;
+}
+
+int arm_set_dt_machine(const char* dt_compat)
+{
+	const struct machine_desc *m;
+
+	for_each_machine_desc(m) {
+		if (!is_dt_compatible(m, dt_compat))
+			continue;
+
+		machine_desc = (const struct machine_desc *)m;
+		if (m->nr != ~0)
+			armlinux_set_architecture(m->nr);
+
+		return 0;
+	}
+
+	return -ENOENT;
+}
+
+static void arm_mach_only_one_machine(void)
+{
+	const struct machine_desc *m;
+	const struct machine_desc *tmp = NULL;
+
+	for_each_machine_desc(m) {
+		if (tmp)
+			return;
+		tmp = m;
+	}
+
+	if (!tmp)
+		return;
+	machine_desc = (const struct machine_desc *)tmp;
+	armlinux_set_architecture(machine_desc->nr);
+}
+
+#define arm_mach_xx_init(level)						\
+({									\
+	int __ret = 0;							\
+									\
+	do {								\
+		if (!machine_desc)					\
+			break;						\
+									\
+		if (machine_desc->level##_init) {			\
+			__ret = machine_desc->level##_init();		\
+			if (__ret)					\
+				break;					\
+		}							\
+	} while(0);							\
+	__ret;								\
+})
+
+static int arm_mach_pure_init(void)
+{
+	int ret = -EINVAL;
+
+	if (__machine_arch_type != ~0 && __machine_arch_type < MAX_MACH_TYPE)
+		ret = arm_set_machine(__machine_arch_type);
+	if (ret)
+		arm_mach_only_one_machine();
+	of_arm_init();
+
+	ret = arm_mach_xx_init(pure);
+
+	return ret;
+}
+pure_initcall(arm_mach_pure_init);
+
+static int arm_mach_core_init(void)
+{
+	return arm_mach_xx_init(core);
+}
+core_initcall(arm_mach_core_init);
+
+static int arm_mach_postcore_init(void)
+{
+	return arm_mach_xx_init(postcore);
+}
+postcore_initcall(arm_mach_postcore_init);
+
+static int arm_mach_console_init(void)
+{
+	if (!machine_desc)
+		return 0;
+
+	if (machine_desc->name)
+		barebox_set_model(machine_desc->name);
+
+	return arm_mach_xx_init(console);
+}
+console_initcall(arm_mach_console_init);
+
+static int arm_mach_postconsole_init(void)
+{
+	return arm_mach_xx_init(postconsole);
+}
+postconsole_initcall(arm_mach_postconsole_init);
+
+static int arm_mach_mem_init(void)
+{
+	return arm_mach_xx_init(mem);
+}
+mem_initcall(arm_mach_mem_init);
+
+static int arm_mach_postmmu_init(void)
+{
+	return arm_mach_xx_init(postmmu);
+}
+postmmu_initcall(arm_mach_postmmu_init);
+
+static int arm_mach_coredevice_init(void)
+{
+	return arm_mach_xx_init(coredevice);
+}
+coredevice_initcall(arm_mach_coredevice_init);
+
+static int arm_mach_device_init(void)
+{
+	return arm_mach_xx_init(device);
+}
+device_initcall(arm_mach_device_init);
+
+static int arm_mach_late_init(void)
+{
+	return arm_mach_xx_init(late);
+}
+late_initcall(arm_mach_late_init);
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 622bd13..877edcd 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -34,6 +34,14 @@ int	cleanup_before_linux(void);
 /* arch/<arch>board(s)/.../... */
 int	board_init(void);
 int	dram_init (void);
+#ifdef CONFIG_OFDEVICE
+int	of_arm_init(void);
+#else
+static inline int of_arm_init(void)
+{
+	return 0;
+}
+#endif
 
 extern char __exceptions_start[], __exceptions_stop[];
 
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
new file mode 100644
index 0000000..91f1d2e
--- /dev/null
+++ b/arch/arm/include/asm/mach/arch.h
@@ -0,0 +1,68 @@
+/*
+ *  arch/arm/include/asm/mach/arch.h
+ *
+ *  Copyright (C) 2000 Russell King
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#include <linux/types.h>
+#include <linux/stringify.h>
+
+#ifndef __ASM_MACH_ARCH_H__
+#define __ASM_MACH_ARCH_H__
+
+struct machine_desc {
+	unsigned int		nr;		/* architecture number	*/
+	const char		*name;		/* architecture name	*/
+	const char *const	*dt_compat;	/* array of device tree
+						 * 'compatible' strings	*/
+
+	int			(*pure_init)(void);
+	int			(*core_init)(void);
+	int			(*postcore_init)(void);
+	int			(*console_init)(void);
+	int			(*postconsole_init)(void);
+	int			(*mem_init)(void);
+	int			(*postmmu_init)(void);
+	int			(*coredevice_init)(void);
+	int			(*device_init)(void);
+	int			(*late_init)(void);
+};
+
+extern const struct machine_desc *machine_desc;
+
+int arm_set_machine(const unsigned int type);
+int arm_set_dt_machine(const char* dt_compat);
+
+/*
+ * Machine type table - also only accessible during boot
+ */
+extern const struct machine_desc __arch_info_begin[], __arch_info_end[];
+#define for_each_machine_desc(p)			\
+	for (p = __arch_info_begin; p < __arch_info_end; p++)
+
+/*
+ * Set of macros to define architecture features.  This is built into
+ * a table by the linker.
+ */
+#define MACHINE_START(_type,_name)			\
+static const struct machine_desc __mach_desc_##_type	\
+ __used							\
+ __attribute__ ((unused,section (".barebox_mach_" __stringify(_type)))) = {	\
+	.nr		= MACH_TYPE_##_type,		\
+	.name		= _name,
+
+#define MACHINE_END				\
+};
+
+#define DT_MACHINE_START(_name, _namestr)		\
+static const struct machine_desc __mach_desc_##_name	\
+ __used							\
+ __attribute__ ((unused,section (".barebox_mach_" __stringify(_name)))) = {	\
+	.nr		= ~0,				\
+	.name		= _namestr,
+
+#endif
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 10c63bf..637d205 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -94,6 +94,12 @@ SECTIONS
 
 	.dtb : { BAREBOX_DTB() }
 
+	.arch.info : {
+		__arch_info_begin = .;
+		KEEP(*(SORT_BY_NAME(.barebox_mach*)))
+		__arch_info_end = .;
+	}
+
 	.rel.dyn : {
 		__rel_dyn_start = .;
 		*(.rel*)
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
