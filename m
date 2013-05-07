Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZkrO-0008Mq-Oa
 for barebox@lists.infradead.org; Tue, 07 May 2013 16:35:27 +0000
Received: by mail-la0-f47.google.com with SMTP id fh20so773939lab.6
 for <barebox@lists.infradead.org>; Tue, 07 May 2013 09:35:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 May 2013 20:34:09 +0400
Message-Id: <1367944452-20946-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
References: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/4] MIPS: add initial device tree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig           |    8 ++++++++
 arch/mips/Makefile          |   12 ++++++++++++
 arch/mips/boot/Makefile     |    2 ++
 arch/mips/boot/dtb.c        |   44 +++++++++++++++++++++++++++++++++++++++++++
 arch/mips/dts/Makefile      |   10 ++++++++++
 arch/mips/dts/skeleton.dtsi |   13 +++++++++++++
 arch/mips/lib/barebox.lds.S |    2 ++
 7 files changed, 91 insertions(+)
 create mode 100644 arch/mips/boot/dtb.c
 create mode 100644 arch/mips/dts/Makefile
 create mode 100644 arch/mips/dts/skeleton.dtsi

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 947edcf..d58b804 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -23,6 +23,14 @@ config GENERIC_LINKER_SCRIPT
 
 menu "Machine selection"
 
+config BUILTIN_DTB
+	bool "link a DTB into the barebox image"
+	depends on OFTREE
+
+config BUILTIN_DTB_NAME
+	string "DTB to build into the barebox image"
+	depends on BUILTIN_DTB
+
 choice
 	prompt "System type"
 	default MACH_MIPS_MALTA
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 3c565a4..c038933 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -113,6 +113,8 @@ common-y += $(BOARD) $(MACH)
 common-y += arch/mips/lib/
 common-y += arch/mips/boot/
 
+common-$(CONFIG_BUILTIN_DTB) += arch/mips/dts/
+
 CPPFLAGS += $(cflags-y)
 CFLAGS += $(cflags-y)
 
@@ -127,4 +129,14 @@ zbarebox.S zbarebox.bin zbarebox: barebox.bin
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
+dts := arch/mips/dts
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
diff --git a/arch/mips/boot/Makefile b/arch/mips/boot/Makefile
index 6b093f1..b865b10 100644
--- a/arch/mips/boot/Makefile
+++ b/arch/mips/boot/Makefile
@@ -1,4 +1,6 @@
 obj-y += start.o
 obj-y += main_entry.o
 
+obj-$(CONFIG_BUILTIN_DTB) += dtb.o
+
 pbl-y += start-pbl.o main_entry-pbl.o
diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
new file mode 100644
index 0000000..d20fab3
--- /dev/null
+++ b/arch/mips/boot/dtb.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * Based on arch/arm/cpu/dtb.c:
+ * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+static int of_mips_init(void)
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
+core_initcall(of_mips_init);
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
new file mode 100644
index 0000000..3ee8924
--- /dev/null
+++ b/arch/mips/dts/Makefile
@@ -0,0 +1,10 @@
+
+BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME)).dtb.o
+obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB)
+
+targets += dtbs
+targets += $(dtb-y)
+
+dtbs: $(addprefix $(obj)/, $(dtb-y))
+
+clean-files := *.dtb *.dtb.S
diff --git a/arch/mips/dts/skeleton.dtsi b/arch/mips/dts/skeleton.dtsi
new file mode 100644
index 0000000..b41d241
--- /dev/null
+++ b/arch/mips/dts/skeleton.dtsi
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
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index 5b3d45d..bc78d2b 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -69,6 +69,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
+	.dtb : { BAREBOX_DTB() }
+
 	_edata = .;
 	. = ALIGN(4);
 	__bss_start = .;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
