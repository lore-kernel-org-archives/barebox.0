Delivery-date: Mon, 13 Jan 2025 12:29:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdZ-000Zuc-1d
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdT-0006QG-TQ
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7kv1FXqDxyFA28aKwH8BZu+iOxYYzAJMFDVkwpqGNsM=; b=0eoCIYvuiBzhGpkPAM/x1SBni3
	7+zXxyfUwhp2+O0WQw/TkCxwfVsJ4G3zHReaRhHbcusxjBYFg+uDUS2XFXIOZTQObT45U3yJc82MW
	zhBrARtMK1CVYiP7b8KPT4LjGkU7YU5wLm3HRJjs9oUd/rDGM790ecYBZCV0J6F2R9jtD9uTBMtah
	D3MnoR39cTjt63rRmLxoehoIZ0tg4PRob0M7Uk2uxRv5oc3Qz/nhyTsX0vZJBomL/H3pvlzFj6D4n
	tutm0ZHeUDZH2GNF1d13GdP7+haipLAVKBYedBYxtwM7F5GFZv9na0NKfG+xP2IsTyrdId8NYMQk3
	8sTH7r8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIcj-00000004uTf-1Mqp;
	Mon, 13 Jan 2025 11:28:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIau-00000004tr4-2Dt2
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:26:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIas-0005ej-1D; Mon, 13 Jan 2025 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-000FRJ-0O;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1f;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-8-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=36182;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DaFJDo6z0SHzBmIUejleQTdCqS8ZRej6OREMpEEMqcA=;
 b=Bdv6NW22EvwxRES4EiMeEc1oN4IOpv3SbyHcLTHm+/YGCDi/uNQ0zIoqlJ40NhO9JZ0giH0cU
 nzCeXsXncSVB2bohYcVsFKZr2gDj1uHZiVcx5Dswe6PHturOTVLDtuy
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032657_058414_58A73C48 
X-CRM114-Status: GOOD (  15.07  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 08/23] clk: add K3 clk driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The clk support for K3 SoCs is implemented on the Cortex-R5 boot
processor by the ti-dm firmware binary. The A53 cores access the clks
via mailboxes. However, during early boot we are running barebox on the
Cortex-R5 processor and the ti-dm firmware is not yet running, so we
must implement our own clk driver. Code is based on U-Boot-2025.01-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/Makefile       |   1 +
 drivers/clk/k3/Makefile    |   2 +
 drivers/clk/k3/am625.c     | 475 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/clk/k3/pll.c       | 375 +++++++++++++++++++++++++++++++++++
 drivers/clk/k3/ti-k3-clk.h |   8 +
 include/soc/k3/clk.h       |   7 +
 6 files changed, 868 insertions(+)

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 764539e91e..8c3544c750 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -31,3 +31,4 @@ obj-y				+= bcm/
 obj-$(CONFIG_COMMON_CLK_SCMI)	+= clk-scmi.o
 obj-$(CONFIG_COMMON_CLK_GPIO)   += clk-gpio.o
 obj-$(CONFIG_TI_SCI_CLK)	+= ti-sci-clk.o
