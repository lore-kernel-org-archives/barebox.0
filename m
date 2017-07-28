Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1db6Vn-0003RB-Ic
 for barebox@lists.infradead.org; Fri, 28 Jul 2017 14:45:11 +0000
Received: by mail-pg0-x244.google.com with SMTP id 125so10359294pgi.5
 for <barebox@lists.infradead.org>; Fri, 28 Jul 2017 07:44:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 28 Jul 2017 07:44:19 -0700
Message-Id: <20170728144427.14007-4-andrew.smirnov@gmail.com>
In-Reply-To: <20170728144427.14007-1-andrew.smirnov@gmail.com>
References: <20170728144427.14007-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 03/11] clk: i.MX7: Remove unused UART clocks array
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove what looks like unused leftover from analogous Linux kernel
code.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clk/imx/clk-imx7.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7.c b/drivers/clk/imx/clk-imx7.c
index d3a036c0c..b79c8c301 100644
--- a/drivers/clk/imx/clk-imx7.c
+++ b/drivers/clk/imx/clk-imx7.c
@@ -364,17 +364,6 @@ static int const clks_init_on[] __initconst = {
 
 static struct clk_onecell_data clk_data;
 
-static struct clk ** const uart_clks[] __initconst = {
-	&clks[IMX7D_UART1_ROOT_CLK],
-	&clks[IMX7D_UART2_ROOT_CLK],
-	&clks[IMX7D_UART3_ROOT_CLK],
-	&clks[IMX7D_UART4_ROOT_CLK],
-	&clks[IMX7D_UART5_ROOT_CLK],
-	&clks[IMX7D_UART6_ROOT_CLK],
-	&clks[IMX7D_UART7_ROOT_CLK],
-	NULL
-};
-
 static int imx7_clk_initialized;
 
 static int imx7_ccm_probe(struct device_d *dev)
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
