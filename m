Delivery-date: Wed, 31 Jul 2024 10:16:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4VG-004jvC-2s
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:16:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4VF-0005cT-Sh
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:16:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8WlDPyVYS2/Tf3jxJKtP7zLZaOFqQVCEqrzJbJavRLk=; b=YRtgmDW8ZIHKr1GVxkc2yffGun
	VL5WpWIdVg+yF3qXWAEhNburESa+PJTpqUQxLEEeKp/IH4Z5XwyLon6nA3BdWckqB5Q7hVBABeQrH
	yqNBYhNQgCuJBgIo18dffvXhdbLuXxjMBY0M43Z6mdWYPS6ugvwwIuOwY/Gj5AnJRimAadCkebMPP
	4kEoI4Q1zXXHSGTn7O/X8pd+5r8bXvoE9eRutMQPY0X8VTfyWHsbjLTuznzhLQQ7p1rgjJ/nXYf6N
	wgD+h8efvQhsMILGZ8F9UWYX8rKlQUEh8MMzjh9YWczs2yMQGChthHxt1cHhk8br1tBvhUNFRvBzB
	5hgYd6jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ud-00000000HJn-19Wi;
	Wed, 31 Jul 2024 08:15:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ua-00000000HJZ-34Px
	for barebox@bombadil.infradead.org;
	Wed, 31 Jul 2024 08:15:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8WlDPyVYS2/Tf3jxJKtP7zLZaOFqQVCEqrzJbJavRLk=; b=Q8MBqeDluNfUelM0whEkDevRVt
	VpAE+HdrrMwAeQrI4+eqQp8Y9Em989SwZSTRUTy6ikQIH4gfeo8lneYMvbAXkrLS3K1dyVdewhx+n
	0xrEkqNvPSM5SHynFYhJoNnV4TEEAfdYw8BEVWNlif6997vGQlUoSa7vE+EBeLDydARs4re55s7T8
	5PBvpWjP46ZNUijzJtvHwJQuOfw8BuzwA+zaFM8XUCwDVGucztoPi5un32kjSxsfVODZ0lmEvP0ud
	qz5D1Fh6dVgWo7HykzR78pp9flEJ0zXkP8ALSa1x8tEy5lbg9/Xls2hq+ATWu8VfTeoYSVdrnrI22
	2xchKvzg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4UX-00000005Aa5-23GF
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:15:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4UW-0005X5-LG; Wed, 31 Jul 2024 10:15:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4UW-003Tl2-82; Wed, 31 Jul 2024 10:15:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-001Wt2-11;
	Wed, 31 Jul 2024 10:05:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:10 +0200
Message-Id: <20240731080510.364706-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_091525_783998_F56C0119 
X-CRM114-Status: GOOD (  22.67  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/10] commands: blkstats: add command to print block device statistics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To test proper operations of block device operations, add a command that
prints how many sectors were read/written/erased for a device so far.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - print header only once
  - increase width of device name to 16 characters
---
 commands/Kconfig    | 11 ++++++++
 commands/Makefile   |  1 +
 commands/blkstats.c | 66 +++++++++++++++++++++++++++++++++++++++++++++
 common/Kconfig      |  3 +++
 common/block.c      | 46 +++++++++++++++++++++++++------
 include/block.h     | 10 +++++++
 6 files changed, 129 insertions(+), 8 deletions(-)
 create mode 100644 commands/blkstats.c

diff --git a/commands/Kconfig b/commands/Kconfig
index a8b7037618cc..64e834d95a8f 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -255,6 +255,17 @@ config CMD_REGINFO
 	help
 	  Print register information.
 
+config CMD_BLKSTATS
+	bool
+	depends on BLOCK
+	select BLOCK_STATS
+	prompt "blkstats command"
+	help
+	  The blkstats displays statistics about a block devices' number of
+	  sectors read, written and erased. This should only be needed for
+	  development. Saying y here will start to collect these statistics
+	  and enable a command for querying them.
+
 config CMD_REGULATOR
 	bool
 	depends on REGULATOR
diff --git a/commands/Makefile b/commands/Makefile
index a9dbead4389f..ff5d713ca72c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -125,6 +125,7 @@ obj-$(CONFIG_CMD_DRVINFO)	+= drvinfo.o
 obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
+obj-$(CONFIG_CMD_BLKSTATS)	+= blkstats.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
 obj-$(CONFIG_CMD_PM_DOMAIN)	+= pm_domain.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
