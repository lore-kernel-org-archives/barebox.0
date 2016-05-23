Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lg2-0001K9-AS
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:57:31 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Mon, 23 May 2016 10:55:22 +0200
Message-Id: <1463993722-18538-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] ARM: boot: add prepend option for board specific ATAGs
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Board specific ATAGs might be passed to vendor provided kernels via the
ARM_BOARD_APPEND_ATAG option. In this case, the board specific ATAGs will
be appended to the end of the ATAG list.
Anyway, some vendor provided kernels might crop the ATAG list at ATAG_MEM,
also chopping off the board specific ATAGs, see linux squash_mem_tags() as
reference. The Kindle-3 kernel is one example.

This conflict might be solved by a) making ATAG_MEM optional which might break
the existing behavour around squash_mem_tags() or b) by allowing the insertion
of board specific ATAGs in front of ATAG_MEM which violates the requirement
from Documentation/arm/Booting to order ATAGs by increasing address.

Add option to insert board specific ATAGs in front of ATAG_MEM.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/Kconfig        | 10 ++++++++++
 arch/arm/lib/armlinux.c |  8 +++++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1fc887b..71374cc 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -313,6 +313,16 @@ config ARM_BOARD_APPEND_ATAG
 	  This option is purely to start some vendor provided kernels.
 	  ** DO NOT USE FOR YOUR OWN DESIGNS! **
 
+config ARM_BOARD_PREPEND_ATAG
+	bool "Prepend the board specific ATAGs"
+	depends on ARM_BOARD_APPEND_ATAG
+	help
+	  Choose this option if your kernel crops the passed ATAG list e.g. at
+	  ATAG_MEM, also cropping off the board specific ATAGs. This option
+	  will pass all board specific ATAGs in front of all other ATAGs.
+	  This option is purely to start some vendor provided kernels.
+	  ** DO NOT USE FOR YOUR OWN DESIGNS! **
+
 endmenu
 
 menu "ARM specific settings"
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 47b9bd3..962d086 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -234,6 +234,11 @@ static void setup_tags(unsigned long initrd_address,
 	const char *commandline = linux_bootargs_get();
 
 	setup_start_tag();
+#if defined(CONFIG_ARM_BOARD_APPEND_ATAG) \
+	&& defined(CONFIG_ARM_BOARD_PREPEND_ATAG)
+	if (atag_appender != NULL)
+		params = atag_appender(params);
+#endif
 	setup_memory_tags();
 	setup_commandline_tag(commandline, swap);
 
@@ -242,7 +247,8 @@ static void setup_tags(unsigned long initrd_address,
 
 	setup_revision_tag();
 	setup_serial_tag();
-#ifdef CONFIG_ARM_BOARD_APPEND_ATAG
+#if defined(CONFIG_ARM_BOARD_APPEND_ATAG) \
+	&& !defined(CONFIG_ARM_BOARD_PREPEND_ATAG)
 	if (atag_appender != NULL)
 		params = atag_appender(params);
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
