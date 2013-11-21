Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VjOQj-0002PC-6B
 for barebox@lists.infradead.org; Thu, 21 Nov 2013 07:12:02 +0000
Received: from mail629.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id A5202FF90D2
 for <barebox@lists.infradead.org>; Thu, 21 Nov 2013 08:13:53 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 21 Nov 2013 08:13:53 +0100
Message-Id: <1385018035-26300-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20131121071216.GE7965@ns203013.ovh.net>
References: <20131121071216.GE7965@ns203013.ovh.net>
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
Subject: [PATCH 1/3] ARM: introduce machine description
To: barebox@lists.infradead.org

This will allow to do not check in each board which machine we are running
from. This work on DT & non-DT board.

If only one board is enable autoselect it

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/Makefile            |   2 +-
 arch/arm/cpu/dtb.c               |   4 ++
 arch/arm/cpu/machine.c           | 110 +++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/mach/arch.h |  66 +++++++++++++++++++++++
 arch/arm/lib/barebox.lds.S       |   6 +++
 5 files changed, 187 insertions(+), 1 deletion(-)
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
index a5881dd..62a9860 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -48,6 +48,10 @@ static int of_arm_init(void)
 	}
 
 	root = of_unflatten_dtb(NULL, fdt);
+
+	if (arm_set_dt_machine())
+		pr_debug("No compatible machine found\n");
+
 	if (root) {
 		of_set_root_node(root);
 		if (IS_ENABLED(CONFIG_OFDEVICE))
diff --git a/arch/arm/cpu/machine.c b/arch/arm/cpu/machine.c
new file mode 100644
index 0000000..e17c5bb
--- /dev/null
+++ b/arch/arm/cpu/machine.c
@@ -0,0 +1,110 @@
+#include <asm/mach/arch.h>
+#include <init.h>
+#include <common.h>
+#include <string.h>
+#include <debug_ll.h>
+
+const struct machine_desc *machine_desc;
+unsigned int __machine_arch_type = 0xffffffff;
+
+int arm_set_machine(const unsigned int type)
+{
+	const struct machine_desc *m;
+
+	puts_ll("type ");
+	puthex_ll(type);
+	puts_ll("\n");
+
+	if (type == 0xffffffff)
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
+			return 0;
+		}
+	}
+
+	return -ENOENT;
+}
+
+int arm_set_dt_machine(void)
+{
+	const struct machine_desc *m;
+
+	for_each_machine_desc(m) {
+		if (!m->dt_compat)
+			continue;
+
+		if (!of_machine_is_compatible((const char *)m->dt_compat))
+			continue;
+
+		machine_desc = (const struct machine_desc *)m;
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
+	}
+
+	if (tmp)
+		machine_desc = (const struct machine_desc *)tmp;
+}
+
+static int arm_mach_early_init(void)
+{
+	arm_mach_only_one_machine();
+
+	if (machine_desc && machine_desc->init_early)
+		machine_desc->init_early();
+	
+	return 0;
+}
+pure_initcall(arm_mach_early_init);
+
+static int arm_mach_console_init(void)
+{
+	if (!machine_desc)
+		return 0;
+
+	if (machine_desc->name)
+		barebox_set_model(machine_desc->name);
+
+	if (machine_desc->init_console)
+		machine_desc->init_console();
+
+	return 0;
+}
+console_initcall(arm_mach_console_init);
+
+static int arm_mach_machine_init(void)
+{
+	if (machine_desc && machine_desc->init_machine)
+		machine_desc->init_machine();
+
+	return 0;
+}
+device_initcall(arm_mach_machine_init);
+
+static int arm_mach_late_init(void)
+{
+	if (machine_desc && machine_desc->init_late)
+		machine_desc->init_late();
+
+	return 0;
+}
+late_initcall(arm_mach_late_init);
diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
new file mode 100644
index 0000000..4e0e771
--- /dev/null
+++ b/arch/arm/include/asm/mach/arch.h
@@ -0,0 +1,66 @@
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
+	void			(*init_early)(void);
+	void			(*init_console)(void);
+	void			(*init_time)(void);
+	void			(*init_machine)(void);
+	void			(*init_late)(void);
+};
+
+/*
+ * Current machine - only accessible during boot.
+ */
+extern const struct machine_desc *machine_desc;
+
+int arm_set_machine(const unsigned int type);
+int arm_set_dt_machine(void);
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
