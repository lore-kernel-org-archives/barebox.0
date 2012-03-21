Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAJZF-0005Pr-1m
 for barebox@lists.infradead.org; Wed, 21 Mar 2012 11:19:03 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed, 21 Mar 2012 12:18:45 +0100
Message-Id: <1332328725-29753-4-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 3/3] net: miidev: properly check for MII reset
To: barebox@lists.infradead.org

Wait until the reset bit is actually cleared instead of some
arbitrary delay (which caused problems with a PHY which was in some
energy saving mode).

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 drivers/net/miidev.c |   17 ++++++++++++-----
 1 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 16a3461..3b73133 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -31,19 +31,26 @@
 int miidev_restart_aneg(struct mii_device *mdev)
 {
 	int status, timeout;
+	uint64_t start;
 
-	/*
-	 * Reset PHY, then delay 300ns
-	 */
 	status = mii_write(mdev, mdev->address, MII_BMCR, BMCR_RESET);
 	if (status)
 		return status;
 
+	start = get_time_ns();
+	do {
+		status = mii_read(mdev, mdev->address, MII_BMCR);
+		if (status < 0)
+			return status;
+
+		if (is_timeout(start, SECOND))
+			return -ETIMEDOUT;
+
+	} while (status & BMCR_RESET);
+
 	if (mdev->flags & MIIDEV_FORCE_LINK)
 		return 0;
 
-	udelay(1000);
-
 	if (mdev->flags & MIIDEV_FORCE_10) {
 		printf("Forcing 10 Mbps ethernet link... ");
 
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
