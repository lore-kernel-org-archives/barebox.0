Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAJZF-0005Ps-2G
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 11:19:02 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed, 21 Mar 2012 12:18:44 +0100
Message-Id: <1332328725-29753-3-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 2/3] net: miidev: Refactor timeout for aneg
To: barebox@lists.infradead.org

First check the status at least once, then do timeout checks. Minor
cleanups also.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/miidev.c |   17 ++++++-----------
 1 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 83b6fe9..16a3461 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -91,27 +91,22 @@ int miidev_restart_aneg(struct mii_device *mdev)
 
 int miidev_wait_aneg(struct mii_device *mdev)
 {
-	uint64_t start;
 	int status;
+	uint64_t start = get_time_ns();
 
 	if (mdev->flags & MIIDEV_FORCE_LINK)
 		return 0;
 
-	/*
-	 * Wait for AN completion
-	 */
-	start = get_time_ns();
 	do {
+		status = mii_read(mdev, mdev->address, MII_BMSR);
+		if (status < 0)
+			return status;
+
 		if (is_timeout(start, 5 * SECOND)) {
 			printf("%s: Autonegotiation timeout\n", mdev->cdev.name);
-			return -1;
+			return -ETIMEDOUT;
 		}
 
-		status = mii_read(mdev, mdev->address, MII_BMSR);
-		if (status < 0) {
-			printf("%s: Autonegotiation failed. status: 0x%04x\n", mdev->cdev.name, status);
-			return -1;
-		}
 	} while (!(status & BMSR_LSTATUS));
 
 	return 0;
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
