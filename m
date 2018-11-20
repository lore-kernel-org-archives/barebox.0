Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJB-0002Ol-20
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:44 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:10 +0100
Message-Id: <20181120200714.3692-6-linux@rempel-privat.de>
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 5/9] mfd: da9063: fix wrong NULL pointer test
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

checking for priv == NULL and using in this case priv->dev
makes no sense.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/mfd/da9063.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index b6114a614..a7fff2c5b 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -201,7 +201,7 @@ static int da9062_device_init(struct da9063 *priv)
 
 	priv->client1 = i2c_new_dummy(priv->client->adapter,
 				      priv->client->addr + 1);
-	if (!priv) {
+	if (!priv->client1) {
 		dev_warn(priv->dev, "failed to create bank 1 device\n");
 		/* TODO: return -EINVAL; i2c api does not return more
 		 * details */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
