Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6M8w-0007Dx-1a
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 17:33:38 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1a6M8a-0007Sm-Bh
 for barebox@lists.infradead.org; Tue, 08 Dec 2015 18:33:16 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  8 Dec 2015 18:33:29 +0100
Message-Id: <1449596009-26508-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1449596009-26508-1-git-send-email-l.stach@pengutronix.de>
References: <1449596009-26508-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] MCI: init device_node for MCI mainarea cdev
To: barebox@lists.infradead.org

This fixes a regression, where boards specifying the environment
path using the form device-path = &phandle, "partname:part" would
be unable to find their env.

This is due to of_find_path() switching to cdev_by_device_node()
internally, which expects the device_node member of the main
area cdev to be initialized.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mci/mci-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 4e6b83be5f43..24f57f9da9a4 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -437,6 +437,9 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->area_type = area_type;
 	part->part_cfg = part_cfg;
 
+	if (area_type == MMC_BLK_DATA_AREA_MAIN)
+		part->blk.cdev.device_node = mci->host->hw_dev->device_node;
+
 	mci->nr_parts++;
 }
 
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
