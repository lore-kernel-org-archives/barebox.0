Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lC6Y0-0007LM-OU
 for barebox@lists.infradead.org; Tue, 16 Feb 2021 20:02:15 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Feb 2021 21:02:04 +0100
Message-Id: <20210216200208.5275-5-a.fatoum@pengutronix.de>
In-Reply-To: <20210216200208.5275-1-a.fatoum@pengutronix.de>
References: <20210216200208.5275-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] usb: storage: support USB disks up to 2TiB of size
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

SCSI Read Capacity (10) only supports up to 0xFFFF_FFFF sectors at most,
which at 512 bytes per sector equals a disk size of 2 TiB.

Due to barebox block layer limits, however, the barebox mass storage
driver doesn't address sectors that need more than 31 bits to describe.
These block layer limits were removed in a previous commit, so make the
USB driver use the full 32 bit to support 512-byte sector USB disks up
to 2 TiB of size.

Disks that are larger than that must either implement SCSI Read Capacity
(16) to support up to 16 Exabytes or increase the sector size beyond 512
bytes. This commit doesn't do that as I don't have the suitable hardware
to test.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/storage/usb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 4a46bc14fd66..c264dd4b71e2 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -305,10 +305,11 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 		return result;
 	}
 
-	if (last_lba > INT_MAX - 1) {
-		last_lba = INT_MAX - 1;
+	if (last_lba == U32_MAX) {
+		last_lba = U32_MAX - 1;
 		dev_warn(dev,
-			 "Limiting device size due to 31 bit contraints\n");
+			 "Limiting device size due to 32 bit constraints\n");
+		/* To support LBA >= U32_MAX, a READ CAPACITY (16) should be issued here */
 	}
 
 	pblk_dev->blk.num_blocks = last_lba + 1;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
