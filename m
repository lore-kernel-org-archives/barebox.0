Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XRch9-0001X6-4Y
 for barebox@lists.infradead.org; Wed, 10 Sep 2014 07:52:03 +0000
Received: by mail-lb0-f171.google.com with SMTP id 10so11197526lbg.16
 for <barebox@lists.infradead.org>; Wed, 10 Sep 2014 00:51:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 10 Sep 2014 11:51:12 +0400
Message-Id: <1410335472-13122-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: dm9k: show only one phy on miibus
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/dm9k.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 3a4c6aa..950bdb3 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -359,6 +359,11 @@ static int dm9k_phy_read(struct mii_bus *bus, int addr, int reg)
 	struct dm9k *priv = bus->priv;
 	struct device_d *dev = &bus->dev;
 
+	/* Show only one phy on miibus */
+	if (addr != 0) {
+		return 0xffff;
+	}
+
 	/* Fill the phyxcer register into REG_0C */
 	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
 	dm9k_iow(priv, DM9K_EPCR, 0xc);	/* Issue phyxcer read command */
@@ -378,6 +383,10 @@ static int dm9k_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
 	struct dm9k *priv = bus->priv;
 	struct device_d *dev = &bus->dev;
 
+	if (addr != 0) {
+		return 0;
+	}
+
 	/* Fill the phyxcer register into REG_0C */
 	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
