Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sm7Wg-0006sc-PZ
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 18:08:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Jul 2012 20:07:54 +0200
Message-Id: <1341338874-29223-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM i.MX51 babbage: Use correct select for new environment
To: barebox@lists.infradead.org

It's HAVE_DEFAULT_ENVIRONMENT_NEW, not  DEFAULT_ENVIRONMENT_GENERIC_NEW

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 647120d..5b77245 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -393,7 +393,7 @@ choice
 	prompt "i.MX51 Board Type"
 
 config MACH_FREESCALE_MX51_PDK
-	select DEFAULT_ENVIRONMENT_GENERIC_NEW
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	bool "Freescale i.MX51 PDK"
 
 config MACH_EUKREA_CPUIMX51SD
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
