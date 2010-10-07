Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3qSb-000667-N4
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 13:24:38 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu,  7 Oct 2010 15:24:13 +0200
Message-Id: <1286457858-29771-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
References: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/7] Make the disk driver less noisy
To: barebox@lists.infradead.org

In real life this output is only a "nice to have", but most of the time
its useless and confusing. So, make it a debug feature for the interested
developer.

Note: This is in preparation to add MCI card support, which mostly come with
a partition table and can be handled like a disk drive.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/ata/disk_drive.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 6d5c87a..a54a283 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -105,7 +105,7 @@ static int disk_register_partitions(struct device_d *dev, struct partition_entry
 			if (table[part_order[i]].partition_size > 0x7fffff)
 				continue;
 #endif
-			dev_info(dev, "Registering partition %s to drive %s\n", partition_name, drive_name);
+			dev_dbg(dev, "Registering partition %s to drive %s\n", partition_name, drive_name);
 			rc = devfs_add_partition(drive_name,
 				table[part_order[i]].partition_start * SECTOR_SIZE,
 				table[part_order[i]].partition_size * SECTOR_SIZE,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
