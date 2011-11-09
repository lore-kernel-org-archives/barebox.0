Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RO6LR-00065P-DD
 for barebox@lists.infradead.org; Wed, 09 Nov 2011 11:29:29 +0000
Received: by bkat2 with SMTP id t2so1766147bka.36
 for <barebox@lists.infradead.org>; Wed, 09 Nov 2011 03:29:28 -0800 (PST)
From: franck.jullien@gmail.com
Date: Wed,  9 Nov 2011 12:29:20 +0100
Message-Id: <1320838161-29653-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1320838161-29653-1-git-send-email-franck.jullien@gmail.com>
References: <1320838161-29653-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/2] ata: Add dev ref to blockdevice during probe
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Add missing reference to dev when register the blockdevice.
This prevent the creation of a cdev with a NULL reference to dev in
blockdevice_register.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/ata/disk_drive.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/ata/disk_drive.c b/drivers/ata/disk_drive.c
index 6a5dc87..a9d0dee 100644
--- a/drivers/ata/disk_drive.c
+++ b/drivers/ata/disk_drive.c
@@ -205,6 +205,7 @@ static int disk_probe(struct device_d *dev)
 	atablk->blk.num_blocks = dev->resource[0].size / SECTOR_SIZE;
 	atablk->blk.ops = &ataops;
 	atablk->blk.blockbits = 9;
+	atablk->blk.dev = dev;
 	atablk->dev = dev;
 	atablk->intf = intf;
 	blockdevice_register(&atablk->blk);
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
