Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cjnwe-0003J3-GV
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 14:12:34 +0000
From: Robin van der Gracht <robin@protonic.nl>
Date: Fri,  3 Mar 2017 15:12:04 +0100
Message-Id: <20170303141204.17256-1-robin@protonic.nl>
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
Subject: [PATCH v2] clk: imx: clk-imx6ul: The i.mx6ul has no aips_tz3 clock
To: Sascha Hauer <kernel@pengutronix.de>
Cc: barebox@lists.infradead.org, Robin van der Gracht <robin@protonic.nl>

The clock was mapped on CG15 (gpio2_clocks) in the CCRG0 register.

Reviewed-by: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 drivers/clk/imx/clk-imx6ul.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index f28660d..5879661 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -71,7 +71,7 @@ static struct clk *clks[IMX6UL_CLK_END];
 static struct clk_onecell_data clk_data;
 
 static int const clks_init_on[] __initconst = {
-	IMX6UL_CLK_AIPSTZ1, IMX6UL_CLK_AIPSTZ2, IMX6UL_CLK_AIPSTZ3,
+	IMX6UL_CLK_AIPSTZ1, IMX6UL_CLK_AIPSTZ2,
 	IMX6UL_CLK_AXI, IMX6UL_CLK_ARM, IMX6UL_CLK_ROM,
 	IMX6UL_CLK_MMDC_P0_FAST, IMX6UL_CLK_MMDC_P0_IPG,
 };
@@ -275,7 +275,6 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clks[IMX6UL_CLK_GPT2_SERIAL]	= imx_clk_gate2("gpt2_serial",	"perclk",	base + 0x68,	26);
 	clks[IMX6UL_CLK_UART2_IPG]	= imx_clk_gate2("uart2_ipg",	"ipg",		base + 0x68,	28);
 	clks[IMX6UL_CLK_UART2_SERIAL]	= imx_clk_gate2("uart2_serial",	"uart_podf",	base + 0x68,	28);
-	clks[IMX6UL_CLK_AIPSTZ3]	= imx_clk_gate2("aips_tz3",	"ahb",		base + 0x68,	30);
 
 	/* CCGR1 */
 	clks[IMX6UL_CLK_ECSPI1]		= imx_clk_gate2("ecspi1",	"ecspi_podf",	base + 0x6c,	0);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
