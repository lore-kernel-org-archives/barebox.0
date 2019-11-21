Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXkNz-0000Nj-0W
 for barebox@lists.infradead.org; Thu, 21 Nov 2019 11:12:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Nov 2019 12:12:22 +0100
Message-Id: <20191121111226.5036-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] usb: dwc3: remove unnecessary warning
To: Barebox List <barebox@lists.infradead.org>

The dwc3 driver warns when the value written to DWC3_GFLADJ happens to
be same as already read from the register. This always happens when the
driver was previously running when started 2nd stage from another
barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/dwc3/core.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
index c17327c791..ad84708da2 100644
--- a/drivers/usb/dwc3/core.c
+++ b/drivers/usb/dwc3/core.c
@@ -348,12 +348,9 @@ static void dwc3_frame_length_adjustment(struct dwc3 *dwc)
 
 	reg = dwc3_readl(dwc->regs, DWC3_GFLADJ);
 	dft = reg & DWC3_GFLADJ_30MHZ_MASK;
-	if (!WARN(dft == dwc->fladj,
-	    "request value same as default, ignoring\n")) {
-		reg &= ~DWC3_GFLADJ_30MHZ_MASK;
-		reg |= DWC3_GFLADJ_30MHZ_SDBND_SEL | dwc->fladj;
-		dwc3_writel(dwc->regs, DWC3_GFLADJ, reg);
-	}
+	reg &= ~DWC3_GFLADJ_30MHZ_MASK;
+	reg |= DWC3_GFLADJ_30MHZ_SDBND_SEL | dwc->fladj;
+	dwc3_writel(dwc->regs, DWC3_GFLADJ, reg);
 }
 
 static void dwc3_core_num_eps(struct dwc3 *dwc)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
