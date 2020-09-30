Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNXlg-00086Z-FE
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 08:47:22 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-0003VS-HO
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kNXlf-00016v-5e
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 10:47:19 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 30 Sep 2020 10:47:09 +0200
Message-Id: <20200930084716.4200-2-m.felsch@pengutronix.de>
In-Reply-To: <20200930084716.4200-1-m.felsch@pengutronix.de>
References: <20200930084716.4200-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 1/8] of: platform: Keep track of populated platform devices
To: barebox@lists.infradead.org

After checking the linux history I found no state where it was explicite
allowed to register a platform device twice. In the early days there was
an bug and in some cases linux did populated the same device again. This
was fixed in 2014 by commit c6e126de43e7 ("of: Keep track of populated
platform devices") and since then this wasn't possible anymore.

The for_each_device() solution had two issues:
 1) We are looping over all devices each time
    of_platform_device_create() gets called.
 2) The logic around 'if (!dev->resource)' then 'continue' seems to be
    broken. This suggest that we can populate a device without
    resource(s) first and adding resource(s) later which isn't the case.
    Instead the current logic will populate the same device again but
    this time (maybe) with resources. So the caller can add the same
    device as many times as possible without resources.
 3) The device_node gets modified if the new device_node to add has the
    same resources region.

Add a device reference to the device_node to track an registered device
seems to:
 1) Simplify the code.
 2) Align the logic with the current linux state with the exception that
    we are returning the already created device.
 3) Avoid looping over each device all the time.
 4) Fix the memory leak which can occure if of_platform_device_create()
    gets called for the same device without any resources.

I added the missing check for amba devices too while on it.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new patch

 drivers/of/platform.c | 51 +++++++++++++++++--------------------------
 include/of.h          |  1 +
 2 files changed, 21 insertions(+), 31 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 21c7cce1a5..01de6f98af 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -101,11 +101,18 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	struct device_d *dev;
 	struct resource *res = NULL, temp_res;
 	resource_size_t resinval;
-	int i, j, ret, num_reg = 0, match;
+	int i, ret, num_reg = 0;
 
 	if (!of_device_is_available(np))
 		return NULL;
 
+	/*
+	 * Linux uses the OF_POPULATED flag to skip already populated/created
+	 * devices.
+	 */
+	if (np->dev)
+		return np->dev;
+
 	/* count the io resources */
 	if (of_can_translate_address(np))
 		while (of_address_to_resource(np, num_reg, &temp_res) == 0)
@@ -121,35 +128,6 @@ struct device_d *of_platform_device_create(struct device_node *np,
 				return NULL;
 			}
 		}
-
-		/*
-		 * A device may already be registered as platform_device.
-		 * Instead of registering the same device again, just
-		 * add this node to the existing device.
-		 */
-		for_each_device(dev) {
-			if (!dev->resource)
-				continue;
-
-			for (i = 0, match = 0; i < num_reg; i++)
-				for (j = 0; j < dev->num_resources; j++)
-					if (dev->resource[j].start ==
-						res[i].start &&
-					    dev->resource[j].end ==
-						res[i].end) {
-						match++;
-						break;
-					}
-
-			/* check if all address resources match */
-			if (match == num_reg) {
-				debug("connecting %s to %s\n",
-					np->name, dev_name(dev));
-				dev->device_node = np;
-				free(res);
-				return dev;
-			}
-		}
 	}
 
 	/* setup generic device info */
@@ -170,8 +148,10 @@ struct device_d *of_platform_device_create(struct device_node *np,
 		(num_reg) ? &dev->resource[0].start : &resinval);
 
 	ret = platform_device_register(dev);
-	if (!ret)
+	if (!ret) {
+		np->dev = dev;
 		return dev;
+	}
 
 	free(dev);
 	if (num_reg)
@@ -252,6 +232,13 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (!of_device_is_available(np))
 		return NULL;
 
+	/*
+	 * Linux uses the OF_POPULATED flag to skip already populated/created
+	 * devices.
+	 */
+	if (np->dev)
+		return np->dev;
+
 	dev = xzalloc(sizeof(*dev));
 
 	/* setup generic device info */
@@ -275,6 +262,8 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (ret)
 		goto amba_err_free;
 
+	np->dev = &dev->dev;
+
 	return &dev->dev;
 
 amba_err_free:
diff --git a/include/of.h b/include/of.h
index fc36f7a21a..f2dad9a6c2 100644
--- a/include/of.h
+++ b/include/of.h
@@ -35,6 +35,7 @@ struct device_node {
 	struct list_head parent_list;
 	struct list_head list;
 	phandle phandle;
+	struct device_d *dev;
 };
 
 struct of_device_id {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
