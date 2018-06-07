Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQyte-0004h4-W0
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 17:40:28 +0000
Received: by mail-wr0-x243.google.com with SMTP id v13-v6so10702754wrp.13
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 10:40:16 -0700 (PDT)
From: Pascal Vizeli <pvizeli@syshack.ch>
Date: Thu,  7 Jun 2018 17:40:11 +0000
Message-Id: <20180607174011.13130-1-pvizeli@syshack.ch>
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
Subject: [PATCH 1/1] drivers: of: bugfix partition fixups
To: barebox@lists.infradead.org
Cc: Pascal Vizeli <pvizeli@syshack.ch>

If we load a new device tree for linux kernel with a diferent layout,
the fixup of partition going into endless loop. Exactly the of_find_property
function will never come back on a invalid device_node.

My patch check, if the device will exists on device tree before we run the
fixup.

Signed-off-by: Pascal Vizeli <pvizeli@syshack.ch>
---
 drivers/of/partition.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index aa6e601b7..17e420964 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -140,6 +140,9 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	if (!cdev->device_node)
 		return -EINVAL;
 
+	if (!of_find_node_by_path(cdev->device_node->full_name))
+		return -EINVAL;
+
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
 		if (partcdev->flags & DEVFS_PARTITION_FROM_TABLE)
 			continue;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
