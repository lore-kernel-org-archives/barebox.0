Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rpgp1-0004d8-WF
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 13:54:05 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 24 Jan 2012 14:53:50 +0100
Message-Id: <1327413231-17495-5-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
References: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 4/5] net: miidev: factor out miidev_get_status()
To: barebox@lists.infradead.org

Currently, we can only print the phy_status. Factor out the routine to
get the status, so we can query it from fec drivers and configure
accordingly. Needed because mx28 needs a special bit set for 10Mbit.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/miidev.c |   65 ++++++++++++++++++++++++++++++++-----------------
 include/miidev.h     |    5 ++++
 2 files changed, 47 insertions(+), 23 deletions(-)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 501a4f8..d721aac 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -100,44 +100,63 @@ int miidev_wait_aneg(struct mii_device *mdev)
 	return 0;
 }
 
+int miidev_get_status(struct mii_device *mdev)
+{
+	int ret, status;
+
+	ret = mii_read(mdev, mdev->address, MII_BMSR);
+	if (ret < 0)
+		goto err_out;
+
+	status = ret & BMSR_LSTATUS ? MIIDEV_STATUS_IS_UP : 0;
+
+	ret = mii_read(mdev, mdev->address, MII_BMCR);
+	if (ret < 0)
+		goto err_out;
+
+	if (ret & BMCR_ANENABLE) {
+		ret = mii_read(mdev, mdev->address, MII_LPA);
+		if (ret < 0)
+			goto err_out;
+
+		status |= ret & LPA_DUPLEX ? MIIDEV_STATUS_IS_FULL_DUPLEX : 0;
+		status |= ret & LPA_100 ? MIIDEV_STATUS_IS_100MBIT :
+				MIIDEV_STATUS_IS_10MBIT;
+	} else {
+		status |= ret & BMCR_FULLDPLX ? MIIDEV_STATUS_IS_FULL_DUPLEX : 0;
+		status |= ret & BMCR_SPEED100 ? MIIDEV_STATUS_IS_100MBIT :
+			MIIDEV_STATUS_IS_10MBIT;
+	}
+
+	return status;
+err_out:
+	printf("%s: failed to read (%d)\n", mdev->cdev.name, ret);
+	return ret;
+}
+
 int miidev_print_status(struct mii_device *mdev)
 {
-	int bmsr, bmcr, lpa;
 	char *duplex;
-	int speed;
+	int speed, status;
 
 	if (mdev->flags & MIIDEV_FORCE_LINK) {
 		printf("Forcing link present...\n");
 		return 0;
 	}
 
-	bmsr = mii_read(mdev, mdev->address, MII_BMSR);
-	if (bmsr < 0)
-		goto err_out;
-	bmcr = mii_read(mdev, mdev->address, MII_BMCR);
-	if (bmcr < 0)
-		goto err_out;
-	lpa = mii_read(mdev, mdev->address, MII_LPA);
-	if (lpa < 0)
-		goto err_out;
+	status = miidev_get_status(mdev);
+	if (status < 0)
+		return status;
 
-	printf("%s: Link is %s", mdev->cdev.name,
-			bmsr & BMSR_LSTATUS ? "up" : "down");
+	duplex = status & MIIDEV_STATUS_IS_FULL_DUPLEX ? "Full" : "Half";
+	speed = status & MIIDEV_STATUS_IS_100MBIT ? 100 : 10;
 
-	if (bmcr & BMCR_ANENABLE) {
-		duplex = lpa & LPA_DUPLEX ? "Full" : "Half";
-		speed = lpa & LPA_100 ? 100 : 10;
-	} else {
-		duplex = bmcr & BMCR_FULLDPLX ? "Full" : "Half";
-		speed = bmcr & BMCR_SPEED100 ? 100 : 10;
-	}
 
+	printf("%s: Link is %s", mdev->cdev.name,
+			status & MIIDEV_STATUS_IS_UP ? "up" : "down");
 	printf(" - %d/%s\n", speed, duplex);
 
 	return 0;
-err_out:
-	printf("%s: failed to read\n", mdev->cdev.name);
-	return -1;
 }
 
 static ssize_t miidev_read(struct cdev *cdev, void *_buf, size_t count, ulong offset, ulong flags)
diff --git a/include/miidev.h b/include/miidev.h
index 21727ef..8cd4c45 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -49,6 +49,11 @@ int mii_register(struct mii_device *dev);
 void mii_unregister(struct mii_device *mdev);
 int miidev_restart_aneg(struct mii_device *mdev);
 int miidev_wait_aneg(struct mii_device *mdev);
+int miidev_get_status(struct mii_device *mdev);
+#define MIIDEV_STATUS_IS_UP		(1 << 0)
+#define MIIDEV_STATUS_IS_FULL_DUPLEX	(1 << 1)
+#define MIIDEV_STATUS_IS_10MBIT		(1 << 2)
+#define MIIDEV_STATUS_IS_100MBIT	(1 << 3)
 int miidev_print_status(struct mii_device *mdev);
 
 static int inline mii_write(struct mii_device *dev, int addr, int reg, int value)
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
