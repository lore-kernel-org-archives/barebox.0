Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgtB7-0001Dy-R9
 for barebox@lists.infradead.org; Mon, 27 May 2013 08:53:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 May 2013 10:52:50 +0200
Message-Id: <1369644775-29887-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
References: <1369644775-29887-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] mci: make mci device a pure device
To: barebox@lists.infradead.org

No need to match and probe the device if all that we want is a logical
deivice for the mci.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5c00018..9cc6cfb 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1629,15 +1629,11 @@ on_error:
 	return rc;
 }
 
-static struct driver_d mci_driver = {
-	.name	= "mci",
-	.probe	= mci_probe,
-};
-
 static int mci_init(void)
 {
 	sector_buf = xmemalign(32, 512);
-	return platform_driver_register(&mci_driver);
+
+	return 0;
 }
 
 device_initcall(mci_init);
@@ -1649,12 +1645,28 @@ device_initcall(mci_init);
  */
 int mci_register(struct mci_host *host)
 {
+	int ret;
 	struct device_d *mci_dev = xzalloc(sizeof(struct device_d));
 
+	strcpy(mci_dev->name, "mci");
 	mci_dev->id = DEVICE_ID_DYNAMIC;
-	strcpy(mci_dev->name, mci_driver.name);
 	mci_dev->platform_data = host;
 	mci_dev->parent = host->hw_dev;
 
-	return platform_device_register(mci_dev);
+	ret = register_device(mci_dev);
+	if (ret)
+		goto err_free;
+
+	ret = mci_probe(mci_dev);
+	if (ret)
+		goto err_unregister;
+
+	return 0;
+
+err_unregister:
+	unregister_device(mci_dev);
+err_free:
+	free(mci_dev);
+
+	return ret;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
