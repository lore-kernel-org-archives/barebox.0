Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE3-0001uO-Nn
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:07:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:33 +0200
Message-Id: <1347480407-16865-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/15] driver: add dev_get_drvdata function
To: barebox@lists.infradead.org

Drivers need to get their driver data either from devicetree or the platform
information. It should matter for the driver where this data comes from, so
introduce a common function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 47d3803..4d6b250 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -376,6 +376,16 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 	return 0;
 }
 
+int dev_get_drvdata(struct device_d *dev, unsigned long *data)
+{
+	if (dev->id_entry) {
+		*data = dev->id_entry->driver_data;
+		return 0;
+	}
+
+	return -ENODEV;
+}
+
 static int do_devinfo(int argc, char *argv[])
 {
 	struct device_d *dev;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
