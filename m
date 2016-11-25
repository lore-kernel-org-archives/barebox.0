Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cANiu-00006D-4I
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 21:07:57 +0000
Received: by mail-pg0-x241.google.com with SMTP id p66so6347483pga.2
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 13:07:35 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 25 Nov 2016 13:07:11 -0800
Message-Id: <1480108031-17889-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1480108031-17889-1-git-send-email-andrew.smirnov@gmail.com>
References: <1480108031-17889-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] fixup! i.MX: Add VF610 clock tree initialization code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---
 drivers/clk/imx/clk-vf610.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index 1cf2b65..34400b9 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -431,6 +431,9 @@ static void __init vf610_clocks_init(struct device_node *ccm_node)
 	clk_set_parent(clk[VF610_CLK_ESDHC1_SEL], clk[VF610_CLK_PLL1_PFD3]);
 	clk_set_rate(clk[VF610_CLK_ESDHC1_DIV], clk_get_rate(clk[VF610_CLK_PLL1_PFD3]) / 9);
 
+	clk_set_parent(clk[VF610_CLK_ESDHC0_SEL], clk[VF610_CLK_PLL1_PFD3]);
+	clk_set_rate(clk[VF610_CLK_ESDHC0_DIV], clk_get_rate(clk[VF610_CLK_PLL1_PFD3]) / 9);
+
 	clk_set_parent(clk[VF610_CLK_SAI0_SEL], clk[VF610_CLK_AUDIO_EXT]);
 	clk_set_parent(clk[VF610_CLK_SAI1_SEL], clk[VF610_CLK_AUDIO_EXT]);
 	clk_set_parent(clk[VF610_CLK_SAI2_SEL], clk[VF610_CLK_AUDIO_EXT]);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
