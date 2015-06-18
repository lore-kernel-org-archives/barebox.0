Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5UUZ-0000D2-ML
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:44:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 09:43:40 +0200
Message-Id: <1434613424-19989-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] cdev: Add partuuid string to struct cdev
To: Barebox List <barebox@lists.infradead.org>

This adds the partuuid string to struct cdev in order to have this
available for constructing a suitable Linux root=PARTUUID= option
for booting Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c        | 1 +
 common/partitions/dos.c    | 4 ++++
 common/partitions/parser.h | 1 +
 include/driver.h           | 3 +++
 4 files changed, 9 insertions(+)

diff --git a/common/partitions.c b/common/partitions.c
index 37d9cb7..4f50bfe 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -64,6 +64,7 @@ static int register_one_partition(struct block_device *blk,
 	}
 
 	cdev->dos_partition_type = part->dos_partition_type;
+	strcpy(cdev->partuuid, part->partuuid);
 
 	free(partition_name);
 
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 37addfd..e0cb356 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -185,6 +185,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 	uint8_t *buffer = buf;
 	int i;
 	struct disk_signature_priv *dsp;
+	uint32_t signature = get_unaligned_le32(buf + 0x1b8);
 
 	table = (struct partition_entry *)&buffer[446];
 
@@ -202,6 +203,9 @@ static void dos_partition(void *buf, struct block_device *blk,
 			pd->parts[n].first_sec = pentry.first_sec;
 			pd->parts[n].size = pentry.size;
 			pd->parts[n].dos_partition_type = pentry.dos_partition_type;
+			if (signature)
+				sprintf(pd->parts[n].partuuid, "%08x-%02d",
+						signature, i + 1);
 			pd->used_entries++;
 			/*
 			 * Partitions of type 0x05 and 0x0f (and some more)
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 8d39452..8ad134a 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -17,6 +17,7 @@
 struct partition {
 	char name[MAX_PARTITION_NAME];
 	u8 dos_partition_type;
+	char partuuid[MAX_PARTUUID_STR];
 	uint64_t first_sec;
 	uint64_t size;
 };
diff --git a/include/driver.h b/include/driver.h
index d0cdcc9..9c60054 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -435,6 +435,8 @@ struct file_operations {
 	int (*memmap)(struct cdev*, void **map, int flags);
 };
 
+#define MAX_PARTUUID_STR	sizeof("00112233-4455-6677-8899-AABBCCDDEEFF")
+
 struct cdev {
 	struct file_operations *ops;
 	void *priv;
@@ -445,6 +447,7 @@ struct cdev {
 	char *partname; /* the partition name, usually the above without the
 			 * device part, i.e. name = "nand0.barebox" -> partname = "barebox"
 			 */
+	char partuuid[MAX_PARTUUID_STR];
 	loff_t offset;
 	loff_t size;
 	unsigned int flags;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
