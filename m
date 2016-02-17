Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x230.google.com ([2607:f8b0:400e:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwO-0003n6-Tc
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:06 +0000
Received: by mail-pf0-x230.google.com with SMTP id x65so1519333pfb.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:07 -0800
Message-Id: <1455672559-25061-7-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/18] clk-imx6: Call clk_enable on mmdc_ch0_axi_podf
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Call clk_enable on mmdc_ch0_axi_podf in order to properly increase
reference counters for all of the nodes in this particular clock
path. Otherwise it becomes possible for peripherals, located on other
branches stemming from "periph", to shut down the whole clock tree (up
to "pll2_bus") when they try to manage their own local clocks.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/clk-imx6.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/clk-imx6.c b/arch/arm/mach-imx/clk-imx6.c
index 597e502..da8033e 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -501,6 +501,7 @@ static int imx6_ccm_probe(struct device_d *dev)
 	clk_data.clk_num = IMX6QDL_CLK_END;
 	of_clk_add_provider(dev->device_node, of_clk_src_onecell_get, &clk_data);
 
+	clk_enable(clks[IMX6QDL_CLK_MMDC_CH0_AXI_PODF]);
 	clk_enable(clks[IMX6QDL_CLK_PLL6_ENET]);
 	clk_enable(clks[IMX6QDL_CLK_SATA_REF_100M]);
 	clk_enable(clks[IMX6QDL_CLK_ENFC_PODF]);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
