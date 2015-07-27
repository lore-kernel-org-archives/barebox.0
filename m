Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJke9-0007ag-HD
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:48:59 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZJimP-0002c4-3d
 for barebox@lists.infradead.org; Mon, 27 Jul 2015 15:49:21 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 27 Jul 2015 17:48:33 +0200
Message-Id: <1438012113-27213-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1438012113-27213-1-git-send-email-l.stach@pengutronix.de>
References: <1438012113-27213-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] pinctrl: imx-iomux-v2: correct names in EXPORT_SYMBOL
 macros
To: barebox@lists.infradead.org

The functions have been renamed, but this has not been reflected in the
EXPORT_SYMBOL macros. Do that now.

Fixes several errors like this:
drivers/pinctrl/imx-iomux-v2.c:61:15: error:
	'mxc_iomux_mode' undeclared here (not in a function)
 EXPORT_SYMBOL(mxc_iomux_mode);

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pinctrl/imx-iomux-v2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/imx-iomux-v2.c b/drivers/pinctrl/imx-iomux-v2.c
index 2622d9a2d654..1e0e8e9fd672 100644
--- a/drivers/pinctrl/imx-iomux-v2.c
+++ b/drivers/pinctrl/imx-iomux-v2.c
@@ -58,7 +58,7 @@ int imx_iomux_mode(unsigned int pin_mode)
 
 	return ret;
 }
-EXPORT_SYMBOL(mxc_iomux_mode);
+EXPORT_SYMBOL(imx_iomux_mode);
 
 /*
  * This function configures the pad value for a IOMUX pin.
@@ -83,7 +83,7 @@ void imx_iomux_set_pad(enum iomux_pins pin, u32 config)
 	l |= config << (field * 10);
 	writel(l, reg);
 }
-EXPORT_SYMBOL(mxc_iomux_set_pad);
+EXPORT_SYMBOL(imx_iomux_set_pad);
 
 /*
  * This function enables/disables the general purpose function for a particular
@@ -104,7 +104,7 @@ void imx_iomux_set_gpr(enum iomux_gp_func gp, bool en)
 
 	writel(l, base + IOMUXGPR);
 }
-EXPORT_SYMBOL(mxc_iomux_set_gpr);
+EXPORT_SYMBOL(imx_iomux_set_gpr);
 
 int imx_iomux_setup_multiple_pins(const unsigned int *pin_list, unsigned count)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
