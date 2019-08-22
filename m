Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0g0V-0002yL-54
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 05:51:38 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 07:51:07 +0200
Message-Id: <20190822055114.931-5-ahmad@a3f.at>
In-Reply-To: <20190822055114.931-1-ahmad@a3f.at>
References: <20190822055114.931-1-ahmad@a3f.at>
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
Subject: [PATCH 04/11] i2c-mux-pca954x: remove use of uninitialized variable
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

force isn't used except to print its uninitialized value in an error
path. Drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index d397e803b1e7..bbc4870c3eca 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -177,7 +177,7 @@ static int pca954x_probe(struct device_d *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
 	struct i2c_adapter *adap = to_i2c_adapter(client->dev.parent);
-	int num, force;
+	int num;
 	struct pca954x *data;
 	uintptr_t tmp;
 	int ret = -ENODEV;
@@ -220,8 +220,8 @@ static int pca954x_probe(struct device_d *dev)
 		if (data->virt_adaps[num] == NULL) {
 			ret = -ENODEV;
 			dev_err(&client->dev,
-				"failed to register multiplexed adapter"
-				" %d as bus %d\n", num, force);
+				"failed to register multiplexed adapter%d\n",
+				num);
 			goto virt_reg_failed;
 		}
 	}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
