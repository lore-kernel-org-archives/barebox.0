Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYQ-0003Fw-LN
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:11 +0200
Message-Id: <1286796505-16049-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/17] mci: print error code on failure
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f961e46..a6c81b8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -927,7 +927,7 @@ static int mci_sd_write(struct device_d *disk_dev, uint64_t sector_start,
 		}
 		rc = mci_block_write(mci_dev, buffer, sector_start);
 		if (rc != 0) {
-			pr_err("Writing block %u failed\n", (unsigned)sector_start);
+			pr_err("Writing block %u failed with %d\n", (unsigned)sector_start, rc);
 			return rc;
 		}
 		sector_count--;
@@ -973,7 +973,7 @@ static int mci_sd_read(struct device_d *disk_dev, uint64_t sector_start,
 		}
 		rc = mci_read_block(mci_dev, buffer, (unsigned)sector_start);
 		if (rc != 0) {
-			pr_err("Reading block %lu failed\n", (unsigned)sector_start);
+			pr_err("Reading block %lu failed with %d\n", (unsigned)sector_start, rc);
 			return rc;
 		}
 		sector_count--;
@@ -1154,8 +1154,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 			pr_debug("Card seems to be a MultiMediaCard\n");
 			rc = mmc_send_op_cond(mci_dev);
 			if (rc) {
-				pr_err("MultiMediaCard did not respond to voltage select!\n");
-				rc = -ENODEV;
+				pr_err("MultiMediaCard voltage select failed with %d\n", rc);
 				goto on_error;
 			}
 		} else
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
