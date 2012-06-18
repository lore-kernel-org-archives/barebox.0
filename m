Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgdFn-0007hJ-8o
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 14:48:33 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1SgdFL-0008C2-PO
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:07 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1SgdFL-0002fU-7w
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:03 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Mon, 18 Jun 2012 16:47:56 +0200
Message-Id: <1340030880-10062-3-git-send-email-js@sig21.net>
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
Subject: [PATCH 2/6] miidev: actually probe the PHY
To: barebox@lists.infradead.org

Check if the PHY is really accessible (e.g. the
PHY address is correct) during probe.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 drivers/net/miidev.c |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 272234e..3545889 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -225,6 +225,14 @@ static struct file_operations miidev_ops = {
 static int miidev_probe(struct device_d *dev)
 {
 	struct mii_device *mdev = dev->priv;
+	int val;
+
+	val = mii_read(mdev, mdev->address, MII_PHYSID1);
+	if (val < 0 || val == 0xffff)
+		goto err_out;
+	val = mii_read(mdev, mdev->address, MII_PHYSID2);
+	if (val < 0 || val == 0xffff)
+		goto err_out;
 
 	mdev->cdev.name = asprintf("phy%d", dev->id);
 	mdev->cdev.size = 64;
@@ -234,6 +242,10 @@ static int miidev_probe(struct device_d *dev)
 	devfs_create(&mdev->cdev);
 	list_add_tail(&mdev->list, &miidev_list);
 	return 0;
+
+err_out:
+	dev_err(dev, "cannot read PHY registers (addr %d)\n", mdev->address);
+	return -ENODEV;
 }
 
 static void miidev_remove(struct device_d *dev)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
