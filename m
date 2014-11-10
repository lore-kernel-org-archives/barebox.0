Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x231.google.com ([2607:f8b0:400e:c02::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xnt1x-000403-IB
 for barebox@lists.infradead.org; Mon, 10 Nov 2014 17:45:35 +0000
Received: by mail-pd0-f177.google.com with SMTP id v10so8141104pde.8
 for <barebox@lists.infradead.org>; Mon, 10 Nov 2014 09:45:12 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 10 Nov 2014 09:45:04 -0800
Message-Id: <1415641504-19358-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: i.MX: Make NAND related Kconfig options depend on MTD
To: barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com

ARCH_IMX_EXTERNAL_BOOT_NAND, BAREBOX_UPDATE_IMX_EXTERNAL_NAND and
BAREBOX_UPDATE_IMX6_NAND all enable features that make use of API
provided by MTD subsystem, so to prevent those features breaking the
build when MTD is disabled make them dependent on it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ef7c0a1..8dce491 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -102,17 +102,20 @@ endchoice
 
 config ARCH_IMX_EXTERNAL_BOOT_NAND
 	bool
+	depends on MTD
 	depends on ARCH_IMX25 || ARCH_IMX27 || ARCH_IMX31 || ARCH_IMX35
 	prompt "Support Starting barebox from NAND in external bootmode"
 
 config BAREBOX_UPDATE_IMX_EXTERNAL_NAND
 	bool
+	depends on MTD
 	depends on ARCH_IMX_EXTERNAL_BOOT_NAND
 	depends on BAREBOX_UPDATE
 	default y
 
 config BAREBOX_UPDATE_IMX6_NAND
 	bool
+	depends on MTD
 	depends on ARCH_IMX6
 	depends on BAREBOX_UPDATE
 	default y
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
