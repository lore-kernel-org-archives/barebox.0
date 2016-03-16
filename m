Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag2EA-0007bR-9E
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:31 +0000
Received: by mail-pf0-x229.google.com with SMTP id x3so56147731pfb.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:37 -0700
Message-Id: <1458099232-9050-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/16] clk-imx6: Call clk_enable on mmdc_ch0_axi_podf
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
index daa5801..a634580 100644
--- a/arch/arm/mach-imx/clk-imx6.c
+++ b/arch/arm/mach-imx/clk-imx6.c
@@ -507,6 +507,7 @@ static int imx6_ccm_probe(struct device_d *dev)
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
