Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftfig-0006Bs-AE
 for barebox@lists.infradead.org; Sat, 25 Aug 2018 21:03:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id s13-v6so5863636pfi.7
 for <barebox@lists.infradead.org>; Sat, 25 Aug 2018 14:03:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 25 Aug 2018 14:03:11 -0700
Message-Id: <20180825210315.4661-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180825210315.4661-1-andrew.smirnov@gmail.com>
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: imx51-zii-rdu1: Swtich to using Linux clock tree
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to provide missing USB clocks.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 4 ++++
 arch/arm/mach-imx/Kconfig       | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 7e0e337ae..9021b04a1 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -31,6 +31,10 @@
 	};
 };
 
+&clks {
+	compatible = "barebox,imx51-ccm";
+};
+
 &ecspi1 {
 	spinor: flash@1 {
 		partition@0 {
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4fa00bfdb..dca5ee0bf 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -412,6 +412,7 @@ config MACH_VF610_TWR
 config MACH_ZII_RDU1
 	bool "ZII i.MX51 RDU1"
 	select ARCH_IMX51
+	select COMMON_CLK_OF_PROVIDER
 	select MACH_FREESCALE_MX51_PDK_POWER
 
 config MACH_ZII_RDU2
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
