Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiWv-0008Eg-Sg
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:48:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:23 +0200
Message-Id: <1443008851-26596-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
References: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] video: ipuv3: imx-ldb: remove unused variable
To: Barebox List <barebox@lists.infradead.org>

endpoint is set but not used. Remove the code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/video/imx-ipu-v3/imx-ldb.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index db5f8b6..2f49ed2 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -308,7 +308,6 @@ static int imx_ldb_probe(struct device_d *dev)
 	for_each_child_of_node(np, child) {
 		struct imx_ldb_channel *channel;
 		struct device_node *port;
-		struct device_node *endpoint;
 
 		ret = of_property_read_u32(child, "reg", &i);
 		if (ret || i < 0 || i > 1)
@@ -334,12 +333,6 @@ static int imx_ldb_probe(struct device_d *dev)
 			continue;
 		}
 
-		endpoint = of_get_child_by_name(port, "endpoint");
-		if (!endpoint) {
-			dev_warn(dev, "No endpoint found on %s\n", port->full_name);
-			continue;
-		}
-
 		channel->vpl.node = child;
 		channel->vpl.ioctl = &imx_ldb_ioctl;
 		ret = vpl_register(&channel->vpl);
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
