Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUIfc-0003qZ-Oo
 for barebox@lists.infradead.org; Wed, 27 Dec 2017 20:51:59 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 27 Dec 2017 21:50:29 +0100
Message-Id: <20171227205033.26012-20-sam@ravnborg.org>
In-Reply-To: <20171227204842.GA20040@ravnborg.org>
References: <20171227204842.GA20040@ravnborg.org>
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
Subject: [PATCH 20/24] animeo: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/animeo_ip/Makefile   |  3 +++
 arch/arm/boards/animeo_ip/lowlevel.c | 26 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig           |  1 -
 3 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/animeo_ip/lowlevel.c

diff --git a/arch/arm/boards/animeo_ip/Makefile b/arch/arm/boards/animeo_ip/Makefile
index 510b142ff..61c714b45 100644
--- a/arch/arm/boards/animeo_ip/Makefile
+++ b/arch/arm/boards/animeo_ip/Makefile
@@ -1,2 +1,5 @@
 obj-y += init.o
+
+lwl-y += lowlevel.o
+
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-animeo_ip
diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
new file mode 100644
index 000000000..02896856d
--- /dev/null
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2009-2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2
+  */
+
+#include <common.h>
+#include <init.h>
+
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+#include <mach/at91sam9_sdramc.h>
+#include <mach/at91sam9260.h>
+#include <mach/hardware.h>
+
+void __naked __bare_init barebox_arm_reset_vector(void)
+{
+	arm_cpu_lowlevel_init();
+
+	arm_setup_stack(AT91SAM9260_SRAM_BASE + AT91SAM9260_SRAM_SIZE - 16);
+
+	barebox_arm_entry(AT91_CHIPSELECT_1,
+			  at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC)),
+			  NULL);
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 9571b199c..8cd85f7b9 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -269,7 +269,6 @@ choice
 
 config MACH_ANIMEO_IP
 	bool "Somfy Animeo IP"
-	select AT91SAM9260_LWL
 	depends on !CONSOLE_NONE
 
 config MACH_AT91SAM9260EK
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
