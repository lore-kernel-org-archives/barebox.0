Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nm-00026N-0L
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:47 +0100
Message-Id: <1294397044-5008-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/24] add to speed
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/speed-imx1.c  |   20 ++++++++++----------
 arch/arm/mach-imx/speed-imx21.c |   20 ++++++++++----------
 arch/arm/mach-imx/speed-imx25.c |   20 ++++++++++----------
 arch/arm/mach-imx/speed-imx31.c |    4 ++--
 arch/arm/mach-imx/speed-imx35.c |   18 +++++++++---------
 5 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx1.c b/arch/arm/mach-imx/speed-imx1.c
index a4b4f96..6fd549f 100644
--- a/arch/arm/mach-imx/speed-imx1.c
+++ b/arch/arm/mach-imx/speed-imx1.c
@@ -81,15 +81,15 @@ ulong imx_get_gptclk(void)
 
 void imx_dump_clocks(void)
 {
-	printf("spll:    %10d Hz\n", imx_get_spllclk());
-	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
-	printf("fclk:    %10d Hz\n", imx_get_fclk());
-	printf("hclk:    %10d Hz\n", imx_get_hclk());
-	printf("bclk:    %10d Hz\n", imx_get_bclk());
-	printf("perclk1: %10d Hz\n", imx_get_perclk1());
-	printf("perclk2: %10d Hz\n", imx_get_perclk2());
-	printf("perclk3: %10d Hz\n", imx_get_perclk3());
-	printf("uart:    %10d Hz\n", imx_get_uartclk());
-	printf("gpt:     %10d Hz\n", imx_get_gptclk());
+	printf("spll:    %10ld Hz\n", imx_get_spllclk());
+	printf("mpll:    %10ld Hz\n", imx_get_mpllclk());
+	printf("fclk:    %10ld Hz\n", imx_get_fclk());
+	printf("hclk:    %10ld Hz\n", imx_get_hclk());
+	printf("bclk:    %10ld Hz\n", imx_get_bclk());
+	printf("perclk1: %10ld Hz\n", imx_get_perclk1());
+	printf("perclk2: %10ld Hz\n", imx_get_perclk2());
+	printf("perclk3: %10ld Hz\n", imx_get_perclk3());
+	printf("uart:    %10ld Hz\n", imx_get_uartclk());
+	printf("gpt:     %10ld Hz\n", imx_get_gptclk());
 }
 
diff --git a/arch/arm/mach-imx/speed-imx21.c b/arch/arm/mach-imx/speed-imx21.c
index 9ae8026..6ab1dca 100644
--- a/arch/arm/mach-imx/speed-imx21.c
+++ b/arch/arm/mach-imx/speed-imx21.c
@@ -145,16 +145,16 @@ void imx_dump_clocks(void)
 	uint32_t	cid = CID;
 
 	printf("chip id: [%08x]\n", cid);
