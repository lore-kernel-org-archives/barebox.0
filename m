Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQspl-0004mk-Jz
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:53:56 +0000
Received: by mail-la0-f42.google.com with SMTP id hz20so2055689lab.15
 for <barebox@lists.infradead.org>; Sun, 07 Sep 2014 23:53:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  8 Sep 2014 10:53:05 +0400
Message-Id: <1410159189-17328-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
References: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/7] openrisc: add initial device tree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/Kconfig           |  9 +++++++++
 arch/openrisc/Makefile          |  7 +++++++
 arch/openrisc/cpu/barebox.lds.S |  2 ++
 arch/openrisc/dts/Makefile      |  5 +++++
 arch/openrisc/lib/Makefile      |  1 +
 arch/openrisc/lib/dtb.c         | 44 +++++++++++++++++++++++++++++++++++++++++
 drivers/of/Kconfig              |  2 +-
 7 files changed, 69 insertions(+), 1 deletion(-)

diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 23c6a71..483ae6d 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -1,5 +1,6 @@
 config OPENRISC
 	bool
+	select OFTREE
 	select HAS_CACHE
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
@@ -11,6 +12,14 @@ config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
 
+config BUILTIN_DTB
+	bool "link a DTB into the barebox image"
+	depends on OFTREE
+
+config BUILTIN_DTB_NAME
+	string "DTB to build into the barebox image"
+	depends on BUILTIN_DTB
+
 choice
 	prompt "Select your board"
 
diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index fd8bbbf..b0c8566 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -19,3 +19,10 @@ common-y += arch/openrisc/lib/
 common-y += arch/openrisc/cpu/
 
 lds-y += arch/openrisc/cpu/barebox.lds
+
+common-$(CONFIG_BUILTIN_DTB) += arch/openrisc/dts/
+
+dts := arch/openrisc/dts
+
+%.dtb: scripts
+	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.lds.S
index d71df46..d4b6359 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -69,6 +69,8 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS } > ram
 	___usymtab_end = .;
 
+	.dtb : { BAREBOX_DTB() } > ram
+
 	__etext = .; /* End of text and rodata section */
 
 	. = ALIGN(4);
diff --git a/arch/openrisc/dts/Makefile b/arch/openrisc/dts/Makefile
new file mode 100644
index 0000000..6d6c9a3
--- /dev/null
+++ b/arch/openrisc/dts/Makefile
@@ -0,0 +1,5 @@
+
+BUILTIN_DTB := $(patsubst "%",%,$(CONFIG_BUILTIN_DTB_NAME))
+obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
+
+clean-files := *.dtb *.dtb.S
diff --git a/arch/openrisc/lib/Makefile b/arch/openrisc/lib/Makefile
index 0b3cc50..62082fe 100644
--- a/arch/openrisc/lib/Makefile
+++ b/arch/openrisc/lib/Makefile
@@ -5,3 +5,4 @@ obj-y                 += muldi3.o
 obj-y                 += lshrdi3.o
 obj-y                 += ashldi3.o
 obj-y                 += ashrdi3.o
+obj-$(CONFIG_BUILTIN_DTB) += dtb.o
diff --git a/arch/openrisc/lib/dtb.c b/arch/openrisc/lib/dtb.c
new file mode 100644
index 0000000..4f63a77
--- /dev/null
+++ b/arch/openrisc/lib/dtb.c
@@ -0,0 +1,44 @@
+/*
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
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
+static int of_openrisc_init(void)
+{
+	struct device_node *root;
+
+	root = of_get_root_node();
+	if (root)
+		return 0;
+
+	root = of_unflatten_dtb(__dtb_start);
+	if (root) {
+		pr_debug("using internal DTB\n");
+		of_set_root_node(root);
+		if (IS_ENABLED(CONFIG_OFDEVICE))
+			of_probe();
+	}
+
+	return 0;
+}
+core_initcall(of_openrisc_init);
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 8195506..97a1d93 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -4,7 +4,7 @@ config OFTREE
 
 config OFTREE_MEM_GENERIC
 	depends on OFTREE
-	depends on PPC || ARM || ARCH_EFI
+	depends on PPC || ARM || ARCH_EFI || OPENRISC
 	def_bool y
 
 config DTC
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
