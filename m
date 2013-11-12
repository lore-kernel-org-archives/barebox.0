Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp31.i.mail.ru ([94.100.177.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vg5r3-0002TP-7J
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 04:45:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 12 Nov 2013 08:45:01 +0400
Message-Id: <1384231502-1101-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/2] ARM: i.MX boards: Remove useless select
To: barebox@lists.infradead.org

Symbols HAVE_DEFAULT_ENVIRONMENT_NEW & HAVE_PBL_MULTI_IMAGES
are already selected by IMX_MULTI_BOARDS.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/Kconfig | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index aa650f8..33108ac 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -184,8 +184,6 @@ if IMX_MULTI_BOARDS
 config MACH_EFIKA_MX_SMARTBOOK
 	bool "Efika MX smartbook"
 	select ARCH_IMX51
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Choose this to compile barebox for the Efika MX Smartbook
 
@@ -208,8 +206,6 @@ config MACH_DFI_FS700_M60
 config MACH_REALQ7
 	bool "DataModul i.MX6Q Real Qseven Board"
 	select ARCH_IMX6
-	select HAVE_DEFAULT_ENVIRONMENT_NEW
-	select HAVE_PBL_MULTI_IMAGES
 
 config MACH_GK802
 	bool "Zealz GK802 Mini PC"
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
