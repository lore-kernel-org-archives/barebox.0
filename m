Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJICC-0001uv-Lh
 for barebox@lists.infradead.org; Sat, 12 Oct 2019 14:16:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 12 Oct 2019 16:16:31 +0200
Message-Id: <20191012141632.14995-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] regulator: pfuze: remove unused driver_data
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We pass along driver_data that goes unused. Drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/regulator/pfuze.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index dc41e8f55b84..eeb787cdab1f 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -161,16 +161,11 @@ static const struct regmap_config pfuze_regmap_i2c_config = {
 
 static int __init pfuze_probe(struct device_d *dev)
 {
-	struct pfuze_devtype *devtype;
 	int ret;
 
 	if (pfuze_dev)
 		return -EBUSY;
 
-	ret = dev_get_drvdata(dev, (const void **)&devtype);
-	if (ret)
-		return ret;
-
 	pfuze_dev = xzalloc(sizeof(*pfuze_dev));
 	pfuze_dev->dev = dev;
 
@@ -192,26 +187,17 @@ static int __init pfuze_probe(struct device_d *dev)
 	return 0;
 }
 
-static struct pfuze_devtype pfuze100_devtype = {
-};
-
-static struct pfuze_devtype pfuze200_devtype = {
-};
-
-static struct pfuze_devtype pfuze3000_devtype = {
-};
-
 static struct platform_device_id pfuze_ids[] = {
-	{ .name = "pfuze100", .driver_data = (ulong)&pfuze100_devtype, },
-	{ .name = "pfuze200", .driver_data = (ulong)&pfuze200_devtype, },
-	{ .name = "pfuze3000", .driver_data = (ulong)&pfuze3000_devtype, },
+	{ .name = "pfuze100" },
+	{ .name = "pfuze200" },
+	{ .name = "pfuze3000" },
 	{ }
 };
 
 static __maybe_unused struct of_device_id pfuze_dt_ids[] = {
-	{ .compatible = "fsl,pfuze100", .data = &pfuze100_devtype, },
-	{ .compatible = "fsl,pfuze200", .data = &pfuze200_devtype, },
-	{ .compatible = "fsl,pfuze3000", .data = &pfuze3000_devtype, },
+	{ .compatible = "fsl,pfuze100" },
+	{ .compatible = "fsl,pfuze200" },
+	{ .compatible = "fsl,pfuze3000" },
 	{ }
 };
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
