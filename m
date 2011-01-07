Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9no-0003Ne-8g
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:44:01 +0100
Message-Id: <1294397044-5008-22-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 21/24] mci-core: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 04a1e4c..c562700 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1001,13 +1001,13 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 	while (sector_count) {
 		int now = min(sector_count, 32U);
 		if (sector_start > MAX_BUFFER_NUMBER) {
-			pr_err("Cannot handle block number %lu. Too large!\n",
+			pr_err("Cannot handle block number %u. Too large!\n",
 				(unsigned)sector_start);
 			return -EINVAL;
 		}
 		rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start, now);
 		if (rc != 0) {
-			pr_err("Reading block %lu failed with %d\n", (unsigned)sector_start, rc);
+			pr_err("Reading block %u failed with %d\n", (unsigned)sector_start, rc);
 			return rc;
 		}
 		sector_count -= now;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
