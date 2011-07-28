Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVV-0007jS-3w
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:44 +0200
Message-Id: <1311839985-11285-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/9] ARM i.MX IIM: switch to resources
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c |    9 ++++++---
 1 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 69e78ff..852f75b 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -226,14 +226,14 @@ static int imx_iim_blow_enable_set(struct device_d *dev, struct param_d *param,
 	return dev_param_set_generic(dev, param, blow_enable ? "1" : "0");
 }
 
-static int imx_iim_add_bank(struct device_d *dev, int num)
+static int imx_iim_add_bank(struct device_d *dev, void __iomem *base, int num)
 {
 	struct iim_priv *priv;
 	struct cdev *cdev;
 
 	priv = xzalloc(sizeof (*priv));
 
-	priv->base	= (void __iomem *)dev->map_base;
+	priv->base	= base;
 	priv->bankbase	= priv->base + 0x800 + 0x400 * num;
 	priv->bank	= num;
 	priv->banksize	= 32;
@@ -254,12 +254,15 @@ static int imx_iim_probe(struct device_d *dev)
 	struct imx_iim_platform_data *pdata = dev->platform_data;
 	int err;
 	int i;
+	void __iomem *base;
+
+	base = dev_request_mem_region(dev, 0);
 
 	if (pdata)
 		mac_addr_base = pdata->mac_addr_base;
 
 	for (i = 0; i < 8; i++) {
-		imx_iim_add_bank(dev, i);
+		imx_iim_add_bank(dev, base, i);
 	}
 
 #ifdef CONFIG_IMX_IIM_FUSE_BLOW
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
