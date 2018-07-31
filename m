Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9F-00084s-5p
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:08 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001CQ-S1
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS99-0000ep-2e
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:55 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:35 +0200
Message-Id: <20180731104442.2451-13-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 12/19] ARM: socfpga: achilles: update handoff files
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/pinmux-config-arria10.c |  2 +-
 arch/arm/boards/reflex-achilles/pll-config-arria10.c    | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
index 246838a2285d..b6a72304b623 100644
--- a/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
+++ b/arch/arm/boards/reflex-achilles/pinmux-config-arria10.c
@@ -69,7 +69,7 @@ static uint32_t pinmux[] = {
 [arria10_pincfg_dedicated_io_3] = 0xb080a,
 [arria10_pincfg_dedicated_io_4] = 0xa282a,
 [arria10_pincfg_dedicated_io_5] = 0xa282a,
-[arria10_pincfg_dedicated_io_6] = 0xa282a,
+[arria10_pincfg_dedicated_io_6] = 0x8282a,
 [arria10_pincfg_dedicated_io_7] = 0xa282a,
 [arria10_pincfg_dedicated_io_8] = 0xa282a,
 [arria10_pincfg_dedicated_io_9] = 0xa282a,
diff --git a/arch/arm/boards/reflex-achilles/pll-config-arria10.c b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
index 94d596606e4d..9da41ecdf20f 100644
--- a/arch/arm/boards/reflex-achilles/pll-config-arria10.c
+++ b/arch/arm/boards/reflex-achilles/pll-config-arria10.c
@@ -6,8 +6,8 @@ static struct arria10_mainpll_cfg mainpll_cfg = {
 	.cntr3clk_cnt = 900,
 	.cntr4clk_cnt = 900,
 	.cntr5clk_cnt = 900,
-	.cntr6clk_cnt = 7,
-	.cntr7clk_cnt = 900,
+	.cntr6clk_cnt = 9,
+	.cntr7clk_cnt = 19,
 	.cntr7clk_src = 0,
 	.cntr8clk_cnt = 900,
 	.cntr9clk_cnt = 900,
@@ -24,19 +24,19 @@ static struct arria10_mainpll_cfg mainpll_cfg = {
 	.nocdiv_l4spclk = 2,
 	.vco0_psrc = 0,
 	.vco1_denom = 1,
-	.vco1_numer = 127,
+	.vco1_numer = 159,
 	.mpuclk = 0x3840001,
-	.nocclk = 0x3840003,
+	.nocclk = 0x3840004,
 };
 
 static struct arria10_perpll_cfg perpll_cfg = {
-	.cntr2clk_cnt = 5,
+	.cntr2clk_cnt = 7,
 	.cntr2clk_src = 1,
 	.cntr3clk_cnt = 900,
 	.cntr3clk_src = 1,
-	.cntr4clk_cnt = 14,
+	.cntr4clk_cnt = 19,
 	.cntr4clk_src = 1,
-	.cntr5clk_cnt = 374,
+	.cntr5clk_cnt = 499,
 	.cntr5clk_src = 1,
 	.cntr6clk_cnt = 900,
 	.cntr6clk_src = 0,
@@ -50,5 +50,5 @@ static struct arria10_perpll_cfg perpll_cfg = {
 	.gpiodiv_gpiodbclk = 32000,
 	.vco0_psrc = 0,
 	.vco1_denom = 1,
-	.vco1_numer = 119,
+	.vco1_numer = 159,
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
