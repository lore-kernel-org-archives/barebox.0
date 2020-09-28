Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvIg-0006Vh-Qp
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:42:51 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Sep 2020 17:42:42 +0200
Message-Id: <20200928154247.15619-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200928154247.15619-1-a.fatoum@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/7] led: pca955x: fix probing from device tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

dev->id_entry is not populated for devices probed from the device
tree. It was used unconditionally however. Use device_get_match_data
instead to support device tree probing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/led/led-pca955x.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/led/led-pca955x.c b/drivers/led/led-pca955x.c
index 27fefce8d524..f89fcbfba5ac 100644
--- a/drivers/led/led-pca955x.c
+++ b/drivers/led/led-pca955x.c
@@ -349,8 +349,11 @@ static int led_pca955x_probe(struct device_d *dev)
 	struct i2c_client *client;
 	int err;
 	struct pca955x_platform_data *pdata;
+	enum pca955x_type type;
 
-	chip = &pca955x_chipdefs[dev->id_entry->driver_data];
+	type = (enum pca955x_type)device_get_match_data(dev);
+
+	chip = &pca955x_chipdefs[type];
 	client = to_i2c_client(dev);
 
 	/* Make sure the slave address / chip type combo given is possible */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
