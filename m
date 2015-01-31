Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHXp3-0002mp-Ag
 for barebox@lists.infradead.org; Sat, 31 Jan 2015 13:10:50 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 31 Jan 2015 14:10:09 +0100
Message-Id: <1422709810-30622-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
References: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH v2 2/3] net: smc1111: extend the driver for 91c94 and 91c96
 support
To: barebox@lists.infradead.org

All the smcs family chips 91c94, 91c96, 91c100, 91c111 share almost the
same behavior and register sets. The noticeable exceptions are coped
with in this patch, ie :
 - 91c94 and 91c96 only have an internal 10 Mbps phy
   The registers used for phy discovery on later chips will corrupt the
   91c96 state.
 - 91c94 and 91c96 have a control and config register quite different
   from their 91c1xx conterparts
   A platform data user defined couple of registers is introduced. If
   these values are 0, 91c1xx legacy behavior is assumed.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 38 +++++++++++++++++++++++++++++++++-----
 include/net/smc91111.h |  2 ++
 2 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index f6d0aed..ef7c0dc 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -440,6 +440,10 @@ struct smc91c111_priv {
 	void __iomem *base;
 	int qemu_fixup;
 	unsigned shift;
+	int version;
+	int revision;
+	unsigned int control_setup;
+	unsigned int config_setup;
 };
 
 #if (SMC_DEBUG > 2 )
@@ -900,6 +904,7 @@ static int smc91c111_phy_read(struct mii_bus *bus, int phyaddr, int phyreg)
 static void smc91c111_reset(struct eth_device *edev)
 {
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
+	int rev_vers;
 
 	/* This resets the registers mostly to defaults, but doesn't
 	   affect EEPROM.  That seems unnecessary */
@@ -915,8 +920,11 @@ static void smc91c111_reset(struct eth_device *edev)
 
 	/* Release from possible power-down state */
 	/* Configuration register is not affected by Soft Reset */
-	SMC_outw(priv, SMC_inw(priv, CONFIG_REG) | CONFIG_EPH_POWER_EN,
-			CONFIG_REG);
+	if (priv->config_setup)
+		SMC_outw(priv, priv->config_setup, CONFIG_REG);
+	else
+		SMC_outw(priv, SMC_inw(priv, CONFIG_REG) | CONFIG_EPH_POWER_EN,
+			 CONFIG_REG);
 
 	SMC_SELECT_BANK(priv, 0);
 
@@ -929,7 +937,10 @@ static void smc91c111_reset(struct eth_device *edev)
 
 	/* set the control register */
 	SMC_SELECT_BANK(priv, 1);
-	SMC_outw(priv, CTL_DEFAULT, CTL_REG);
+	if (priv->control_setup)
+		SMC_outw(priv, priv->control_setup, CTL_REG);
+	else
+		SMC_outw(priv, CTL_DEFAULT, CTL_REG);
 
 	/* Reset the MMU */
 	SMC_SELECT_BANK(priv, 2);
@@ -945,6 +956,14 @@ static void smc91c111_reset(struct eth_device *edev)
 
 	/* Disable all interrupts */
 	SMC_outb(priv, 0, IM_REG);
+
+	/* Check chip revision (91c94, 91c96, 91c100, ...) */
+	SMC_SELECT_BANK(priv, 3);
+	rev_vers = SMC_inb(priv, REV_REG);
+	priv->revision = (rev_vers >> 4) & 0xf;
+	priv->version = rev_vers & 0xf;
+	dev_info(edev->parent, "chip is revision=%2d, version=%2d\n",
+		 priv->revision, priv->version);
 }
 
 static void smc91c111_enable(struct eth_device *edev)
@@ -964,10 +983,16 @@ static int smc91c111_eth_open(struct eth_device *edev)
 
 	/* Configure the Receive/Phy Control register */
 	SMC_SELECT_BANK(priv, 0);
-	SMC_outw(priv, RPC_DEFAULT, RPC_REG);
+	if (priv->revision > 4)
+		SMC_outw(priv, RPC_DEFAULT, RPC_REG);
 
 	smc91c111_enable(edev);
 
+	if (priv->revision <= 4) {
+		dev_info(edev->parent, "force link at 10Mpbs on internal phy\n");
+		return 0;
+	}
+
 	ret = phy_device_connect(edev, &priv->miibus, 0, NULL,
 				 0, PHY_INTERFACE_MODE_NA);
 
@@ -1379,6 +1404,8 @@ static int smc91c111_probe(struct device_d *dev)
 		priv->shift = pdata->addr_shift;
 		if (pdata->bus_width == 16)
 			priv->a = access_via_16bit;
+		pdata->config_setup = pdata->config_setup;
+		pdata->control_setup = pdata->control_setup;
 	}
 
 	edev->init = smc91c111_init_dev;
@@ -1400,7 +1427,8 @@ static int smc91c111_probe(struct device_d *dev)
 
 	smc91c111_reset(edev);
 
-	mdiobus_register(&priv->miibus);
+	if (priv->revision > 4)
+		mdiobus_register(&priv->miibus);
 	eth_register(edev);
 
 	return 0;
diff --git a/include/net/smc91111.h b/include/net/smc91111.h
index fa904ea..0ed65e7 100644
--- a/include/net/smc91111.h
+++ b/include/net/smc91111.h
@@ -23,6 +23,8 @@ struct smc91c111_pdata {
 	int qemu_fixup;
 	int addr_shift;
 	int bus_width;
+	int config_setup;
+	int control_setup;
 };
 
 #endif /* __SMC91111_H__ */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