+obj-$(CONFIG_ARCH_K3)		+= k3/
diff --git a/drivers/clk/k3/Makefile b/drivers/clk/k3/Makefile
new file mode 100644
index 0000000000..8d96373ab6
--- /dev/null
+++ b/drivers/clk/k3/Makefile
@@ -0,0 +1,2 @@
+obj-y += am625.o
+obj-pbl-y += pll.o
diff --git a/drivers/clk/k3/am625.c b/drivers/clk/k3/am625.c
new file mode 100644
index 0000000000..c7e28658d1
--- /dev/null
+++ b/drivers/clk/k3/am625.c
@@ -0,0 +1,475 @@
+#define pr_fmt(fmt)     "ti-k3-clk: " fmt
+
+#include <linux/clk.h>
+#include <of.h>
+#include <driver.h>
+#include "ti-k3-clk.h"
+
+static const char * const gluelogic_hfosc0_clkout_parents[] = {
+	NULL,
+	NULL,
+	"osc_24_mhz",
+	"osc_25_mhz",
+	"osc_26_mhz",
+	NULL,
+};
+
+static const char * const main_emmcsd0_io_clklb_sel_out0_parents[] = {
+	"board_0_mmc0_clklb_out",
+	"board_0_mmc0_clk_out",
+};
+
+static const char * const main_emmcsd1_io_clklb_sel_out0_parents[] = {
+	"board_0_mmc1_clklb_out",
+	"board_0_mmc1_clk_out",
+};
+
+static const char * const main_ospi_loopback_clk_sel_out0_parents[] = {
+	"board_0_ospi0_dqs_out",
+	"board_0_ospi0_lbclko_out",
+};
+
+static const char * const main_usb0_refclk_sel_out0_parents[] = {
+	"gluelogic_hfosc0_clkout",
+	"postdiv4_16ff_main_0_hsdivout8_clk",
+};
+
+static const char * const main_usb1_refclk_sel_out0_parents[] = {
+	"gluelogic_hfosc0_clkout",
+	"postdiv4_16ff_main_0_hsdivout8_clk",
+};
+
+static const char * const sam62_pll_ctrl_wrap_main_0_sysclkout_clk_parents[] = {
+	"gluelogic_hfosc0_clkout",
+	"hsdiv4_16fft_main_0_hsdivout0_clk",
+};
+
+static const char * const sam62_pll_ctrl_wrap_mcu_0_sysclkout_clk_parents[] = {
+	"gluelogic_hfosc0_clkout",
+	"hsdiv4_16fft_mcu_0_hsdivout0_clk",
+};
+
+static const char * const clkout0_ctrl_out0_parents[] = {
+	"hsdiv4_16fft_main_2_hsdivout1_clk",
+	"hsdiv4_16fft_main_2_hsdivout1_clk10",
+};
+
+static const char * const clk_32k_rc_sel_out0_parents[] = {
+	"gluelogic_rcosc_clk_1p0v_97p65k",
+	"hsdiv0_16fft_mcu_32khz_gen_0_hsdivout0_clk",
+	"clk_32k_rc_sel_div_clkout",
+	"gluelogic_lfosc0_clkout",
+};
+
+static const char * const main_cp_gemac_cpts_clk_sel_out0_parents[] = {
+	"postdiv4_16ff_main_2_hsdivout5_clk",
+	"postdiv4_16ff_main_0_hsdivout6_clk",
+	"board_0_cp_gemac_cpts0_rft_clk_out",
+	NULL,
+	"board_0_mcu_ext_refclk0_out",
+	"board_0_ext_refclk1_out",
+	"sam62_pll_ctrl_wrap_mcu_0_chip_div1_clk_clk",
+	"sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk",
+};
+
+static const char * const main_emmcsd0_refclk_sel_out0_parents[] = {
+	"postdiv4_16ff_main_0_hsdivout5_clk",
+	"hsdiv4_16fft_main_2_hsdivout2_clk",
+};
+
+static const char * const main_emmcsd1_refclk_sel_out0_parents[] = {
+	"postdiv4_16ff_main_0_hsdivout5_clk",
+	"hsdiv4_16fft_main_2_hsdivout2_clk",
+};
+
+static const char * const main_gtcclk_sel_out0_parents[] = {
+	"postdiv4_16ff_main_2_hsdivout5_clk",
+	"postdiv4_16ff_main_0_hsdivout6_clk",
+	"board_0_cp_gemac_cpts0_rft_clk_out",
+	NULL,
+	"board_0_mcu_ext_refclk0_out",
+	"board_0_ext_refclk1_out",
+	"sam62_pll_ctrl_wrap_mcu_0_chip_div1_clk_clk",
+	"sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk",
+};
+
+static const char * const main_ospi_ref_clk_sel_out0_parents[] = {
+	"hsdiv4_16fft_main_0_hsdivout1_clk",
+	"postdiv1_16fft_main_1_hsdivout5_clk",
+};
+
+static const char * const wkup_clkout_sel_out0_parents[] = {
+	"gluelogic_hfosc0_clkout",
+	"gluelogic_lfosc0_clkout",
+	"hsdiv4_16fft_main_0_hsdivout2_clk",
+	"hsdiv4_16fft_main_1_hsdivout2_clk",
+	"postdiv4_16ff_main_2_hsdivout9_clk",
+	"clk_32k_rc_sel_out0",
+	"gluelogic_rcosc_clkout",
+	"gluelogic_hfosc0_clkout",
+};
+
+static const char * const wkup_clksel_out0_parents[] = {
+	"hsdiv1_16fft_main_15_hsdivout0_clk",
+	"hsdiv4_16fft_mcu_0_hsdivout0_clk",
+};
+
+static const char * const main_usart0_fclk_sel_out0_parents[] = {
+	"usart_programmable_clock_divider_out0",
+	"hsdiv4_16fft_main_1_hsdivout1_clk",
+};
+
+static inline struct clk *k3_clk_divider(const char *name, const char *parent,
+                void __iomem *reg, u8 shift, u8 width, u32 flags, u32 div_flags)
+{
+        return clk_divider(name, parent, CLK_SET_RATE_PARENT, reg, shift, width, 0);
+}
+
+static inline struct clk *k3_clk_pll(const char *name, const char *parent,
+                void __iomem *reg, u32 flags)
+{
+	return clk_register_ti_k3_pll(name, parent, reg);
+}
+
+static inline struct clk *k3_clk_mux(const char *name, const char * const *parents,
+				     int num_parents, void __iomem *reg, u8 shift,
+				     u8 width, u32 flags)
+{
+	return clk_mux(name, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT | flags, reg,
+		       shift, width, parents, num_parents, 0);
+}
+
+static inline struct clk *k3_clk_div_devfreq(const char *name, const char *parent,
+                void __iomem *reg, u8 shift, u8 width, u32 flags, u32 div_flags, u32 freq)
+{
+	return NULL;
+}
+
+static inline struct clk *k3_clk_mux_pllctrl(const char *name, const char * const *parents,
+					     int num_parents, void __iomem *reg, u32 freq)
+{
+	return NULL;
+}
+
+struct clk_lookup_data {
+	unsigned int dev_id;
+	unsigned int clk_id;
+	const char *clk_name;
+};
+
+#define DEV_CLK(_dev_id, _clk_id, _clk_name) { .dev_id = _dev_id, \
+	.clk_id = _clk_id, .clk_name = _clk_name, }
+
+static struct clk_lookup_data am625_lookup[] = {
+	DEV_CLK(13, 0, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(13, 3, "main_cp_gemac_cpts_clk_sel_out0"),
+	DEV_CLK(13, 4, "postdiv4_16ff_main_2_hsdivout5_clk"),
+	DEV_CLK(13, 5, "postdiv4_16ff_main_0_hsdivout6_clk"),
+	DEV_CLK(13, 6, "board_0_cp_gemac_cpts0_rft_clk_out"),
+	DEV_CLK(13, 8, "board_0_mcu_ext_refclk0_out"),
+	DEV_CLK(13, 9, "board_0_ext_refclk1_out"),
+	DEV_CLK(13, 10, "sam62_pll_ctrl_wrap_mcu_0_chip_div1_clk_clk"),
+	DEV_CLK(13, 11, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(13, 13, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 14, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 15, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 16, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 17, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 19, "board_0_rgmii1_rxc_out"),
+	DEV_CLK(13, 20, "board_0_rgmii1_txc_out"),
+	DEV_CLK(13, 22, "board_0_rgmii2_rxc_out"),
+	DEV_CLK(13, 23, "board_0_rgmii2_txc_out"),
+	DEV_CLK(13, 25, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 26, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 27, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(13, 28, "board_0_rmii1_ref_clk_out"),
+	DEV_CLK(13, 29, "board_0_rmii2_ref_clk_out"),
+	DEV_CLK(16, 0, "hsdiv4_16fft_main_0_hsdivout1_clk"),
+	DEV_CLK(16, 1, "hsdiv4_16fft_main_0_hsdivout2_clk"),
+	DEV_CLK(16, 2, "hsdiv4_16fft_main_0_hsdivout3_clk"),
+	DEV_CLK(16, 3, "hsdiv4_16fft_main_0_hsdivout4_clk"),
+	DEV_CLK(16, 4, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(16, 5, "board_0_ext_refclk1_out"),
+	DEV_CLK(16, 6, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(16, 7, "postdiv4_16ff_main_2_hsdivout8_clk"),
+	DEV_CLK(16, 8, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(16, 9, "board_0_ext_refclk1_out"),
+	DEV_CLK(16, 10, "gluelogic_rcosc_clkout"),
+	DEV_CLK(16, 11, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(16, 12, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(57, 0, "main_emmcsd0_io_clklb_sel_out0"),
+	DEV_CLK(57, 1, "board_0_mmc0_clklb_out"),
+	DEV_CLK(57, 2, "board_0_mmc0_clk_out"),
+	DEV_CLK(57, 5, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(57, 6, "main_emmcsd0_refclk_sel_out0"),
+	DEV_CLK(57, 7, "postdiv4_16ff_main_0_hsdivout5_clk"),
+	DEV_CLK(57, 8, "hsdiv4_16fft_main_2_hsdivout2_clk"),
+	DEV_CLK(58, 0, "main_emmcsd1_io_clklb_sel_out0"),
+	DEV_CLK(58, 1, "board_0_mmc1_clklb_out"),
+	DEV_CLK(58, 2, "board_0_mmc1_clk_out"),
+	DEV_CLK(58, 5, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(58, 6, "main_emmcsd1_refclk_sel_out0"),
+	DEV_CLK(58, 7, "postdiv4_16ff_main_0_hsdivout5_clk"),
+	DEV_CLK(58, 8, "hsdiv4_16fft_main_2_hsdivout2_clk"),
+	DEV_CLK(61, 0, "main_gtcclk_sel_out0"),
+	DEV_CLK(61, 1, "postdiv4_16ff_main_2_hsdivout5_clk"),
+	DEV_CLK(61, 2, "postdiv4_16ff_main_0_hsdivout6_clk"),
+	DEV_CLK(61, 3, "board_0_cp_gemac_cpts0_rft_clk_out"),
+	DEV_CLK(61, 5, "board_0_mcu_ext_refclk0_out"),
+	DEV_CLK(61, 6, "board_0_ext_refclk1_out"),
+	DEV_CLK(61, 7, "sam62_pll_ctrl_wrap_mcu_0_chip_div1_clk_clk"),
+	DEV_CLK(61, 8, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(61, 9, "wkup_clksel_out0"),
+	DEV_CLK(61, 10, "hsdiv1_16fft_main_15_hsdivout0_clk"),
+	DEV_CLK(61, 11, "hsdiv4_16fft_mcu_0_hsdivout0_clk"),
+	DEV_CLK(75, 0, "board_0_ospi0_dqs_out"),
+	DEV_CLK(75, 1, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(75, 2, "main_ospi_loopback_clk_sel_out0"),
+	DEV_CLK(75, 3, "board_0_ospi0_dqs_out"),
+	DEV_CLK(75, 4, "board_0_ospi0_lbclko_out"),
+	DEV_CLK(75, 6, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(75, 7, "main_ospi_ref_clk_sel_out0"),
+	DEV_CLK(75, 8, "hsdiv4_16fft_main_0_hsdivout1_clk"),
+	DEV_CLK(75, 9, "postdiv1_16fft_main_1_hsdivout5_clk"),
+	DEV_CLK(77, 0, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(95, 0, "gluelogic_rcosc_clkout"),
+	DEV_CLK(95, 1, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(95, 2, "wkup_clksel_out0"),
+	DEV_CLK(95, 3, "hsdiv1_16fft_main_15_hsdivout0_clk"),
+	DEV_CLK(95, 4, "hsdiv4_16fft_mcu_0_hsdivout0_clk"),
+	DEV_CLK(102, 0, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(102, 1, "board_0_i2c0_scl_out"),
+	DEV_CLK(102, 2, "hsdiv4_16fft_main_1_hsdivout0_clk"),
+	DEV_CLK(107, 0, "wkup_clksel_out0"),
+	DEV_CLK(107, 1, "hsdiv1_16fft_main_15_hsdivout0_clk"),
+	DEV_CLK(107, 2, "hsdiv4_16fft_mcu_0_hsdivout0_clk"),
+	DEV_CLK(107, 3, "mshsi2c_wkup_0_porscl"),
+	DEV_CLK(107, 4, "hsdiv4_16fft_mcu_0_hsdivout1_clk"),
+	DEV_CLK(135, 0, "hsdiv0_16fft_main_8_hsdivout0_clk"),
+	DEV_CLK(136, 0, "hsdiv0_16fft_main_8_hsdivout0_clk"),
+	DEV_CLK(140, 0, "sam62_pll_ctrl_wrap_mcu_0_chip_div1_clk_clk"),
+	DEV_CLK(140, 1, "sam62_pll_ctrl_wrap_mcu_0_chip_div1_clk_clk"),
+	DEV_CLK(146, 0, "main_usart0_fclk_sel_out0"),
+	DEV_CLK(146, 1, "usart_programmable_clock_divider_out0"),
+	DEV_CLK(146, 2, "hsdiv4_16fft_main_1_hsdivout1_clk"),
+	DEV_CLK(146, 5, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(157, 20, "clkout0_ctrl_out0"),
+	DEV_CLK(157, 21, "hsdiv4_16fft_main_2_hsdivout1_clk"),
+	DEV_CLK(157, 22, "hsdiv4_16fft_main_2_hsdivout1_clk10"),
+	DEV_CLK(157, 24, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(157, 25, "board_0_ddr0_ck0_out"),
+	DEV_CLK(157, 40, "mshsi2c_main_0_porscl"),
+	DEV_CLK(157, 77, "sam62_pll_ctrl_wrap_mcu_0_sysclkout_clk"),
+	DEV_CLK(157, 82, "cpsw_3guss_main_0_mdio_mdclk_o"),
+	DEV_CLK(157, 83, "emmcsd8ss_main_0_emmcsdss_io_clk_o"),
+	DEV_CLK(157, 87, "emmcsd4ss_main_0_emmcsdss_io_clk_o"),
+	DEV_CLK(157, 89, "emmcsd4ss_main_0_emmcsdss_io_clk_o"),
+	DEV_CLK(157, 129, "fss_ul_main_0_ospi_0_ospi_oclk_clk"),
+	DEV_CLK(157, 132, "cpsw_3guss_main_0_rgmii1_txc_o"),
+	DEV_CLK(157, 135, "cpsw_3guss_main_0_rgmii2_txc_o"),
+	DEV_CLK(157, 145, "sam62_pll_ctrl_wrap_main_0_sysclkout_clk"),
+	DEV_CLK(157, 158, "wkup_clkout_sel_out0"),
+	DEV_CLK(157, 159, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(157, 160, "gluelogic_lfosc0_clkout"),
+	DEV_CLK(157, 161, "hsdiv4_16fft_main_0_hsdivout2_clk"),
+	DEV_CLK(157, 162, "hsdiv4_16fft_main_1_hsdivout2_clk"),
+	DEV_CLK(157, 163, "postdiv4_16ff_main_2_hsdivout9_clk"),
+	DEV_CLK(157, 164, "clk_32k_rc_sel_out0"),
+	DEV_CLK(157, 165, "gluelogic_rcosc_clkout"),
+	DEV_CLK(157, 166, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(161, 0, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(161, 1, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(161, 2, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(161, 3, "main_usb0_refclk_sel_out0"),
+	DEV_CLK(161, 4, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(161, 5, "postdiv4_16ff_main_0_hsdivout8_clk"),
+	DEV_CLK(161, 10, "board_0_tck_out"),
+	DEV_CLK(162, 0, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(162, 1, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(162, 2, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(162, 3, "main_usb1_refclk_sel_out0"),
+	DEV_CLK(162, 4, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(162, 5, "postdiv4_16ff_main_0_hsdivout8_clk"),
+	DEV_CLK(162, 10, "board_0_tck_out"),
+	DEV_CLK(166, 3, "hsdiv0_16fft_main_8_hsdivout0_clk"),
+	DEV_CLK(166, 5, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(169, 0, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(169, 1, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+	DEV_CLK(170, 0, "hsdiv0_16fft_main_12_hsdivout0_clk"),
+	DEV_CLK(170, 1, "board_0_tck_out"),
+	DEV_CLK(170, 2, "sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk"),
+
+	/*
+	 * Timer clocks. There is a mux between the timer and the clock core
+	 * which we haven't modeled here. The values reflect the reset default
+	 * of the mux
+	 */
+	DEV_CLK(35, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(36, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(37, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(38, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(39, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(40, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(41, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(42, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(43, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(48, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(49, 2, "gluelogic_hfosc0_clkout"),
+	DEV_CLK(50, 2, "gluelogic_hfosc0_clkout"),
+
+	DEV_CLK(0, 0, NULL),
+};
+
+static struct clk *of_clk_ti_k3_get(struct of_phandle_args *clkspec, void *data)
+{
+	struct clk_lookup_data *clk_data = data;
+	struct clk *clk;
+	unsigned int dev_id = clkspec->args[0];
+	unsigned int clk_id = clkspec->args[1];
+
+	while (1) {
+		if (!clk_data->clk_name) {
+			pr_err("clk %d/%d not found\n", dev_id, clk_id);
+			return ERR_PTR(-ENOENT);
+		}
+
+		if (clk_data->dev_id == dev_id && clk_data->clk_id == clk_id)
+			goto found;
+
+		clk_data++;
+	}
+found:
+	clk = clk_lookup(clk_data->clk_name);
+	if (IS_ERR(clk))
+		pr_err("clk %s not found\n", clk_data->clk_name);
+
+	return clk;
+}
+
+static int am625_clk_init(struct device *dev)
+{
+	int ret;
+
+	clk_fixed("osc_26_mhz", 26000000);
+	clk_fixed("osc_25_mhz", 25000000);
+	clk_fixed("osc_24_mhz", 24000000);
+	k3_clk_mux("gluelogic_hfosc0_clkout",
+	 gluelogic_hfosc0_clkout_parents, 6, (void *)0x43000030, 0, 3, 0),
+	clk_fixed("gluelogic_rcosc_clkout", 12500000);
+	clk_fixed("gluelogic_rcosc_clk_1p0v_97p65k", 97656);
+	clk_fixed("board_0_cp_gemac_cpts0_rft_clk_out", 0);
+	clk_fixed("board_0_ddr0_ck0_out", 0);
+	clk_fixed("board_0_ext_refclk1_out", 0);
+	clk_fixed("board_0_i2c0_scl_out", 0);
+	clk_fixed("board_0_mcu_ext_refclk0_out", 0);
+	clk_fixed("board_0_mmc0_clklb_out", 0);
+	clk_fixed("board_0_mmc0_clk_out", 0);
+	clk_fixed("board_0_mmc1_clklb_out", 0);
+	clk_fixed("board_0_mmc1_clk_out", 0);
+	clk_fixed("board_0_ospi0_dqs_out", 0);
+	clk_fixed("board_0_ospi0_lbclko_out", 0);
+	clk_fixed("board_0_rgmii1_rxc_out", 0);
+	clk_fixed("board_0_rgmii1_txc_out", 0);
+	clk_fixed("board_0_rgmii2_rxc_out", 0);
+	clk_fixed("board_0_rgmii2_txc_out", 0);
+	clk_fixed("board_0_rmii1_ref_clk_out", 0);
+	clk_fixed("board_0_rmii2_ref_clk_out", 0);
+	clk_fixed("board_0_tck_out", 0);
+	clk_fixed("cpsw_3guss_main_0_mdio_mdclk_o", 0);
+	clk_fixed("cpsw_3guss_main_0_rgmii1_txc_o", 0);
+	clk_fixed("cpsw_3guss_main_0_rgmii2_txc_o", 0);
+	clk_fixed("emmcsd4ss_main_0_emmcsdss_io_clk_o", 0);
+	clk_fixed("emmcsd8ss_main_0_emmcsdss_io_clk_o", 0);
+	clk_fixed("fss_ul_main_0_ospi_0_ospi_oclk_clk", 0);
+	k3_clk_divider("hsdiv0_16fft_mcu_32khz_gen_0_hsdivout0_clk", "gluelogic_hfosc0_clkout", (void *)0x4508030, 0, 7, 0, 0);
+	clk_fixed("mshsi2c_main_0_porscl", 0);
+	k3_clk_pll("pllfracf_ssmod_16fft_main_0_foutvcop_clk", "gluelogic_hfosc0_clkout", (void *)0x680000, 0);
+	k3_clk_divider("pllfracf_ssmod_16fft_main_0_foutpostdiv_clk_subdiv", "pllfracf_ssmod_16fft_main_0_foutvcop_clk", (void *)0x680038, 16, 3, 0, CLK_DIVIDER_ONE_BASED);
+	k3_clk_divider("pllfracf_ssmod_16fft_main_0_foutpostdiv_clk", "pllfracf_ssmod_16fft_main_0_foutpostdiv_clk_subdiv", (void *)0x680038, 24, 3, 0, CLK_DIVIDER_ONE_BASED);
+	k3_clk_pll("pllfracf_ssmod_16fft_main_1_foutvcop_clk", "gluelogic_hfosc0_clkout", (void *)0x681000, 0);
+	k3_clk_divider("pllfracf_ssmod_16fft_main_1_foutpostdiv_clk_subdiv", "pllfracf_ssmod_16fft_main_1_foutvcop_clk", (void *)0x681038, 16, 3, 0, CLK_DIVIDER_ONE_BASED);
+	k3_clk_divider("pllfracf_ssmod_16fft_main_1_foutpostdiv_clk", "pllfracf_ssmod_16fft_main_1_foutpostdiv_clk_subdiv", (void *)0x681038, 24, 3, 0, CLK_DIVIDER_ONE_BASED);
+	k3_clk_pll("pllfracf_ssmod_16fft_main_12_foutvcop_clk", "gluelogic_hfosc0_clkout", (void *)0x68c000, 0);
+	k3_clk_pll("pllfracf_ssmod_16fft_main_15_foutvcop_clk", "gluelogic_hfosc0_clkout", (void *)0x68f000, 0);
+	k3_clk_pll("pllfracf_ssmod_16fft_main_2_foutvcop_clk", "gluelogic_hfosc0_clkout", (void *)0x682000, 0);
+	k3_clk_divider("pllfracf_ssmod_16fft_main_2_foutpostdiv_clk_subdiv", "pllfracf_ssmod_16fft_main_2_foutvcop_clk", (void *)0x682038, 16, 3, 0, CLK_DIVIDER_ONE_BASED);
+	k3_clk_divider("pllfracf_ssmod_16fft_main_2_foutpostdiv_clk", "pllfracf_ssmod_16fft_main_2_foutpostdiv_clk_subdiv", (void *)0x682038, 24, 3, 0, CLK_DIVIDER_ONE_BASED);
+	k3_clk_pll("pllfracf_ssmod_16fft_main_8_foutvcop_clk", "gluelogic_hfosc0_clkout", (void *)0x688000, 0);
+	k3_clk_pll("pllfracf_ssmod_16fft_mcu_0_foutvcop_clk", "gluelogic_hfosc0_clkout", (void *)0x4040000, 0);
+	k3_clk_divider("postdiv1_16fft_main_1_hsdivout5_clk", "pllfracf_ssmod_16fft_main_1_foutpostdiv_clk", (void *)0x681094, 0, 7, 0, 0);
+	k3_clk_divider("postdiv4_16ff_main_0_hsdivout5_clk", "pllfracf_ssmod_16fft_main_0_foutpostdiv_clk", (void *)0x680094, 0, 7, 0, 0);
+	k3_clk_divider("postdiv4_16ff_main_0_hsdivout6_clk", "pllfracf_ssmod_16fft_main_0_foutpostdiv_clk", (void *)0x680098, 0, 7, 0, 0);
+	k3_clk_divider("postdiv4_16ff_main_0_hsdivout8_clk", "pllfracf_ssmod_16fft_main_0_foutpostdiv_clk", (void *)0x6800a0, 0, 7, 0, 0);
+	k3_clk_divider("postdiv4_16ff_main_2_hsdivout5_clk", "pllfracf_ssmod_16fft_main_2_foutpostdiv_clk", (void *)0x682094, 0, 7, 0, 0);
+	k3_clk_divider("postdiv4_16ff_main_2_hsdivout8_clk", "pllfracf_ssmod_16fft_main_2_foutpostdiv_clk", (void *)0x6820a0, 0, 7, 0, 0);
+	k3_clk_divider("postdiv4_16ff_main_2_hsdivout9_clk", "pllfracf_ssmod_16fft_main_2_foutpostdiv_clk", (void *)0x6820a4, 0, 7, 0, 0);
+	k3_clk_mux("main_emmcsd0_io_clklb_sel_out0", main_emmcsd0_io_clklb_sel_out0_parents, 2, (void *)0x108160, 16, 1, 0);
+	k3_clk_mux("main_emmcsd1_io_clklb_sel_out0", main_emmcsd1_io_clklb_sel_out0_parents, 2, (void *)0x108168, 16, 1, 0);
+	k3_clk_mux("main_ospi_loopback_clk_sel_out0", main_ospi_loopback_clk_sel_out0_parents, 2, (void *)0x108500, 4, 1, 0);
+	k3_clk_mux("main_usb0_refclk_sel_out0", main_usb0_refclk_sel_out0_parents, 2, (void *)0x43008190, 0, 1, 0);
+	k3_clk_mux("main_usb1_refclk_sel_out0", main_usb1_refclk_sel_out0_parents, 2, (void *)0x43008194, 0, 1, 0);
+	k3_clk_divider("hsdiv0_16fft_main_12_hsdivout0_clk", "pllfracf_ssmod_16fft_main_12_foutvcop_clk", (void *)0x68c080, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv0_16fft_main_8_hsdivout0_clk", "pllfracf_ssmod_16fft_main_8_foutvcop_clk", (void *)0x688080, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv1_16fft_main_15_hsdivout0_clk", "pllfracf_ssmod_16fft_main_15_foutvcop_clk", (void *)0x68f080, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_0_hsdivout0_clk", "pllfracf_ssmod_16fft_main_0_foutvcop_clk", (void *)0x680080, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_0_hsdivout1_clk", "pllfracf_ssmod_16fft_main_0_foutvcop_clk", (void *)0x680084, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_0_hsdivout2_clk", "pllfracf_ssmod_16fft_main_0_foutvcop_clk", (void *)0x680088, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_0_hsdivout3_clk", "pllfracf_ssmod_16fft_main_0_foutvcop_clk", (void *)0x68008c, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_0_hsdivout4_clk", "pllfracf_ssmod_16fft_main_0_foutvcop_clk", (void *)0x680090, 0, 7, 0, 0);
+	k3_clk_div_devfreq("hsdiv4_16fft_main_1_hsdivout0_clk", "pllfracf_ssmod_16fft_main_1_foutvcop_clk", (void *)0x681080, 0, 7, 0, 0, 192000000);
+	k3_clk_divider("hsdiv4_16fft_main_1_hsdivout1_clk", "pllfracf_ssmod_16fft_main_1_foutvcop_clk", (void *)0x681084, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_1_hsdivout2_clk", "pllfracf_ssmod_16fft_main_1_foutvcop_clk", (void *)0x681088, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_2_hsdivout1_clk", "pllfracf_ssmod_16fft_main_2_foutvcop_clk", (void *)0x682084, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_2_hsdivout1_clk10", "pllfracf_ssmod_16fft_main_2_foutvcop_clk", (void *)0x682084, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_main_2_hsdivout2_clk", "pllfracf_ssmod_16fft_main_2_foutvcop_clk", (void *)0x682088, 0, 7, 0, 0);
+	k3_clk_divider("hsdiv4_16fft_mcu_0_hsdivout0_clk", "pllfracf_ssmod_16fft_mcu_0_foutvcop_clk", (void *)0x4040080, 0, 7, 0, 0);
+	k3_clk_mux_pllctrl("sam62_pll_ctrl_wrap_main_0_sysclkout_clk", sam62_pll_ctrl_wrap_main_0_sysclkout_clk_parents, 2, (void *)0x410000, 0);
+	k3_clk_divider("sam62_pll_ctrl_wrap_main_0_chip_div1_clk_clk", "sam62_pll_ctrl_wrap_main_0_sysclkout_clk", (void *)0x410118, 0, 5, 0, 0);
+	k3_clk_mux_pllctrl("sam62_pll_ctrl_wrap_mcu_0_sysclkout_clk", sam62_pll_ctrl_wrap_mcu_0_sysclkout_clk_parents, 2, (void *)0x4020000, 0);
+	k3_clk_divider("sam62_pll_ctrl_wrap_mcu_0_chip_div1_clk_clk", "sam62_pll_ctrl_wrap_mcu_0_sysclkout_clk", (void *)0x4020118, 0, 5, 0, 0);
+	k3_clk_mux("clkout0_ctrl_out0", clkout0_ctrl_out0_parents, 2, (void *)0x108010, 0, 1, 0);
+	k3_clk_mux("clk_32k_rc_sel_out0", clk_32k_rc_sel_out0_parents, 4, (void *)0x4508058, 0, 2, 0);
+	k3_clk_mux("main_cp_gemac_cpts_clk_sel_out0", main_cp_gemac_cpts_clk_sel_out0_parents, 8, (void *)0x108140, 0, 3, 0);
+	k3_clk_mux("main_emmcsd0_refclk_sel_out0", main_emmcsd0_refclk_sel_out0_parents, 2, (void *)0x108160, 0, 1, 0);
+	k3_clk_mux("main_emmcsd1_refclk_sel_out0", main_emmcsd1_refclk_sel_out0_parents, 2, (void *)0x108168, 0, 1, 0);
+	k3_clk_mux("main_gtcclk_sel_out0", main_gtcclk_sel_out0_parents, 8, (void *)0x43008030, 0, 3, 0);
+	k3_clk_mux("main_ospi_ref_clk_sel_out0", main_ospi_ref_clk_sel_out0_parents, 2, (void *)0x108500, 0, 1, 0);
+	k3_clk_div_devfreq("usart_programmable_clock_divider_out0", "hsdiv4_16fft_main_1_hsdivout0_clk", (void *)0x108240, 0, 2, 0, 0, 48000000);
+	k3_clk_mux("wkup_clkout_sel_out0", wkup_clkout_sel_out0_parents, 8, (void *)0x43008020, 0, 3, 0);
+	k3_clk_mux("wkup_clksel_out0", wkup_clksel_out0_parents, 2, (void *)0x43008010, 0, 1, 0);
+	k3_clk_mux("main_usart0_fclk_sel_out0", main_usart0_fclk_sel_out0_parents, 2, (void *)0x108280, 0, 1, 0);
+	k3_clk_divider("hsdiv4_16fft_mcu_0_hsdivout1_clk", "pllfracf_ssmod_16fft_mcu_0_foutvcop_clk", (void *)0x4040084, 0, 7, 0, 0);
+	clk_fixed("mshsi2c_wkup_0_porscl", 0);
+	k3_clk_divider("sam62_pll_ctrl_wrap_main_0_chip_div24_clk_clk", "sam62_pll_ctrl_wrap_main_0_sysclkout_clk", (void *)0x41011c, 0, 5, 0, 0);
+	k3_clk_divider("sam62_pll_ctrl_wrap_mcu_0_chip_div24_clk_clk", "sam62_pll_ctrl_wrap_mcu_0_sysclkout_clk", (void *)0x402011c, 0, 5, 0, 0);
+
+	ret = of_clk_add_provider(dev->of_node, of_clk_ti_k3_get, &am625_lookup);
+	if (ret < 0)
+		pr_err("failed to register clks for i.MX8MM\n");
+
+	return 0;
+};
+
+static int ti_k3_clk_probe(struct device *dev)
+{
+	if (of_machine_is_compatible("ti,am625"))
+                return am625_clk_init(dev);
+
+	return dev_err_probe(dev, -EINVAL, "Unknown SoC\n");
+}
+
+static __maybe_unused struct of_device_id ti_k3_clk_dt_ids[] = {
+	{
+		.compatible = "ti,k2g-sci-clk",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver ti_k3_clk_driver = {
+	.probe = ti_k3_clk_probe,
+	.name = "ti-k3-clk",
+	.of_compatible = ti_k3_clk_dt_ids,
+};
+
+core_platform_driver(ti_k3_clk_driver);
diff --git a/drivers/clk/k3/pll.c b/drivers/clk/k3/pll.c
new file mode 100644
index 0000000000..c76a91b1d0
--- /dev/null
+++ b/drivers/clk/k3/pll.c
@@ -0,0 +1,375 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Texas Instruments K3 SoC PLL clock driver
+ *
+ * Copyright (C) 2020-2021 Texas Instruments Incorporated - https://www.ti.com/
+ *	Tero Kristo <t-kristo@ti.com>
+ */
+
+#include <io.h>
+#include <errno.h>
+#include <linux/clk-provider.h>
+#include <linux/rational.h>
+#include <linux/slab.h>
+#include <linux/bitmap.h>
+#include <linux/printk.h>
+#include <soc/k3/clk.h>
+
+#include "ti-k3-clk.h"
+
+/* 16FFT register offsets */
+#define PLL_16FFT_CFG			0x08
+#define PLL_KICK0			0x10
+#define PLL_KICK1			0x14
+#define PLL_16FFT_CTRL			0x20
+#define PLL_16FFT_STAT			0x24
+#define PLL_16FFT_FREQ_CTRL0		0x30
+#define PLL_16FFT_FREQ_CTRL1		0x34
+#define PLL_16FFT_DIV_CTRL		0x38
+#define PLL_16FFT_CAL_CTRL		0x60
+#define PLL_16FFT_CAL_STAT		0x64
+
+/* CAL STAT register bits */
+#define PLL_16FFT_CAL_STAT_CAL_LOCK	BIT(31)
+
+/* CFG register bits */
+#define PLL_16FFT_CFG_PLL_TYPE_SHIFT	(0)
+#define PLL_16FFT_CFG_PLL_TYPE_MASK	(0x3 << 0)
+#define PLL_16FFT_CFG_PLL_TYPE_FRACF	1
+
+/* CAL CTRL register bits */
+#define PLL_16FFT_CAL_CTRL_CAL_EN               BIT(31)
+#define PLL_16FFT_CAL_CTRL_FAST_CAL             BIT(20)
+#define PLL_16FFT_CAL_CTRL_CAL_BYP              BIT(15)
+#define PLL_16FFT_CAL_CTRL_CAL_CNT_SHIFT        16
+#define PLL_16FFT_CAL_CTRL_CAL_CNT_MASK         (0x7 << 16)
+
+/* CTRL register bits */
+#define PLL_16FFT_CTRL_BYPASS_EN	BIT(31)
+#define PLL_16FFT_CTRL_PLL_EN		BIT(15)
+#define PLL_16FFT_CTRL_DSM_EN		BIT(1)
+
+/* STAT register bits */
+#define PLL_16FFT_STAT_LOCK		BIT(0)
+
+/* FREQ_CTRL0 bits */
+#define PLL_16FFT_FREQ_CTRL0_FB_DIV_INT_MASK	0xfff
+
+/* DIV CTRL register bits */
+#define PLL_16FFT_DIV_CTRL_REF_DIV_MASK		0x3f
+
+/* HSDIV register bits*/
+#define PLL_16FFT_HSDIV_CTRL_CLKOUT_EN          BIT(15)
+
+/* FREQ_CTRL1 bits */
+#define PLL_16FFT_FREQ_CTRL1_FB_DIV_FRAC_BITS	24
+#define PLL_16FFT_FREQ_CTRL1_FB_DIV_FRAC_MASK	0xffffff
+#define PLL_16FFT_FREQ_CTRL1_FB_DIV_FRAC_SHIFT	0
+
+/* KICK register magic values */
+#define PLL_KICK0_VALUE				0x68ef3490
+#define PLL_KICK1_VALUE				0xd172bc5a
+
+/**
+ * struct ti_pll_clk - TI PLL clock data info structure
+ * @clk: core clock structure
+ * @reg: memory address of the PLL controller
+ */
+struct ti_pll_clk {
+	struct clk_hw hw;
+	void __iomem *reg;
+	const char *parent;
+};
+
+static inline struct ti_pll_clk *to_pll(struct clk_hw *hw)
+{
+	return container_of(hw, struct ti_pll_clk, hw);
+}
+
+static int ti_pll_wait_for_lock(struct ti_pll_clk *pll)
+{
+	u32 stat;
+	u32 cfg;
+	u32 cal;
+	u32 freq_ctrl1;
+	int i;
+	u32 pllfm;
+	u32 pll_type;
+	int success;
+
+	for (i = 0; i < 100000; i++) {
+		stat = readl(pll->reg + PLL_16FFT_STAT);
+		if (stat & PLL_16FFT_STAT_LOCK) {
+			success = 1;
+			break;
+		}
+	}
+
+	/* Enable calibration if not in fractional mode of the FRACF PLL */
+	freq_ctrl1 = readl(pll->reg + PLL_16FFT_FREQ_CTRL1);
+	pllfm = freq_ctrl1 & PLL_16FFT_FREQ_CTRL1_FB_DIV_FRAC_MASK;
+	pllfm >>= PLL_16FFT_FREQ_CTRL1_FB_DIV_FRAC_SHIFT;
+	cfg = readl(pll->reg + PLL_16FFT_CFG);
+	pll_type = (cfg & PLL_16FFT_CFG_PLL_TYPE_MASK) >> PLL_16FFT_CFG_PLL_TYPE_SHIFT;
+
+	if (success && pll_type == PLL_16FFT_CFG_PLL_TYPE_FRACF && pllfm == 0) {
+		cal = readl(pll->reg + PLL_16FFT_CAL_CTRL);
+
+		/* Enable calibration for FRACF */
+		cal |= PLL_16FFT_CAL_CTRL_CAL_EN;
+
+		/* Enable fast cal mode */
+		cal |= PLL_16FFT_CAL_CTRL_FAST_CAL;
+
+		/* Disable calibration bypass */
+		cal &= ~PLL_16FFT_CAL_CTRL_CAL_BYP;
+
+		/* Set CALCNT to 2 */
+		cal &= ~PLL_16FFT_CAL_CTRL_CAL_CNT_MASK;
+		cal |= 2 << PLL_16FFT_CAL_CTRL_CAL_CNT_SHIFT;
+
+		/* Note this register does not readback the written value. */
+		writel(cal, pll->reg + PLL_16FFT_CAL_CTRL);
+
+		success = 0;
+		for (i = 0; i < 100000; i++) {
+			stat = readl(pll->reg + PLL_16FFT_CAL_STAT);
+			if (stat & PLL_16FFT_CAL_STAT_CAL_LOCK) {
+				success = 1;
+				break;
+			}
+		}
+	}
+
+	if (success == 0) {
+		pr_err("%s: pll (%s) failed to lock\n", __func__,
+		       pll->hw.clk.name);
+		return -EBUSY;
+	} else {
+		return 0;
+	}
+}
+
+static unsigned long ti_pll_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
+{
+	struct ti_pll_clk *pll = to_pll(hw);
+	u64 current_freq;
+	u64 parent_freq = parent_rate;
+	u32 pllm;
+	u32 plld;
+	u32 pllfm;
+	u32 ctrl;
+
+	/* Check if we are in bypass */
+	ctrl = readl(pll->reg + PLL_16FFT_CTRL);
+	if (ctrl & PLL_16FFT_CTRL_BYPASS_EN)
+		return parent_freq;
+
+	pllm = readl(pll->reg + PLL_16FFT_FREQ_CTRL0);
+	pllfm = readl(pll->reg + PLL_16FFT_FREQ_CTRL1);
+
+	plld = readl(pll->reg + PLL_16FFT_DIV_CTRL) &
+		PLL_16FFT_DIV_CTRL_REF_DIV_MASK;
+
+	current_freq = parent_freq * pllm;
+
+	do_div(current_freq, plld);
+
+	if (pllfm) {
+		u64 tmp;
+
+		tmp = parent_freq * pllfm;
+		do_div(tmp, plld);
+		tmp >>= PLL_16FFT_FREQ_CTRL1_FB_DIV_FRAC_BITS;
+		current_freq += tmp;
+	}
+
+	return current_freq;
+}
+
+static int ti_pll_clk_set_rate(struct ti_pll_clk *pll, unsigned long rate,
+			       unsigned long parent_rate)
+{
+	u64 parent_freq = parent_rate;
+	int ret;
+	u32 ctrl;
+	unsigned long pllm;
+	u32 pllfm = 0;
+	unsigned long plld;
+	u32 div_ctrl;
+	u32 rem;
+	int shift;
+
+	if (rate != parent_freq)
+		/*
+		 * Attempt with higher max multiplier value first to give
+		 * some space for fractional divider to kick in.
+		 */
+		for (shift = 8; shift >= 0; shift -= 8) {
+			rational_best_approximation(rate, parent_freq,
+				((PLL_16FFT_FREQ_CTRL0_FB_DIV_INT_MASK + 1) << shift) - 1,
+				PLL_16FFT_DIV_CTRL_REF_DIV_MASK, &pllm, &plld);
+			if (pllm / plld <= PLL_16FFT_FREQ_CTRL0_FB_DIV_INT_MASK)
+				break;
+		}
+
+	/* Put PLL to bypass mode */
+	ctrl = readl(pll->reg + PLL_16FFT_CTRL);
+	ctrl |= PLL_16FFT_CTRL_BYPASS_EN;
+	writel(ctrl, pll->reg + PLL_16FFT_CTRL);
+
+	if (rate == parent_freq)
+		return 0;
+
+	pr_debug("%s: pre-frac-calc: rate=%u, parent_freq=%u, plld=%u, pllm=%u\n",
+	      __func__, (u32)rate, (u32)parent_freq, (u32)plld, (u32)pllm);
+
+	/* Check if we need fractional config */
+	if (plld > 1) {
+		pllfm = pllm % plld;
+		pllfm <<= PLL_16FFT_FREQ_CTRL1_FB_DIV_FRAC_BITS;
+		rem = pllfm % plld;
+		pllfm /= plld;
+		if (rem)
+			pllfm++;
+		pllm /= plld;
+		plld = 1;
+	}
+
+	if (pllfm)
+		ctrl |= PLL_16FFT_CTRL_DSM_EN;
+	else
+		ctrl &= ~PLL_16FFT_CTRL_DSM_EN;
+
+	writel(pllm, pll->reg + PLL_16FFT_FREQ_CTRL0);
+	writel(pllfm, pll->reg + PLL_16FFT_FREQ_CTRL1);
+
+	/*
+	 * div_ctrl register contains other divider values, so rmw
+	 * only plld and leave existing values alone
+	 */
+	div_ctrl = readl(pll->reg + PLL_16FFT_DIV_CTRL);
+	div_ctrl &= ~PLL_16FFT_DIV_CTRL_REF_DIV_MASK;
+	div_ctrl |= plld;
+	writel(div_ctrl, pll->reg + PLL_16FFT_DIV_CTRL);
+
+	ctrl &= ~PLL_16FFT_CTRL_BYPASS_EN;
+	ctrl |= PLL_16FFT_CTRL_PLL_EN;
+	writel(ctrl, pll->reg + PLL_16FFT_CTRL);
+
+	ret = ti_pll_wait_for_lock(pll);
+	if (ret)
+		return ret;
+
+	pr_debug("%s: pllm=%u, plld=%u, pllfm=%u, parent_freq=%u\n",
+		 __func__, (u32)pllm, (u32)plld, (u32)pllfm, (u32)parent_freq);
+
+	return 0;
+}
+
+static int __ti_pll_clk_set_rate(struct clk_hw *hw, unsigned long rate,
+				 unsigned long parent_rate)
+{
+	struct ti_pll_clk *pll = to_pll(hw);
+
+	return ti_pll_clk_set_rate(pll, rate, parent_rate);
+}
+
+static long ti_pll_clk_round_rate(struct clk_hw *hw, unsigned long rate,
+				  unsigned long *prate)
+{
+	return rate; /* FIXME */
+}
+
+static int ti_pll_clk_enable(struct clk_hw *hw)
+{
+	struct ti_pll_clk *pll = to_pll(hw);
+	u32 ctrl;
+
+	ctrl = readl(pll->reg + PLL_16FFT_CTRL);
+	ctrl &= ~PLL_16FFT_CTRL_BYPASS_EN;
+	ctrl |= PLL_16FFT_CTRL_PLL_EN;
+	writel(ctrl, pll->reg + PLL_16FFT_CTRL);
+
+	return ti_pll_wait_for_lock(pll);
+}
+
+static void ti_pll_clk_disable(struct clk_hw *hw)
+{
+	struct ti_pll_clk *pll = to_pll(hw);
+	u32 ctrl;
+
+	ctrl = readl(pll->reg + PLL_16FFT_CTRL);
+	ctrl |= PLL_16FFT_CTRL_BYPASS_EN;
+	writel(ctrl, pll->reg + PLL_16FFT_CTRL);
+}
+
+static const struct clk_ops ti_pll_clk_ops = {
+	.recalc_rate = ti_pll_clk_recalc_rate,
+	.round_rate = ti_pll_clk_round_rate,
+	.set_rate = __ti_pll_clk_set_rate,
+	.enable = ti_pll_clk_enable,
+	.disable = ti_pll_clk_disable,
+};
+
+void ti_k3_pll_init(void __iomem *reg)
+{
+	u32 cfg, ctrl, hsdiv_presence_bit, hsdiv_ctrl_offs;
+	int i;
+
+	/* Unlock the PLL registers */
+	writel(PLL_KICK0_VALUE, reg + PLL_KICK0);
+	writel(PLL_KICK1_VALUE, reg + PLL_KICK1);
+
+	/* Enable all HSDIV outputs */
+	cfg = readl(reg + PLL_16FFT_CFG);
+	for (i = 0; i < 16; i++) {
+		hsdiv_presence_bit = BIT(16 + i);
+		hsdiv_ctrl_offs = 0x80 + (i * 4);
+		/* Enable HSDIV output if present */
+		if ((hsdiv_presence_bit & cfg) != 0UL) {
+			ctrl = readl(reg + hsdiv_ctrl_offs);
+			ctrl |= PLL_16FFT_HSDIV_CTRL_CLKOUT_EN;
+			writel(ctrl, reg + hsdiv_ctrl_offs);
+		}
+	}
+}
+
+int ti_k3_pll_set_rate(void __iomem *reg, unsigned long rate, unsigned long parent_rate)
+{
+	struct ti_pll_clk pll = {
+		.reg = reg,
+		.hw.clk.name = "PBL",
+	};
+
+	return ti_pll_clk_set_rate(&pll, rate, parent_rate);
+}
+
+struct clk *clk_register_ti_k3_pll(const char *name, const char *parent_name,
+				   void __iomem *reg)
+{
+	struct ti_pll_clk *pll;
+	int ret;
+
+	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
+	if (!pll)
+		return ERR_PTR(-ENOMEM);
+
+	pll->reg = reg;
+
+	pll->parent = parent_name;
+	pll->hw.clk.ops = &ti_pll_clk_ops;
+	pll->hw.clk.name = name;
+	pll->hw.clk.parent_names = &pll->parent;
+	pll->hw.clk.num_parents = 1;
+
+	ti_k3_pll_init(pll->reg);
+
+	ret = bclk_register(&pll->hw.clk);
+	if (ret) {
+		kfree(pll);
+		return ERR_PTR(ret);
+	}
+
+	return &pll->hw.clk;
+}
diff --git a/drivers/clk/k3/ti-k3-clk.h b/drivers/clk/k3/ti-k3-clk.h
new file mode 100644
index 0000000000..88980412bf
--- /dev/null
+++ b/drivers/clk/k3/ti-k3-clk.h
@@ -0,0 +1,8 @@
+#ifndef __TI_K3_CLK_H
+#define __TI_K3_CLK_H
+
+struct clk *clk_register_ti_k3_pll(const char *name, const char *parent_name,
+				   void __iomem *reg);
+
+#endif
+
diff --git a/include/soc/k3/clk.h b/include/soc/k3/clk.h
new file mode 100644
index 0000000000..a9921f5a9c
--- /dev/null
+++ b/include/soc/k3/clk.h
@@ -0,0 +1,7 @@
+#ifndef __SOC_K3_CLK_H
+#define __SOC_K3_CLK_H
+
+void ti_k3_pll_init(void __iomem *reg);
+int ti_k3_pll_set_rate(void __iomem *reg, unsigned long rate, unsigned long parent_rate);
+
+#endif /* __SOC_K3_CLK_H */

-- 
2.39.5



