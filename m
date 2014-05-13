Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80z-0001qN-SN
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:49 +0000
Received: by mail-ee0-f46.google.com with SMTP id t10so121697eei.5
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:26 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:50 +0200
Message-Id: <1399969739-10355-11-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 10/19] commands: move CMD_AT91_BOOT_TEST to commands/Kconfig
To: barebox@lists.infradead.org

* this places the command into the "Boot commands"
  section of Kconfig
* while at it, improve Kconfig documention

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 arch/arm/mach-at91/Kconfig |    6 ------
 commands/Kconfig           |   13 +++++++++++++
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index e3eeb2c..6222653 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -534,12 +534,6 @@ config CMD_AT91CLK
 	bool "at91clk dump command"
 	default y
 
-config CMD_AT91_BOOT_TEST
-	bool "at91_boot_test"
-	help
-	  allow to upload a boot binary to sram and execute it
-	  useful to test bootstrap or barebox lowlevel init
-
 endif
 
 config AT91_BOOTSTRAP
diff --git a/commands/Kconfig b/commands/Kconfig
index 0145f00..e48b2d1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -180,6 +180,19 @@ config FLEXIBLE_BOOTARGS
 	  to replace parts of the bootargs string without reconstructing it
 	  completely.
 
+config CMD_AT91_BOOT_TEST
+	bool "at91_boot_test"
+	depends on ARCH_AT91
+	help
+	  allow to upload a boot binary to SRAM and execute it.
+	  Useful to test bootstrap or barebox lowlevel init.
+
+	  Usage: at91_boot_test [-js] FILE
+
+	  Options:
+	  -j ADDR  jump address
+	  -s SRAM  SRAM device (default /dev/sram0)
+
 config CMD_BOOT_ORDER
 	tristate
 	depends on ARCH_OMAP4
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
