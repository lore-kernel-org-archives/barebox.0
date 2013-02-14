Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U67Yl-0006jD-6V
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 22:45:46 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C120EFF8F56
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 00:00:29 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 14 Feb 2013 23:44:32 +0100
Message-Id: <1360881873-1599-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360881873-1599-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130214224222.GX19322@game.jcrosoft.org>
 <1360881873-1599-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] disk: introduce partition name
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

so we can register partion with name as present in EFI GPT

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/partitions.c        |   54 ++++++++++++++++++++++++++++++++++----------
 common/partitions/parser.h |    2 ++
 2 files changed, 44 insertions(+), 12 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 9ab06d3..86b0f66 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -44,15 +44,43 @@ LIST_HEAD(partition_parser_list);
 static int register_one_partition(struct block_device *blk,
 					struct partition *part, int no)
 {
-	char partition_name[19];
+	char *partition_name;
+	int ret;
+	uint64_t start = part->first_sec * SECTOR_SIZE;
+	uint64_t size = part->size * SECTOR_SIZE;
+
+	partition_name = asprintf("%s.%d", blk->cdev.name, no);
+	if (!partition_name)
+		return -ENOMEM;
+	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
+				partition_name, blk->cdev.name);
+	ret = devfs_add_partition(blk->cdev.name,
+				start, size, 0, partition_name);
+	if (ret)
+		goto out;
+
+	free(partition_name);
+
+	if (!part->name[0])
+		return 0;
+
+	partition_name = asprintf("%s.%s", blk->cdev.name, part->name);
+	if (!partition_name)
+		return -ENOMEM;
 
-	sprintf(partition_name, "%s.%d", blk->cdev.name, no);
 	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
 				partition_name, blk->cdev.name);
-	return devfs_add_partition(blk->cdev.name,
-				part->first_sec * SECTOR_SIZE,
-				part->size * SECTOR_SIZE,
-				0, partition_name);
+	ret = devfs_add_partition(blk->cdev.name,
+				start, size, 0, partition_name);
+
+	if (ret)
+		dev_warn(blk->dev, "Registering partition %s on drive %s failled\n",
+				partition_name, blk->cdev.name);
+
+	ret = 0;
+out:
+	free(partition_name);
+	return 0;
 }
 
 static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
@@ -79,12 +107,13 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
  */
 int parse_partition_table(struct block_device *blk)
 {
-	struct partition_desc pdesc = { .used_entries = 0, };
+	struct partition_desc *pdesc;
 	int i;
 	int rc = 0;
 	struct partition_parser *parser;
 	uint8_t *buf;
 
+	pdesc = xzalloc(sizeof(*pdesc));
 	buf = dma_alloc(SECTOR_SIZE * 2);
 
 	rc = blk->ops->read(blk, buf, 0, 2);
@@ -97,14 +126,14 @@ int parse_partition_table(struct block_device *blk)
 	if (!parser)
 		goto on_error;
 
-	parser->parse(buf, blk, &pdesc);
+	parser->parse(buf, blk, pdesc);
 
-	if (!pdesc.used_entries)
-		return 0;
+	if (!pdesc->used_entries)
+		goto on_error;
 
 	/* at least one partition description found */
-	for (i = 0; i < pdesc.used_entries; i++) {
-		rc = register_one_partition(blk, &pdesc.parts[i], i);
+	for (i = 0; i < pdesc->used_entries; i++) {
+		rc = register_one_partition(blk, &pdesc->parts[i], i);
 		if (rc != 0)
 			dev_err(blk->dev,
 				"Failed to register partition %d on %s (%d)\n",
@@ -115,6 +144,7 @@ int parse_partition_table(struct block_device *blk)
 
 on_error:
 	dma_free(buf);
+	free(pdesc);
 	return rc;
 }
 
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
index 13506c0..f5bdbd1 100644
--- a/common/partitions/parser.h
+++ b/common/partitions/parser.h
@@ -12,8 +12,10 @@
 #include <linux/list.h>
 
 #define MAX_PARTITION		8
+#define MAX_PARTITION_NAME	38
 
 struct partition {
+	char name[MAX_PARTITION_NAME];
 	uint64_t first_sec;
 	uint64_t size;
 };
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
