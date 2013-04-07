Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9c-0001Qx-AU
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:52 +0200
Message-Id: <1365343255-26497-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/21] console: Use dev_add_param_int for baudrate parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c       | 26 ++++++++------------------
 drivers/mci/mci-core.c | 15 ++++++++-------
 include/console.h      |  2 ++
 3 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/common/console.c b/common/console.c
index beb37bd..a0a06f6 100644
--- a/common/console.c
+++ b/common/console.c
@@ -99,33 +99,22 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	return 0;
 }
 
-static int console_baudrate_set(struct device_d *dev, struct param_d *param,
-		const char *val)
+static int console_baudrate_set(struct param_d *param, void *priv)
 {
-	struct console_device *cdev = to_console_dev(dev);
-	int baudrate;
-	char baudstr[16];
+	struct console_device *cdev = priv;
 	unsigned char c;
 
-	if (!val)
-		dev_param_set_generic(dev, param, NULL);
-
-	baudrate = simple_strtoul(val, NULL, 10);
-
 	if (cdev->f_active) {
 		printf("## Switch baudrate to %d bps and press ENTER ...\n",
-			baudrate);
+			cdev->baudrate);
 		mdelay(50);
-		cdev->setbrg(cdev, baudrate);
+		cdev->setbrg(cdev, cdev->baudrate);
 		mdelay(50);
 		do {
 			c = getc();
 		} while (c != '\r' && c != '\n');
 	} else
-		cdev->setbrg(cdev, baudrate);
-
-	sprintf(baudstr, "%d", baudrate);
-	dev_param_set_generic(dev, param, baudstr);
+		cdev->setbrg(cdev, cdev->baudrate);
 
 	return 0;
 }
@@ -155,8 +144,9 @@ int console_register(struct console_device *newcdev)
 	platform_device_register(dev);
 
 	if (newcdev->setbrg) {
-		dev_add_param(dev, "baudrate", console_baudrate_set, NULL, 0);
-		dev_set_param(dev, "baudrate", __stringify(CONFIG_BAUDRATE));
+		newcdev->baudrate = CONFIG_BAUDRATE;
+		dev_add_param_int(dev, "baudrate", console_baudrate_set,
+			NULL, &newcdev->baudrate, "%u", newcdev);
 	}
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 059e635..86e8d5d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1461,15 +1461,16 @@ static int mci_set_probe(struct param_d *param, void *priv)
 	struct mci *mci = priv;
 	int rc;
 
+	if (!mci->probe)
+		return 0;
+
 	rc = mci_check_if_already_initialized(mci);
 	if (rc != 0)
 		return 0;
 
-	if (mci->probe) {
-		rc = mci_card_probe(mci);
-		if (rc != 0)
-			return rc;
-	}
+	rc = mci_card_probe(mci);
+	if (rc != 0)
+		return rc;
 
 	return 0;
 }
@@ -1494,8 +1495,8 @@ static int mci_probe(struct device_d *mci_dev)
 
 	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(mci_dev));
 
-	mci->param_probe = dev_add_param_int(mci_dev, "probe",
-			mci_set_probe, NULL, &mci->probe, "%d", mci);
+	mci->param_probe = dev_add_param_bool(mci_dev, "probe",
+			mci_set_probe, NULL, &mci->probe, mci);
 
 	if (IS_ERR(mci->param_probe)) {
 		dev_dbg(mci->mci_dev, "Failed to add 'probe' parameter to the MCI device\n");
diff --git a/include/console.h b/include/console.h
index c45feb4..72cf99f 100644
--- a/include/console.h
+++ b/include/console.h
@@ -42,6 +42,8 @@ struct console_device {
 
 	unsigned char f_caps;
 	unsigned char f_active;
+
+	unsigned int baudrate;
 };
 
 int console_register(struct console_device *cdev);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
