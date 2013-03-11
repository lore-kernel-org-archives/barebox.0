Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF9r6-0003R2-KH
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:02:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 22:01:54 +0100
Message-Id: <1363035716-13386-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
References: <1363035716-13386-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: Initial dts support
To: barebox@lists.infradead.org

- Add rules to generate dtb files in arch/arm/dts/
- add an initcall which unflattens and probes the internal devicetree
- Add skeleton devicetree

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                   |  2 +-
 arch/arm/Kconfig           |  4 ++++
 arch/arm/Makefile          | 14 ++++++++++++++
 arch/arm/cpu/Makefile      |  3 +++
 arch/arm/cpu/dtb.c         | 41 +++++++++++++++++++++++++++++++++++++++++
 arch/arm/dts/Makefile      | 12 ++++++++++++
 arch/arm/dts/skeleton.dtsi | 13 +++++++++++++
 arch/arm/lib/barebox.lds.S |  2 ++
 8 files changed, 90 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/cpu/dtb.c
 create mode 100644 arch/arm/dts/Makefile
 create mode 100644 arch/arm/dts/skeleton.dtsi

diff --git a/Makefile b/Makefile
index b5819fc..f399251 100644
--- a/Makefile
+++ b/Makefile
@@ -481,7 +481,7 @@ export KBUILD_BINARY ?= barebox.bin
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
 	$(call if_changed,ln)
 
-all: barebox-flash-image
+all: barebox-flash-image $(KBUILD_DTBS)
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
 
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7ac134e..5601ca6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -17,6 +17,10 @@ config HAVE_MACH_ARM_HEAD
 
 menu "System Type"
 
+config BUILTIN_DTB
+	string "DTB to build into the barebox image"
+	depends on OFTREE
+
 choice
 	prompt "ARM system type"
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 5125b87..d6ec515 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -258,6 +258,16 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
+dts := arch/arm/dts
+
+%.dtb: scripts
+	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
+
+dtbs: scripts
+	$(Q)$(MAKE) $(build)=$(dts) dtbs
+
+KBUILD_DTBS := dtbs
+
 KBUILD_IMAGE ?= $(KBUILD_BINARY)
 
 archprepare: maketools
@@ -281,6 +291,10 @@ endif
 common-y += $(BOARD) $(MACH)
 common-y += arch/arm/lib/ arch/arm/cpu/
 
+ifneq ($(CONFIG_BUILTIN_DTB),"")
+common-y += arch/arm/dts/
+endif
+
 lds-y	:= arch/arm/lib/barebox.lds
 
 CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds barebox-flash-image
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 5935e1c..6bf75ba 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -8,6 +8,9 @@ obj-y += start.o setupc.o
 #
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_CMD_ARM_MMUINFO) += mmuinfo.o
+ifneq ($(CONFIG_BUILTIN_DTB),"")
+obj-y += dtb.o
+endif
 obj-$(CONFIG_MMU) += mmu.o cache.o mmu-early.o
 pbl-$(CONFIG_MMU) += cache.o mmu-early.o
 obj-$(CONFIG_CPU_32v4T) += cache-armv4.o
diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
new file mode 100644
index 0000000..10b73bd
--- /dev/null
+++ b/arch/arm/cpu/dtb.c
@@ -0,0 +1,41 @@
+/*
+ * Copyright (c) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+#include <common.h>
+#include <init.h>
+#include <of.h>
+
+extern char __dtb_start[];
+
+static int of_arm_init(void)
+{
+	struct device_node *root;
+
+	root = of_get_root_node();
+	if (root)
+		return 0;
+
+	root = of_unflatten_dtb(NULL, __dtb_start);
+	if (root) {
+		pr_debug("using internal DTB\n");
+		of_set_root_node(root);
+		if (IS_ENABLED(CONFIG_OFDEVICE))
+			of_probe();
+	}
+
+	return 0;
+}
+core_initcall(of_arm_init);
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
new file mode 100644
index 0000000..2b25fdf
--- /dev/null
+++ b/arch/arm/dts/Makefile
@@ -0,0 +1,12 @@
+
+BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB)).dtb.o
+ifneq ($(CONFIG_BUILTIN_DTB),"")
+obj-y += $(BUILTIN_DTB)
+endif
+
+targets += dtbs
+targets += $(dtb-y)
+
+dtbs: $(addprefix $(obj)/, $(dtb-y))
+
+clean-files := *.dtb *.dtb.S
diff --git a/arch/arm/dts/skeleton.dtsi b/arch/arm/dts/skeleton.dtsi
new file mode 100644
index 0000000..b41d241
--- /dev/null
+++ b/arch/arm/dts/skeleton.dtsi
@@ -0,0 +1,13 @@
+/*
+ * Skeleton device tree; the bare minimum needed to boot; just include and
+ * add a compatible value.  The bootloader will typically populate the memory
+ * node.
+ */
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+	chosen { };
+	aliases { };
+	memory { device_type = "memory"; reg = <0 0>; };
+};
diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index abdd69e..10c63bf 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -92,6 +92,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	.dtb : { BAREBOX_DTB() }
+
 	.rel.dyn : {
 		__rel_dyn_start = .;
 		*(.rel*)
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
