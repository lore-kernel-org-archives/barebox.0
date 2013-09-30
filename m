Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQa0q-00063O-7Z
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 09:43:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Sep 2013 11:43:06 +0200
Message-Id: <1380534188-1734-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
References: <1380534188-1734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] cdev: store dos partition type in struct cdev
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c        | 4 +++-
 common/partitions/dos.c    | 7 +++++--
 common/partitions/parser.h | 1 +
 include/driver.h           | 1 +
 4 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 38032a3..694c6f6 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -63,6 +63,8 @@ static int register_one_partition(struct block_device *blk,
 		goto out;
 	}
 
+	cdev->dos_partition_type = part->dos_partition_type;
+
 	free(partition_name);
 
 	if (!part->name[0])
@@ -84,7 +86,7 @@ static int register_one_partition(struct block_device *blk,
 	ret = 0;
 out:
 	free(partition_name);
-	return 0;
+	return ret;
 }
 
 static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 29f1375..31b1ed6 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -138,10 +138,13 @@ static void dos_partition(void *buf, struct block_device *blk,
 	for (i = 0; i < 4; i++) {
 		pentry.first_sec = get_unaligned_le32(&table[i].partition_start);
 		pentry.size = get_unaligned_le32(&table[i].partition_size);
+		pentry.dos_partition_type = table[i].type;
 
 		if (pentry.first_sec != 0) {
-			pd->parts[pd->used_entries].first_sec = pentry.first_sec;
-			pd->parts[pd->used_entries].size = pentry.size;
+			int n = pd->used_entries;
+			pd->parts[n].first_sec = pentry.first_sec;
+			pd->parts[n].size = pentry.size;
+			pd->parts[n].dos_partition_type = pentry.dos_partition_type;
 			pd->used_entries++;
 		} else {
 			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index f5bdbd1..8d39452 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -16,6 +16,7 @@
 
 struct partition {
 	char name[MAX_PARTITION_NAME];
+	u8 dos_partition_type;
 	uint64_t first_sec;
 	uint64_t size;
 };
diff --git a/include/driver.h b/include/driver.h
index 9e4bffd..7f0532e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -456,6 +456,7 @@ struct cdev {
 	unsigned int flags;
 	int open;
 	struct mtd_info *mtd;
+	u8 dos_partition_type;
 };
 
 int devfs_create(struct cdev *);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
