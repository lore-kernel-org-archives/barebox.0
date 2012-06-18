Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgdFp-0007hL-3B
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 14:48:33 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1SgdFL-0008C1-KR
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:10 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1SgdFL-0002fP-3x
 for barebox@lists.infradead.org; Mon, 18 Jun 2012 16:48:03 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Mon, 18 Jun 2012 16:47:55 +0200
Message-Id: <1340030880-10062-2-git-send-email-js@sig21.net>
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
Subject: [PATCH 1/6] miidev: fix auto negotiation
To: barebox@lists.infradead.org

The auto negotiation result is the intersect
of the advertised abilities and the link partner abilities.

Signed-off-by: Johannes Stezenbach <js@sig21.net>
---
 drivers/net/miidev.c |   16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index f47fc9e..272234e 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -123,6 +123,7 @@ int miidev_wait_aneg(struct mii_device *mdev)
 
 int miidev_get_status(struct mii_device *mdev)
 {
+	int ret, status, adv, lpa;
 	int ret, status;
 
 	ret = mii_read(mdev, mdev->address, MII_BMSR);
@@ -136,13 +137,16 @@ int miidev_get_status(struct mii_device *mdev)
 		goto err_out;
 
 	if (ret & BMCR_ANENABLE) {
-		ret = mii_read(mdev, mdev->address, MII_LPA);
-		if (ret < 0)
+		lpa = mii_read(mdev, mdev->address, MII_LPA);
+		if (lpa < 0)
 			goto err_out;
-
-		status |= ret & LPA_DUPLEX ? MIIDEV_STATUS_IS_FULL_DUPLEX : 0;
-		status |= ret & LPA_100 ? MIIDEV_STATUS_IS_100MBIT :
-				MIIDEV_STATUS_IS_10MBIT;
+		adv = mii_read(mdev, mdev->address, MII_ADVERTISE);
+		if (adv < 0)
+			goto err_out;
+		lpa &= adv;
+		status |= lpa & LPA_DUPLEX ? MIIDEV_STATUS_IS_FULL_DUPLEX : 0;
+		status |= lpa & LPA_100 ? MIIDEV_STATUS_IS_100MBIT :
+			MIIDEV_STATUS_IS_10MBIT;
 	} else {
 		status |= ret & BMCR_FULLDPLX ? MIIDEV_STATUS_IS_FULL_DUPLEX : 0;
 		status |= ret & BMCR_SPEED100 ? MIIDEV_STATUS_IS_100MBIT :
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
