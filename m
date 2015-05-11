Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yrunf-0004hc-9H
 for barebox@lists.infradead.org; Mon, 11 May 2015 20:59:44 +0000
Received: by laat2 with SMTP id t2so102339966laa.1
 for <barebox@lists.infradead.org>; Mon, 11 May 2015 13:59:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 00:00:49 +0300
Message-Id: <1431378053-18914-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
References: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/5] net: dm9k: show only one phy on miibus
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/dm9k.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index abcb7ee..5798e16 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -359,6 +359,11 @@ static int dm9k_phy_read(struct mii_bus *bus, int addr, int reg)
 	struct dm9k *priv = bus->priv;
 	struct device_d *dev = &bus->dev;
 
+	/* only internal phy supported by now, so show only one phy on miibus */
+	if (addr != 0) {
+		return 0xffff;
+	}
+
 	/* Fill the phyxcer register into REG_0C */
 	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
 	dm9k_iow(priv, DM9K_EPCR, 0xc);	/* Issue phyxcer read command */
@@ -378,6 +383,11 @@ static int dm9k_phy_write(struct mii_bus *bus, int addr, int reg, u16 val)
 	struct dm9k *priv = bus->priv;
 	struct device_d *dev = &bus->dev;
 
+	/* only internal phy supported by now, so show only one phy on miibus */
+	if (addr != 0) {
+		return 0;
+	}
+
 	/* Fill the phyxcer register into REG_0C */
 	dm9k_iow(priv, DM9K_EPAR, DM9K_PHY | reg);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
