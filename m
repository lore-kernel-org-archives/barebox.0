Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgdFs-0007hN-5w
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 14:48:36 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1SgdFM-0008C3-12
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:13 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1SgdFL-0002fa-Bw
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:03 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Mon, 18 Jun 2012 16:47:57 +0200
Message-Id: <1340030880-10062-4-git-send-email-js@sig21.net>
In-Reply-To: <1340030880-10062-1-git-send-email-js@sig21.net>
References: <1340030880-10062-1-git-send-email-js@sig21.net>
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
Subject: [PATCH 3/6] miidev: add support for 1000Mbit
To: barebox@lists.infradead.org

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 drivers/net/miidev.c |   32 +++++++++++++++++++++++++++++---
 include/miidev.h     |    4 ++++
 2 files changed, 33 insertions(+), 3 deletions(-)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 3545889..98ad790 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -124,7 +124,6 @@ int miidev_wait_aneg(struct mii_device *mdev)
 int miidev_get_status(struct mii_device *mdev)
 {
 	int ret, status, adv, lpa;
-	int ret, status;
 
 	ret = mii_read(mdev, mdev->address, MII_BMSR);
 	if (ret < 0)
@@ -137,6 +136,21 @@ int miidev_get_status(struct mii_device *mdev)
 		goto err_out;
 
 	if (ret & BMCR_ANENABLE) {
+		if (mdev->capabilities & MIIDEV_CAPABLE_1000M) {
+			lpa = mii_read(mdev, mdev->address, MII_STAT1000);
+			if (lpa < 0)
+				goto err_out;
+			adv = mii_read(mdev, mdev->address, MII_CTRL1000);
+			if (adv < 0)
+				goto err_out;
+			lpa &= adv << 2;
+			if (lpa & (LPA_1000FULL | LPA_1000HALF)) {
+				if (lpa & LPA_1000FULL)
+				       status |= MIIDEV_STATUS_IS_FULL_DUPLEX;
+				status |= MIIDEV_STATUS_IS_1000MBIT;
+				return status;
+			}
+		}
 		lpa = mii_read(mdev, mdev->address, MII_LPA);
 		if (lpa < 0)
 			goto err_out;
@@ -174,8 +188,8 @@ int miidev_print_status(struct mii_device *mdev)
 		return status;
 
 	duplex = status & MIIDEV_STATUS_IS_FULL_DUPLEX ? "Full" : "Half";
-	speed = status & MIIDEV_STATUS_IS_100MBIT ? 100 : 10;
-
+	speed = status & MIIDEV_STATUS_IS_1000MBIT ? 1000 :
+		(status & MIIDEV_STATUS_IS_100MBIT ? 100 : 10);
 
 	printf("%s: Link is %s", mdev->cdev.name,
 			status & MIIDEV_STATUS_IS_UP ? "up" : "down");
@@ -226,6 +240,7 @@ static int miidev_probe(struct device_d *dev)
 {
 	struct mii_device *mdev = dev->priv;
 	int val;
+	int caps = 0;
 
 	val = mii_read(mdev, mdev->address, MII_PHYSID1);
 	if (val < 0 || val == 0xffff)
@@ -233,7 +248,18 @@ static int miidev_probe(struct device_d *dev)
 	val = mii_read(mdev, mdev->address, MII_PHYSID2);
 	if (val < 0 || val == 0xffff)
 		goto err_out;
+	val = mii_read(mdev, mdev->address, MII_BMSR);
+	if (val < 0)
+		goto err_out;
+	if (val & BMSR_ESTATEN) {
+		val = mii_read(mdev, mdev->address, MII_ESTATUS);
+		if (val < 0)
+			goto err_out;
+		if (val & (ESTATUS_1000_TFULL | ESTATUS_1000_THALF))
+			caps = MIIDEV_CAPABLE_1000M;
+	}
 
+	mdev->capabilities = caps;
 	mdev->cdev.name = asprintf("phy%d", dev->id);
 	mdev->cdev.size = 64;
 	mdev->cdev.ops = &miidev_ops;
diff --git a/include/miidev.h b/include/miidev.h
index 622784f..4bbf94c 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -31,6 +31,8 @@
 #define MIIDEV_FORCE_10		(1 << 0)
 #define MIIDEV_FORCE_LINK	(1 << 1)
 
+#define MIIDEV_CAPABLE_1000M	(1 << 0)
+
 struct mii_device {
 	struct device_d dev;
 	struct device_d *parent;
@@ -40,6 +42,7 @@ struct mii_device {
 	int	(*write) (struct mii_device *dev, int addr, int reg, int value);
 
 	int flags;
+	int capabilities;
 
 	struct eth_device *edev;
 	struct cdev cdev;
@@ -55,6 +58,7 @@ int miidev_get_status(struct mii_device *mdev);
 #define MIIDEV_STATUS_IS_FULL_DUPLEX	(1 << 1)
 #define MIIDEV_STATUS_IS_10MBIT		(1 << 2)
 #define MIIDEV_STATUS_IS_100MBIT	(1 << 3)
+#define MIIDEV_STATUS_IS_1000MBIT	(1 << 4)
 int miidev_print_status(struct mii_device *mdev);
 
 static int inline mii_write(struct mii_device *dev, int addr, int reg, int value)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
