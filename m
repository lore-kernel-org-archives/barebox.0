Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x244.google.com ([2607:f8b0:400e:c03::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4Qr-0008GW-FB
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:30 +0000
Received: by mail-pa0-x244.google.com with SMTP id t6so5024060pae.2
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:46 -0700
Message-Id: <1475505657-898-10-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/20] i.MX: clk: Add IMX_PLLV3_USB_VF610 support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add IMX_PLLV3_USB_VF610 PLLv3 types support clk-pllv3.c

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/clk-pllv3.c | 9 ++++++---
 arch/arm/mach-imx/clk.h       | 1 +
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/clk-pllv3.c b/arch/arm/mach-imx/clk-pllv3.c
index e38dcdf..29c0f1c 100644
--- a/arch/arm/mach-imx/clk-pllv3.c
+++ b/arch/arm/mach-imx/clk-pllv3.c
@@ -36,6 +36,7 @@ struct clk_pllv3 {
 	void __iomem	*base;
 	bool		powerup_set;
 	u32		div_mask;
+	u32		div_shift;
 	const char	*parent;
 };
 
@@ -92,7 +93,7 @@ static unsigned long clk_pllv3_recalc_rate(struct clk *clk,
 					   unsigned long parent_rate)
 {
 	struct clk_pllv3 *pll = to_clk_pllv3(clk);
-	u32 div = readl(pll->base)  & pll->div_mask;
+	u32 div = (readl(pll->base) >> pll->div_shift) & pll->div_mask;
 
 	return (div == 1) ? parent_rate * 22 : parent_rate * 20;
 }
@@ -120,8 +121,8 @@ static int clk_pllv3_set_rate(struct clk *clk, unsigned long rate,
 		return -EINVAL;
 
 	val = readl(pll->base);
-	val &= ~pll->div_mask;
-	val |= div;
+	val &= ~(pll->div_mask << pll->div_shift);
+	val |= div << pll->div_shift;
 	writel(val, pll->base);
 
 	return 0;
@@ -292,6 +293,8 @@ struct clk *imx_clk_pllv3(enum imx_pllv3_type type, const char *name,
 	case IMX_PLLV3_SYS:
 		ops = &clk_pllv3_sys_ops;
 		break;
+	case IMX_PLLV3_USB_VF610:
+		pll->div_shift = 1;
 	case IMX_PLLV3_USB:
 		ops = &clk_pllv3_ops;
 		pll->powerup_set = true;
diff --git a/arch/arm/mach-imx/clk.h b/arch/arm/mach-imx/clk.h
index 2aeb356..35e480f 100644
--- a/arch/arm/mach-imx/clk.h
+++ b/arch/arm/mach-imx/clk.h
@@ -71,6 +71,7 @@ enum imx_pllv3_type {
 	IMX_PLLV3_GENERIC,
 	IMX_PLLV3_SYS,
 	IMX_PLLV3_USB,
+	IMX_PLLV3_USB_VF610,
 	IMX_PLLV3_AV,
 	IMX_PLLV3_ENET,
 	IMX_PLLV3_MLB,
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
