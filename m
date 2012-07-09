Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1So8B4-0002G0-Uf
 for barebox@lists.infradead.org; Mon, 09 Jul 2012 07:14:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  9 Jul 2012 09:13:56 +0200
Message-Id: <1341818036-30427-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mtd: fix bad block ioctls
To: barebox@lists.infradead.org

Since this commit we interpret the argument to the bad block ioctls
as a pointer to a 64bit number:

|commit e71c34366808bbe3ce0b166d8710749513af6d81
|Author: Sascha Hauer <s.hauer@pengutronix.de>
|Date:   Fri Oct 14 11:57:55 2011 +0200
|
|    mtd: fix arguments to bad block ioctls
|
|    In the Kernel the mtd ioctls expect a pointer to the offset, whereas
|    barebox interprets the pointer itself as an offset. Since we want
|    to add 64bit support for file sizes a pointer may not be sufficient,
|    so align with the kernel and convert it to a pointer to the offset.
|
|    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This missed some places, fix them aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Jean-Christophe,

Does this fix your nand issues on current master?

Sascha

 commands/nand.c            |    3 ++-
 commands/nandtest.c        |    4 ++--
 drivers/mtd/nand/nand-bb.c |    4 ++--
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index 34aa07b..6124dae 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -79,6 +79,7 @@ static int do_nand(int argc, char *argv[])
 	if (command & NAND_MARKBAD) {
 		if (optind < argc) {
 			int ret = 0, fd;
+			loff_t __badblock = badblock;
 
 			printf("marking block at 0x%08x on %s as bad\n", badblock, argv[optind]);
 
@@ -88,7 +89,7 @@ static int do_nand(int argc, char *argv[])
 				return 1;
 			}
 
-			ret = ioctl(fd, MEMSETBADBLOCK, (void *)badblock);
+			ret = ioctl(fd, MEMSETBADBLOCK, &__badblock);
 			if (ret)
 				perror("ioctl");
 
diff --git a/commands/nandtest.c b/commands/nandtest.c
index d923e42..06b7f94 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -307,11 +307,11 @@ static int do_nandtest(int argc, char *argv[])
 		for (test_ofs = flash_offset;
 				test_ofs < flash_offset+length;
 				test_ofs += meminfo.erasesize) {
-
+			loff_t __test_ofs = test_ofs;
 			srand(seed);
 			seed = rand();
 
-			if (ioctl(fd, MEMGETBADBLOCK, (void *)test_ofs)) {
+			if (ioctl(fd, MEMGETBADBLOCK, &__test_ofs)) {
 				printf("\rBad block at 0x%08x\n",
 						(unsigned)(test_ofs +
 							memregion.offset));
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index d272749..5b06a9e 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -216,7 +216,7 @@ static int nand_bb_calc_size(struct nand_bb *bb)
 static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
 {
 	struct nand_bb *bb = cdev->priv;
-	unsigned long raw_pos = 0;
+	loff_t raw_pos = 0;
 	uint32_t offset = __offset;
 	int ret;
 
@@ -226,7 +226,7 @@ static loff_t nand_bb_lseek(struct cdev *cdev, loff_t __offset)
 	while (raw_pos < bb->raw_size) {
 		off_t now = min(offset, bb->info.erasesize);
 
-		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, (void *)raw_pos);
+		ret = cdev_ioctl(bb->cdev_parent, MEMGETBADBLOCK, &raw_pos);
 		if (ret < 0)
 			return ret;
 		if (!ret) {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
