Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhiC-0001Ur-Dm
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 05:07:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id q21so10070388pfn.11
 for <barebox@lists.infradead.org>; Mon, 07 Oct 2019 22:07:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  7 Oct 2019 22:06:56 -0700
Message-Id: <20191008050657.1605-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] i2c-mux-pca954x: Add support for "i2c-mux-idle-disconnect"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add support for "i2c-mux-idle-disconnect" binding to match the
behavior, already present in upstream kernel driver. This feature is a
must have for I2C bus topologies with multiple muxes connected to
child segments containing slaves with identical addresses (e.g. ZII's
SCU4)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/muxes/i2c-mux-pca954x.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
index 42bde5ed1c..aa7dcb8c31 100644
--- a/drivers/i2c/muxes/i2c-mux-pca954x.c
+++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
@@ -170,6 +170,16 @@ static int pca954x_select_chan(struct i2c_adapter *adap,
 	return ret;
 }
 
+static int pca954x_deselect_chan(struct i2c_adapter *adap,
+				 void *client, u32 chan)
+{
+	struct pca954x *data = i2c_get_clientdata(client);
+
+	/* Deselect active channel */
+	data->last_chan = 0;
+	return pca954x_reg_write(adap, client, data->last_chan);
+}
+
 /*
  * I2C init/probing/exit functions
  */
@@ -182,6 +192,7 @@ static int pca954x_probe(struct device_d *dev)
 	uintptr_t tmp;
 	int ret = -ENODEV;
 	int gpio;
+	bool idle_disconnect;
 
 	data = kzalloc(sizeof(struct pca954x), GFP_KERNEL);
 	if (!data) {
@@ -209,6 +220,9 @@ static int pca954x_probe(struct device_d *dev)
 	if (ret)
 		goto exit_free;
 
+	idle_disconnect = of_property_read_bool(dev->device_node,
+						"i2c-mux-idle-disconnect");
+
 	data->last_chan = 0;		   /* force the first selection */
 
 	/* Now create an adapter for each channel */
@@ -216,7 +230,10 @@ static int pca954x_probe(struct device_d *dev)
 
 		data->virt_adaps[num] =
 			i2c_add_mux_adapter(adap, &client->dev, client,
-				0, num, pca954x_select_chan, NULL);
+					    0, num, pca954x_select_chan,
+					    idle_disconnect ?
+					    pca954x_deselect_chan :
+					    NULL);
 
 		if (data->virt_adaps[num] == NULL) {
 			ret = -ENODEV;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
