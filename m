Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6182-0006EN-1f
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 15:53:43 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0D56B1011C01
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 17:04:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 14 Feb 2013 16:52:25 +0100
Message-Id: <1360857147-489-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130214154759.GT19322@game.jcrosoft.org>
 <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] partitons: add framework
To: barebox@lists.infradead.org
Cc: Rob Herring <rob.herring@calxeda.com>

so we can support multiple format

use filetpye to detect the parser to use

Cc: Rob Herring <rob.herring@calxeda.com>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig             |   14 +----
 common/Makefile            |    2 +-
 common/partitions.c        |  132 +++++++++++++++-----------------------------
 common/partitions/Makefile |    1 +
 common/partitions/dos.c    |   87 +++++++++++++++++++++++++++++
 common/partitions/parser.h |   35 ++++++++++++
 6 files changed, 171 insertions(+), 100 deletions(-)
 create mode 100644 common/partitions/Makefile
 create mode 100644 common/partitions/dos.c
 create mode 100644 common/partitions/parser.h

diff --git a/common/Kconfig b/common/Kconfig
index 3f6c11e..3a55e01 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -478,19 +478,7 @@ config PARTITION
 	bool
 	prompt "Enable Partitions"
 
-config PARTITION_DISK
-	depends on PARTITION
-	bool "DISK partition support"
-	help
-	  Add support for handling common partition tables on all kind of disk
-	  like devices (harddisks, CF cards, SD cards and so on)
-
-config PARTITION_DISK_DOS
-	depends on PARTITION_DISK
-	default y
-	bool "DOS partition support"
-	help
-	  Add support to handle partitions in DOS style.
+source common/partitions/Kconfig
 
 config DEFAULT_ENVIRONMENT
 	bool
diff --git a/common/Makefile b/common/Makefile
index 7206eed..b264cb8 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -7,7 +7,7 @@ obj-$(CONFIG_ENV_HANDLING)	+= environment.o
 obj-$(CONFIG_AUTO_COMPLETE)	+= complete.o
 obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
-obj-$(CONFIG_PARTITION_DISK)	+= partitions.o
+obj-$(CONFIG_PARTITION_DISK)	+= partitions.o partitions/
 
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
 obj-$(CONFIG_OFTREE)		+= oftree.o
diff --git a/common/partitions.c b/common/partitions.c
index 24310a3..7cb8399 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -27,92 +27,12 @@
 #include <block.h>
 #include <asm/unaligned.h>
 #include <disks.h>
-#include <dma.h>
 #include <filetype.h>
+#include <dma.h>
 
