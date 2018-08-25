Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftfih-0006C4-DC
 for barebox@lists.infradead.org; Sat, 25 Aug 2018 21:03:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id d4-v6so6028826pfn.0
 for <barebox@lists.infradead.org>; Sat, 25 Aug 2018 14:03:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 25 Aug 2018 14:03:12 -0700
Message-Id: <20180825210315.4661-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/6] ARM: freescale-mx51-babbage: Swtich to using Linux clock
 tree
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-babbage.dts | 4 ++++
 arch/arm/mach-imx/Kconfig      | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index 514719561..b5c81a77c 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -23,6 +23,10 @@
 	};
 };
 
+&clks {
+	compatible = "barebox,imx51-ccm";
+};
+
 &esdhc1 {
 	#address-cells = <1>;
 	#size-cells = <1>;
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index dca5ee0bf..f4aa6f662 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -251,6 +251,7 @@ config MACH_EMBEDSKY_E9
 config MACH_FREESCALE_MX51_PDK
 	bool "Freescale i.MX51 PDK"
 	select ARCH_IMX51
+	select COMMON_CLK_OF_PROVIDER
 	select MACH_FREESCALE_MX51_PDK_POWER
 
 config MACH_CCMX53
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
