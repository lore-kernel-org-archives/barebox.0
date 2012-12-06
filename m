Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tgbay-000817-QF
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 13:34:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Dec 2012 14:34:22 +0100
Message-Id: <1354800870-28385-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
References: <1354800870-28385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] ata: register disks as /dev/ata*
To: barebox@lists.infradead.org

Using /dev/disk* for every type of device is not helpful. It increases
the chance that the user doesn't know which file corresponds to which
device. So rename ata device files to /dev/ata*. Also add a dev_info
about which device just has been registered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/disk_ata_drive.c |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index 6bb72a9..303d6d0 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -572,12 +572,12 @@ int register_ata_drive(struct device_d *dev, struct ata_ioports *io)
 #ifdef DEBUG
 	ata_dump_id(drive->id);
 #endif
-	rc = cdev_find_free_index("disk");
+	rc = cdev_find_free_index("ata");
 	if (rc == -1)
 		pr_err("Cannot find a free index for the disk node\n");
 
 	drive->blk.num_blocks = ata_id_n_sectors(drive->id);
-	drive->blk.cdev.name = asprintf("disk%d", rc);
+	drive->blk.cdev.name = asprintf("ata%d", rc);
 	drive->blk.blockbits = SECTOR_SHIFT;
 
 	rc = blockdevice_register(&drive->blk);
@@ -586,6 +586,8 @@ int register_ata_drive(struct device_d *dev, struct ata_ioports *io)
 		goto on_error;
 	}
 
+	dev_info(dev, "registered /dev/%s\n", port->blk.cdev.name);
+
 	/* create partitions on demand */
 	rc = parse_partition_table(&drive->blk);
 	if (rc != 0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
