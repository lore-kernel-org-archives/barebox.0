Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw1y-0006zr-Cz
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:53:17 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id BF93818B426A
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:20 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:56:56 +0100
Message-Id: <1386100622-8498-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/8] tegra: speed up system bus
To: barebox@lists.infradead.org

We run the system bus from the OSC clock during init, to avoid crashing
the system while reconfiguring the PLLs.
Switch to a more reasonable clock when we are done with this.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra20-car.h | 12 ++++++++++++
 drivers/clk/tegra/clk-tegra20.c                |  7 +++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index d4cb238..d4ff6fb 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -53,6 +53,18 @@
 #define CRC_SCLK_BURST_POLICY_SYS_STATE_RUN	2
 #define CRC_SCLK_BURST_POLICY_SYS_STATE_IDLE	1
 #define CRC_SCLK_BURST_POLICY_SYS_STATE_STDBY	0
+#define CRC_SCLK_BURST_POLICY_FIQ_SRC_SHIFT	12
+#define CRC_SCLK_BURST_POLICY_IRQ_SRC_SHIFT	8
+#define CRC_SCLK_BURST_POLICY_RUN_SRC_SHIFT	4
+#define CRC_SCLK_BURST_POLICY_IDLE_SRC_SHIFT	0
+#define CRC_SCLK_BURST_POLICY_SRC_CLKM		0
+#define CRC_SCLK_BURST_POLICY_SRC_PLLC_OUT1	1
+#define CRC_SCLK_BURST_POLICY_SRC_PLLP_OUT4	2
+#define CRC_SCLK_BURST_POLICY_SRC_PLLP_OUT3	3
+#define CRC_SCLK_BURST_POLICY_SRC_PLLP_OUT2	4
+#define CRC_SCLK_BURST_POLICY_SRC_CLKD		5
+#define CRC_SCLK_BURST_POLICY_SRC_CLKS		6
+#define CRC_SCLK_BURST_POLICY_SRC_PLLM_OUT1	7
 
 #define CRC_SUPER_SCLK_DIV		0x02c
 #define CRC_SUPER_SDIV_ENB		(1 << 31)
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index e70f99a..b94b7bc 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -325,6 +325,13 @@ static int tegra20_car_probe(struct device_d *dev)
 
 	tegra_init_from_table(init_table, clks, clk_max);
 
+	/* speed up system bus */
+	writel(CRC_SCLK_BURST_POLICY_SYS_STATE_RUN <<
+	       CRC_SCLK_BURST_POLICY_SYS_STATE_SHIFT |
+	       CRC_SCLK_BURST_POLICY_SRC_PLLC_OUT1 <<
+	       CRC_SCLK_BURST_POLICY_RUN_SRC_SHIFT,
+	       car_base + CRC_SCLK_BURST_POLICY);
+
 	clk_data.clks = clks;
 	clk_data.clk_num = ARRAY_SIZE(clks);
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get,
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
