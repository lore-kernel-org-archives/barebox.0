Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAJZF-0005Pt-3L
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 11:19:02 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed, 21 Mar 2012 12:18:43 +0100
Message-Id: <1332328725-29753-2-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1332328725-29753-1-git-send-email-w.sang@pengutronix.de>
References: <1332328725-29753-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 1/3] net: miidev: check for errors when accessing bus in
 restart_aneg
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/miidev.c |   29 +++++++++++++++++++++++------
 1 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index d721aac..83b6fe9 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -30,13 +30,14 @@
 
 int miidev_restart_aneg(struct mii_device *mdev)
 {
-	uint16_t status;
-	int timeout;
+	int status, timeout;
 
 	/*
 	 * Reset PHY, then delay 300ns
 	 */
-	mii_write(mdev, mdev->address, MII_BMCR, BMCR_RESET);
+	status = mii_write(mdev, mdev->address, MII_BMCR, BMCR_RESET);
+	if (status)
+		return status;
 
 	if (mdev->flags & MIIDEV_FORCE_LINK)
 		return 0;
@@ -45,8 +46,14 @@ int miidev_restart_aneg(struct mii_device *mdev)
 
 	if (mdev->flags & MIIDEV_FORCE_10) {
 		printf("Forcing 10 Mbps ethernet link... ");
+
 		status = mii_read(mdev, mdev->address, MII_BMSR);
-		mii_write(mdev, mdev->address, MII_BMCR, BMCR_FULLDPLX | BMCR_CTST);
+		if (status < 0)
+			return status;
+
+		status = mii_write(mdev, mdev->address, MII_BMCR, BMCR_FULLDPLX | BMCR_CTST);
+		if (status)
+			return status;
 
 		timeout = 20;
 		do {	/* wait for link status to go down */
@@ -56,6 +63,8 @@ int miidev_restart_aneg(struct mii_device *mdev)
 				break;
 			}
 			status = mii_read(mdev, mdev->address, MII_BMSR);
+			if (status < 0)
+				return status;
 		} while (status & BMSR_LSTATUS);
 
 	} else {	/* MII100 */
@@ -63,10 +72,18 @@ int miidev_restart_aneg(struct mii_device *mdev)
 		 * Set the auto-negotiation advertisement register bits
 		 */
 		status = mii_read(mdev, mdev->address, MII_ADVERTISE);
+		if (status < 0)
+			return status;
+
 		status |= ADVERTISE_ALL;
-		mii_write(mdev, mdev->address, MII_ADVERTISE, status);
 
-		mii_write(mdev, mdev->address, MII_BMCR, BMCR_ANENABLE | BMCR_ANRESTART);
+		status = mii_write(mdev, mdev->address, MII_ADVERTISE, status);
+		if (status)
+			return status;
+
+		status = mii_write(mdev, mdev->address, MII_BMCR, BMCR_ANENABLE | BMCR_ANRESTART);
+		if (status)
+			return status;
 	}
 
 	return 0;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
