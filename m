Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrToA-0000nL-LE
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 14:01:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 16:00:51 +0200
Message-Id: <1372168851-28501-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: gadget: fsl: Fix registering from chipidea driver
To: barebox@lists.infradead.org

The fsl gadget driver wants to configure the portsc register
with information from platform_data. When registered from the
chipidea driver there is no platform_data. Fix the resulting
crash by not derefencing platform_data when NULL. In this
case the PORTSC register is not touched, it will have been
configured by the chipidea driver in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 81715f9..993c7eb 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -625,10 +625,13 @@ static int dr_controller_setup(struct fsl_udc *udc)
 	case FSL_USB2_PHY_SERIAL:
 		portctrl |= PORTSCX_PTS_FSLS;
 		break;
+	case FSL_USB2_PHY_NONE:
+		break;
 	default:
 		return -EINVAL;
 	}
-	writel(portctrl, &dr_regs->portsc1);
+	if (udc->phy_mode != FSL_USB2_PHY_NONE)
+		writel(portctrl, &dr_regs->portsc1);
 
 	/* Stop and reset the usb controller */
 	tmp = readl(&dr_regs->usbcmd);
@@ -2077,7 +2080,10 @@ static int struct_udc_setup(struct fsl_udc *udc,
 	struct fsl_usb2_platform_data *pdata = dev->platform_data;
 	size_t size;
 
-	udc->phy_mode = pdata->phy_mode;
+	if (pdata)
+		udc->phy_mode = pdata->phy_mode;
+	else
+		udc->phy_mode = FSL_USB2_PHY_NONE;
 
 	udc->eps = kzalloc(sizeof(struct fsl_ep) * udc->max_ep, GFP_KERNEL);
 	if (!udc->eps) {
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
