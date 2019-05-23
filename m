Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTr5i-0004wh-89
 for barebox@lists.infradead.org; Thu, 23 May 2019 17:01:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hTr5g-0001Mf-Kt
 for barebox@lists.infradead.org; Thu, 23 May 2019 19:01:16 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hTr5g-0001DM-Ci
 for barebox@lists.infradead.org; Thu, 23 May 2019 19:01:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 May 2019 19:01:14 +0200
Message-Id: <20190523170114.4622-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] clk: imx: vf610: correct __iomem 'qualifier' placement
To: barebox@lists.infradead.org

__iomem applies to the IOMEM() pointee, not to the auto pointer
that points at it. Move the annotation to correct this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/imx/clk-vf610.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-vf610.c b/drivers/clk/imx/clk-vf610.c
index d70f4416cbe1..4f7e097a8945 100644
--- a/drivers/clk/imx/clk-vf610.c
+++ b/drivers/clk/imx/clk-vf610.c
@@ -535,7 +535,7 @@ static int vf610_switch_cpu_clock_to_400mhz(void)
 {
 	int ret;
 	uint32_t cr117;
-	void * __iomem ddrmc = IOMEM(VF610_DDR_BASE_ADDR);
+	void __iomem *ddrmc = IOMEM(VF610_DDR_BASE_ADDR);
 
 	ret = clk_set_parent(clk[VF610_CLK_PLL2_PFD_SEL], clk[VF610_CLK_PLL2_PFD2]);
 	if (ret < 0) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
