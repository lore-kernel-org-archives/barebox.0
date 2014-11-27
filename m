Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xu1S5-0004au-2Q
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 15:57:54 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xu1Oe-00025Y-VV
 for barebox@lists.infradead.org; Thu, 27 Nov 2014 16:54:20 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Nov 2014 16:54:19 +0100
Message-Id: <1417103660-32348-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1417103660-32348-1-git-send-email-l.stach@pengutronix.de>
References: <1417103660-32348-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/4] arm: imx: iim/ocotp: fix link error when !CONFIG_NET
To: barebox@lists.infradead.org

Don't try to attach mac to device if there is no net support selected.
Fixes:
undefined reference to `dev_add_param_mac' in both iim and ocotp drivers.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/iim.c   | 3 ++-
 arch/arm/mach-imx/ocotp.c | 6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 2546b921f109..d082d2d9a5dc 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -371,7 +371,8 @@ static void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
 			dev_err(dev, "cannot read: %s\n", strerror(-ret));
 		}
 
-		imx_iim_add_mac_param(iim, macnum, bank, offset);
+		if (IS_ENABLED(CONFIG_NET))
+			imx_iim_add_mac_param(iim, macnum, bank, offset);
 		macnum++;
 
 		len -= MAC_ADDRESS_PROPLEN;
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 837500fff886..5912d7586684 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -432,8 +432,10 @@ static int imx_ocotp_probe(struct device_d *dev)
 				NULL, NULL, &priv->permanent_write_enable, NULL);
 	}
 
-	dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
-			imx_ocotp_get_mac, priv->ethaddr, priv);
+	if (IS_ENABLED(CONFIG_NET))
+		dev_add_param_mac(&(priv->dev), "mac_addr", imx_ocotp_set_mac,
+				imx_ocotp_get_mac, priv->ethaddr, priv);
+
 	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
 
 	return 0;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