-struct partition {
-	uint64_t first_sec;
-	uint64_t size;
-};
-
-struct partition_desc {
-	int used_entries;
-	struct partition parts[8];
-};
-
-/**
- * Guess the size of the disk, based on the partition table entries
- * @param dev device to create partitions for
- * @param table partition table
- * @return sector count
- */
-static int disk_guess_size(struct device_d *dev, struct partition_entry *table)
-{
-	uint64_t size = 0;
-	int i;
-
-	for (i = 0; i < 4; i++) {
-		if (table[i].partition_start != 0) {
-			size += get_unaligned_le32(&table[i].partition_start) - size;
-			size += get_unaligned_le32(&table[i].partition_size);
-		}
-	}
-
-	return (int)size;
-}
-
-/**
- * Check if a DOS like partition describes this block device
- * @param blk Block device to register to
- * @param pd Where to store the partition information
- *
- * It seems at least on ARM this routine canot use temp. stack space for the
- * sector. So, keep the malloc/free.
- */
-static void __maybe_unused try_dos_partition(struct block_device *blk,
-						struct partition_desc *pd)
-{
-	uint8_t *buffer;
-	struct partition_entry *table;
-	struct partition pentry;
-	int i, rc;
-
-	buffer = dma_alloc(SECTOR_SIZE);
-
-	/* read in the MBR to get the partition table */
-	rc = blk->ops->read(blk, buffer, 0, 1);
-	if (rc != 0) {
-		dev_err(blk->dev, "Cannot read MBR/partition table\n");
-		goto on_error;
-	}
-
-	if (is_fat_or_mbr(buffer, NULL) != filetype_mbr) {
-		dev_info(blk->dev, "No partition table found\n");
-		goto on_error;
-	}
-
-	table = (struct partition_entry *)&buffer[446];
-
-	/* valid for x86 BIOS based disks only */
-	if (IS_ENABLED(CONFIG_DISK_BIOS) && blk->num_blocks == 0)
-		blk->num_blocks = disk_guess_size(blk->dev, table);
-
-	for (i = 0; i < 4; i++) {
-		pentry.first_sec = get_unaligned_le32(&table[i].partition_start);
-		pentry.size = get_unaligned_le32(&table[i].partition_size);
+#include "partitions/parser.h"
 
-		if (pentry.first_sec != 0) {
-			pd->parts[pd->used_entries].first_sec = pentry.first_sec;
-			pd->parts[pd->used_entries].size = pentry.size;
-			pd->used_entries++;
-		} else {
-			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
-		}
-	}
-
-on_error:
-	dma_free(buffer);
-}
+LIST_HEAD(partition_parser_list);
 
 /**
  * Register one partition on the given block device
@@ -135,6 +55,21 @@ static int register_one_partition(struct block_device *blk,
 				0, partition_name);
 }
 
+static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
+{
+	enum filetype type;
+	struct partition_parser *parser;
+
+	type = file_detect_type(buf, SECTOR_SIZE * 2);
+
+	list_for_each_entry(parser, &partition_parser_list, list) {
+		if (parser->type == type)
+			return parser;
+	}
+
+	return NULL;
+}
+
 /**
  * Try to collect partition information on the given block device
  * @param blk Block device to examine
@@ -147,10 +82,23 @@ int parse_partition_table(struct block_device *blk)
 	struct partition_desc pdesc = { .used_entries = 0, };
 	int i;
 	int rc = 0;
+	struct partition_parser *parser;
+	uint8_t *buf;
+
+	buf = dma_alloc(SECTOR_SIZE * 2);
+
+	rc = blk->ops->read(blk, buf, 0, 2);
+	if (rc != 0) {
+		dev_err(blk->dev, "Cannot read MBR/partition table\n");
+		goto on_error;
+	}
+
+	parser = partition_parser_get_by_filetype(buf);
+	if (!parser)
+		goto on_error;
+
+	parser->parse(buf, blk, &pdesc);
 
-#ifdef CONFIG_PARTITION_DISK_DOS
-	try_dos_partition(blk, &pdesc);
-#endif
 	if (!pdesc.used_entries)
 		return 0;
 
@@ -165,5 +113,17 @@ int parse_partition_table(struct block_device *blk)
 			rc = 0;
 	}
 
+on_error:
+	dma_free(buf);
 	return rc;
 }
+
+int partition_parser_register(struct partition_parser *p)
+{
+	if (!p || !p->parse)
+		return -EINVAL;
+
+	list_add_tail(&p->list, &partition_parser_list);
+
+	return 0;
+}
diff --git a/common/partitions/Makefile b/common/partitions/Makefile
new file mode 100644
index 0000000..0a5c70d
--- /dev/null
+++ b/common/partitions/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_PARTITION_DISK_DOS)	+= dos.o
diff --git a/common/partitions/dos.c b/common/partitions/dos.c
new file mode 100644
index 0000000..2078864
--- /dev/null
+++ b/common/partitions/dos.c
@@ -0,0 +1,87 @@
+/*
+ * Copyright (C) 2009...2011 Juergen Beisert, Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <disks.h>
+#include <init.h>
+#include <asm/unaligned.h>
+
+#include "parser.h"
+
+/**
+ * Guess the size of the disk, based on the partition table entries
+ * @param dev device to create partitions for
+ * @param table partition table
+ * @return sector count
+ */
+static int disk_guess_size(struct device_d *dev, struct partition_entry *table)
+{
+	uint64_t size = 0;
+	int i;
+
+	for (i = 0; i < 4; i++) {
+		if (table[i].partition_start != 0) {
+			size += get_unaligned_le32(&table[i].partition_start) - size;
+			size += get_unaligned_le32(&table[i].partition_size);
+		}
+	}
+
+	return (int)size;
+}
+
+/**
+ * Check if a DOS like partition describes this block device
+ * @param blk Block device to register to
+ * @param pd Where to store the partition information
+ *
+ * It seems at least on ARM this routine canot use temp. stack space for the
+ * sector. So, keep the malloc/free.
+ */
+static void dos_partition(uint8_t *buffer, struct block_device *blk,
+			  struct partition_desc *pd)
+{
+	struct partition_entry *table;
+	struct partition pentry;
+	int i;
+
+	table = (struct partition_entry *)&buffer[446];
+
+	/* valid for x86 BIOS based disks only */
+	if (IS_ENABLED(CONFIG_DISK_BIOS) && blk->num_blocks == 0)
+		blk->num_blocks = disk_guess_size(blk->dev, table);
+
+	for (i = 0; i < 4; i++) {
+		pentry.first_sec = get_unaligned_le32(&table[i].partition_start);
+		pentry.size = get_unaligned_le32(&table[i].partition_size);
+
+		if (pentry.first_sec != 0) {
+			pd->parts[pd->used_entries].first_sec = pentry.first_sec;
+			pd->parts[pd->used_entries].size = pentry.size;
+			pd->used_entries++;
+		} else {
+			dev_dbg(blk->dev, "Skipping empty partition %d\n", i);
+		}
+	}
+}
+
+struct partition_parser dos = {
+	.parse = dos_partition,
+	.type = filetype_mbr,
+};
+
+static int dos_partition_init(void)
+{
+	return partition_parser_register(&dos);
+}
+postconsole_initcall(dos_partition_init);
diff --git a/common/partitions/parser.h b/common/partitions/parser.h
new file mode 100644
index 0000000..61b1cf5
--- /dev/null
+++ b/common/partitions/parser.h
@@ -0,0 +1,35 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#ifndef __PARTITIONS_PARSER_H__
+#define __PARTITIONS_PARSER_H__
+
+#include <block.h>
+#include <filetype.h>
+#include <linux/list.h>
+
+#define MAX_PARTITION		8
+
+struct partition {
+	uint64_t first_sec;
+	uint64_t size;
+};
+
+struct partition_desc {
+	int used_entries;
+	struct partition parts[MAX_PARTITION];
+};
+
+struct partition_parser {
+	void (*parse)(uint8_t *buf, struct block_device *blk, struct partition_desc *pd);
+	enum filetype type;
+
+	struct list_head list;
+};
+
+int partition_parser_register(struct partition_parser *p);
+
+#endif /* __PARTITIONS_PARSER_H__ */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