-	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
-	printf("spll:    %10d Hz\n", imx_get_spllclk());
-	printf("arm:     %10d Hz\n", imx_get_armclk());
-	printf("fclk:    %10d Hz\n", imx_get_fclk());
-	printf("nfcclk:  %10d Hz\n", imx_get_nfcclk());
-	printf("perclk1: %10d Hz\n", imx_get_perclk1());
-	printf("perclk2: %10d Hz\n", imx_get_perclk2());
-	printf("perclk3: %10d Hz\n", imx_get_perclk3());
-	printf("perclk4: %10d Hz\n", imx_get_perclk4());
-	printf("clkin26: %10d Hz\n", clk_in_26m());
+	printf("mpll:    %10ld Hz\n", imx_get_mpllclk());
+	printf("spll:    %10ld Hz\n", imx_get_spllclk());
+	printf("arm:     %10ld Hz\n", imx_get_armclk());
+	printf("fclk:    %10ld Hz\n", imx_get_fclk());
+	printf("nfcclk:  %10ld Hz\n", imx_get_nfcclk());
+	printf("perclk1: %10ld Hz\n", imx_get_perclk1());
+	printf("perclk2: %10ld Hz\n", imx_get_perclk2());
+	printf("perclk3: %10ld Hz\n", imx_get_perclk3());
+	printf("perclk4: %10ld Hz\n", imx_get_perclk4());
+	printf("clkin26: %10ld Hz\n", clk_in_26m());
 }
 
 /*
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index cb28e9f..68b50e9 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -89,16 +89,16 @@ unsigned long imx_get_mmcclk(void)
 
 void imx_dump_clocks(void)
 {
-	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
-	printf("upll:    %10d Hz\n", imx_get_upllclk());
-	printf("arm:     %10d Hz\n", imx_get_armclk());
-	printf("ahb:     %10d Hz\n", imx_get_ahbclk());
-	printf("uart:    %10d Hz\n", imx_get_perclk(15));
-	printf("gpt:     %10d Hz\n", imx_get_ipgclk());
-	printf("nand:    %10d Hz\n", imx_get_perclk(8));
-	printf("lcd:     %10d Hz\n", imx_get_perclk(7));
-	printf("i2c:     %10d Hz\n", imx_get_perclk(6));
-	printf("sdhc1:   %10d Hz\n", imx_get_perclk(3));
+	printf("mpll:    %10ld Hz\n", imx_get_mpllclk());
+	printf("upll:    %10ld Hz\n", imx_get_upllclk());
+	printf("arm:     %10ld Hz\n", imx_get_armclk());
+	printf("ahb:     %10ld Hz\n", imx_get_ahbclk());
+	printf("uart:    %10ld Hz\n", imx_get_perclk(15));
+	printf("gpt:     %10ld Hz\n", imx_get_ipgclk());
+	printf("nand:    %10ld Hz\n", imx_get_perclk(8));
+	printf("lcd:     %10ld Hz\n", imx_get_perclk(7));
+	printf("i2c:     %10ld Hz\n", imx_get_perclk(6));
+	printf("sdhc1:   %10ld Hz\n", imx_get_perclk(3));
 }
 
 /*
diff --git a/arch/arm/mach-imx/speed-imx31.c b/arch/arm/mach-imx/speed-imx31.c
index 70b1330..32a517d 100644
--- a/arch/arm/mach-imx/speed-imx31.c
+++ b/arch/arm/mach-imx/speed-imx31.c
@@ -67,8 +67,8 @@ ulong imx_get_perclk1(void)
 void imx_dump_clocks(void)
 {
 	ulong cpufreq = imx_get_mcu_main_clk();
-	printf("mx31 cpu clock: %dMHz\n",cpufreq / 1000000);
-	printf("ipg clock     : %dHz\n", imx_get_perclk1());
+	printf("mx31 cpu clock: %ldMHz\n",cpufreq / 1000000);
+	printf("ipg clock     : %ldHz\n", imx_get_perclk1());
 }
 
 ulong imx_get_uartclk(void)
diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index 8937ef1..b2a339c 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -187,15 +187,15 @@ ulong imx_get_i2cclk(void)
 
 void imx_dump_clocks(void)
 {
-	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
-	printf("ppll:    %10d Hz\n", imx_get_ppllclk());
-	printf("arm:     %10d Hz\n", imx_get_armclk());
-	printf("gpt:     %10d Hz\n", imx_get_gptclk());
-	printf("ahb:     %10d Hz\n", imx_get_ahbclk());
-	printf("ipg:     %10d Hz\n", imx_get_ipgclk());
-	printf("ipg_per: %10d Hz\n", imx_get_ipg_perclk());
-	printf("uart:	 %10d Hz\n", imx_get_uartclk());
-	printf("sdhc1:   %10d Hz\n", imx_get_mmcclk());
+	printf("mpll:    %10ld Hz\n", imx_get_mpllclk());
+	printf("ppll:    %10ld Hz\n", imx_get_ppllclk());
+	printf("arm:     %10ld Hz\n", imx_get_armclk());
+	printf("gpt:     %10ld Hz\n", imx_get_gptclk());
+	printf("ahb:     %10ld Hz\n", imx_get_ahbclk());
+	printf("ipg:     %10ld Hz\n", imx_get_ipgclk());
+	printf("ipg_per: %10ld Hz\n", imx_get_ipg_perclk());
+	printf("uart:	 %10ld Hz\n", imx_get_uartclk());
+	printf("sdhc1:   %10ld Hz\n", imx_get_mmcclk());
 }
 
 /*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
