Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NhOhR-0005KF-84
	for barebox@lists.infradead.org; Tue, 16 Feb 2010 14:46:59 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 16 Feb 2010 15:46:17 +0100
Message-Id: <1266331586-11253-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1266331586-11253-2-git-send-email-mkl@pengutronix.de>
References: <1266331586-11253-1-git-send-email-mkl@pengutronix.de>
	<1266331586-11253-2-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/11] arm/Kconfig: removed unused TAG options
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

The tags for the command line parameters are not used, so let's remove them:
- CMDLINE_TAG
- SETUP_MEMORY_TAGS
- INITRD_TAG

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/Kconfig |   19 -------------------
 1 files changed, 0 insertions(+), 19 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index d4df14d..92ec417 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -81,25 +81,6 @@ config CMD_ARM_CPUINFO
 	  Say yes here to get a cpuinfo command to show some
 	  information about the cp15 registers
 
-config CMDLINE_TAG
-	bool "Send commandline to kernel"
-	default y
-	help
-	  If you want to start a 2.6 kernel say y here.
-
-config SETUP_MEMORY_TAGS
-	bool "send memory definition to kernel"
-	default y
-	help
-	  If you want to start a 2.6 kernel say y here.
-
-config INITRD_TAG
-	bool "send initrd params to kernel"
-	default y
-	help
-	  If you want to start a 2.6 kernel and use an
-	  initrd image say y here.
-
 config CPU_V7_DCACHE_SKIP
 	bool "Skip DCache Invlidate"
 	depends on CPU_V7
-- 
1.6.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