diff --git a/commands/blkstats.c b/commands/blkstats.c
new file mode 100644
index 000000000000..6af9da765ebe
--- /dev/null
+++ b/commands/blkstats.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <common.h>
+#include <command.h>
+#include <block.h>
+#include <getopt.h>
+#include <fs.h>
+
+static int do_blkstats(int argc, char *argv[])
+{
+	struct block_device *blk;
+	const char *name;
+	bool first = false;
+	int opt;
+
+	while ((opt = getopt(argc, argv, "l")) > 0) {
+		switch (opt) {
+		case 'l':
+			for_each_block_device(blk) {
+				printf("%s\n", blk->cdev.name);
+			}
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	name = argv[0];
+
+	for_each_block_device(blk) {
+		struct block_device_stats *stats;
+
+		if (name && strcmp(name, blk->cdev.name))
+			continue;
+
+		if (first) {
+			printf("%-16s %10s %10s %10s\n",
+			       "Device", "Read", "Write", "Erase");
+			first = true;
+		}
+
+		stats = &blk->stats;
+
+		printf("%-16s %10llu %10llu %10llu\n", blk->cdev.name,
+		       stats->read_sectors, stats->write_sectors, stats->erase_sectors);
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(blkstats)
+BAREBOX_CMD_HELP_TEXT("Display a block device's number of read, written and erased sectors")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-l",  "list all currently registered block devices")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(blkstats)
+	.cmd		= do_blkstats,
+	BAREBOX_CMD_DESC("display block layer statistics")
+	BAREBOX_CMD_OPTS("[-l] [DEVICE]")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_HELP(cmd_blkstats_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index fea26262da86..4500feb66c92 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -41,6 +41,9 @@ config BLOCK
 config BLOCK_WRITE
 	bool
 
+config BLOCK_STATS
+	bool
+
 config FILETYPE
 	bool
 
diff --git a/common/block.c b/common/block.c
index eaec454ecbb2..3101fceea761 100644
--- a/common/block.c
+++ b/common/block.c
@@ -32,19 +32,40 @@ static int writebuffer_io_len(struct block_device *blk, struct chunk *chunk)
 	return min_t(blkcnt_t, blk->rdbufsize, blk->num_blocks - chunk->block_start);
 }
 
+#ifdef CONFIG_BLOCK_STATS
+static void blk_stats_record_read(struct block_device *blk, blkcnt_t count)
+{
+	blk->stats.read_sectors += count;
+}
+static void blk_stats_record_write(struct block_device *blk, blkcnt_t count)
+{
+	blk->stats.write_sectors += count;
+}
+static void blk_stats_record_erase(struct block_device *blk, blkcnt_t count)
+{
+	blk->stats.erase_sectors += count;
+}
+#else
+static void blk_stats_record_read(struct block_device *blk, blkcnt_t count) { }
+static void blk_stats_record_write(struct block_device *blk, blkcnt_t count) { }
+static void blk_stats_record_erase(struct block_device *blk, blkcnt_t count) { }
+#endif
+
 static int chunk_flush(struct block_device *blk, struct chunk *chunk)
 {
+	size_t len;
 	int ret;
 
 	if (!chunk->dirty)
 		return 0;
 
-	ret = blk->ops->write(blk, chunk->data,
-			      chunk->block_start,
-			      writebuffer_io_len(blk, chunk));
+	len = writebuffer_io_len(blk, chunk);
+	ret = blk->ops->write(blk, chunk->data, chunk->block_start, len);
 	if (ret < 0)
 		return ret;
 
+	blk_stats_record_write(blk, len);
+
 	chunk->dirty = 0;
 
 	return 0;
@@ -145,6 +166,7 @@ static struct chunk *get_chunk(struct block_device *blk)
 static int block_cache(struct block_device *blk, sector_t block)
 {
 	struct chunk *chunk;
+	size_t len;
 	int ret;
 
 	chunk = get_chunk(blk);
@@ -156,20 +178,22 @@ static int block_cache(struct block_device *blk, sector_t block)
 	dev_dbg(blk->dev, "%s: %llu to %d\n", __func__, chunk->block_start,
 		chunk->num);
 
+	len = writebuffer_io_len(blk, chunk);
 	if (chunk->block_start * BLOCKSIZE(blk) >= blk->discard_start &&
-	    chunk->block_start * BLOCKSIZE(blk) + writebuffer_io_len(blk, chunk)
+	    chunk->block_start * BLOCKSIZE(blk) + len
 	    <= blk->discard_start + blk->discard_size) {
-		memset(chunk->data, 0, writebuffer_io_len(blk, chunk));
+		memset(chunk->data, 0, len);
 		list_add(&chunk->list, &blk->buffered_blocks);
 		return 0;
 	}
 
-	ret = blk->ops->read(blk, chunk->data, chunk->block_start,
-			     writebuffer_io_len(blk, chunk));
+	ret = blk->ops->read(blk, chunk->data, chunk->block_start, len);
 	if (ret) {
 		list_add_tail(&chunk->list, &blk->idle_blocks);
 		return ret;
 	}
+
+	blk_stats_record_read(blk, len);
 	list_add(&chunk->list, &blk->buffered_blocks);
 
 	return 0;
@@ -402,7 +426,13 @@ static __maybe_unused int block_op_erase(struct cdev *cdev, loff_t count, loff_t
 		}
 	}
 
-	return blk->ops->erase(blk, offset, count);
+	ret = blk->ops->erase(blk, offset, count);
+	if (ret)
+		return ret;
+
+	blk_stats_record_erase(blk, count);
+
+	return 0;
 }
 
 static struct cdev_operations block_ops = {
diff --git a/include/block.h b/include/block.h
index eb319b953d32..b57d99a3fc08 100644
--- a/include/block.h
+++ b/include/block.h
@@ -31,6 +31,12 @@ enum blk_type {
 
 const char *blk_type_str(enum blk_type);
 
+struct block_device_stats {
+	blkcnt_t read_sectors;
+	blkcnt_t write_sectors;
+	blkcnt_t erase_sectors;
+};
+
 struct block_device {
 	struct device *dev;
 	struct list_head list;
@@ -50,6 +56,10 @@ struct block_device {
 	struct cdev cdev;
 
 	bool need_reparse;
+
+#ifdef CONFIG_BLOCK_STATS
+	struct block_device_stats stats;
+#endif
 };
 
 #define BLOCKSIZE(blk)	(1u << (blk)->blockbits)
-- 
2.39.2



