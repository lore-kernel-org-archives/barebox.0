Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ValWG-0003ZL-Tg
 for barebox@lists.infradead.org; Mon, 28 Oct 2013 12:02:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Oct 2013 13:01:38 +0100
Message-Id: <1382961700-8833-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
References: <1382961700-8833-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] mtd: raw: rename raw device
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

The name of the raw device is mtdraw<num> which is inconsistent to other
mtd devices which are named mtd<num>.<partname>. Rename it to mtd<num>.raw.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/mioa701/env/bin/barebox_update | 8 ++++----
 arch/arm/boards/mioa701/env/bin/dps1_update    | 6 +++---
 drivers/mtd/mtdraw.c                           | 2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/mioa701/env/bin/barebox_update b/arch/arm/boards/mioa701/env/bin/barebox_update
index b544563..1023770 100644
--- a/arch/arm/boards/mioa701/env/bin/barebox_update
+++ b/arch/arm/boards/mioa701/env/bin/barebox_update
@@ -1,10 +1,10 @@
 #!/bin/sh
 
 # Page+OOB specific partitions
-addpart /dev/mtdraw0 1081344@3649536(msipl)
-addpart /dev/mtdraw0 270336@3649536(barebox)
+addpart /dev/mtd0.raw 1081344@3649536(msipl)
+addpart /dev/mtd0.raw 270336@3649536(barebox)
 
 if [ -r /barebox.BIP0 ]; then
-	erase /dev/mtdraw0.barebox
-	cp -v /barebox.BIP0 /dev/mtdraw0.barebox
+	erase /dev/mtd0.raw.barebox
+	cp -v /barebox.BIP0 /dev/mtd0.raw.barebox
 fi
diff --git a/arch/arm/boards/mioa701/env/bin/dps1_update b/arch/arm/boards/mioa701/env/bin/dps1_update
index a9d72da..e6535ed 100644
--- a/arch/arm/boards/mioa701/env/bin/dps1_update
+++ b/arch/arm/boards/mioa701/env/bin/dps1_update
@@ -1,12 +1,12 @@
 #!/bin/sh
 
 # Page+OOB specific partitions
-addpart /dev/mtdraw0 67584@202752(dps1)
+addpart /dev/mtd0.raw 67584@202752(dps1)
 uncompress /env/data/dps1.raw.gz /dps1.raw
 
 if [ -r /dps1.raw ]; then
 	dps1_unlock
-	erase /dev/mtdraw0.dps1
-	cp -v /dps1.raw /dev/mtdraw0.dps1
+	erase /dev/mtd0.raw.dps1
+	cp -v /dps1.raw /dev/mtd0.raw.dps1
 	dps1_unlock
 fi
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 1a4711e..2acd51f 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -293,7 +293,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, char *devname, void **priv)
 	mtdraw->cdev.ops = (struct file_operations *)&mtd_raw_fops;
 	mtdraw->cdev.size = mtd->size / mtd->writesize *
 		(mtd->writesize + mtd->oobsize);
-	mtdraw->cdev.name = asprintf("%sraw%d", devname, mtd->class_dev.id);
+	mtdraw->cdev.name = asprintf("%s.raw", mtd->cdev.name);
 	mtdraw->cdev.priv = mtdraw;
 	mtdraw->cdev.dev = &mtd->class_dev;
 	mtdraw->cdev.mtd = mtd;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
