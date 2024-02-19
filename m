Delivery-date: Mon, 19 Feb 2024 09:36:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz8B-00E4Ta-1l
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 09:36:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rbz8A-00046T-9t
	for lore@pengutronix.de; Mon, 19 Feb 2024 09:36:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BnRCwPA36kuYWaP/BzVgvN96YSs6M5g9dmxTiAIDnaM=; b=oDqLRX5QlHyzaxLUjHqUt3HHXm
	W8FHbBuAwDRxOGBGjT1J14w4P0BJmAnLLnn4c0+HED+kqVvrSsHxch9lw6DG/EXMknmK94aMPZ7Ru
	mldcv1QE6bWyXrdX845bgbNou6BWBgSikyes3XkXouwt4flCZ5HOjUArxFzBiRtrSpOF84CbqpUaG
	1fJR2NJup2t6c1Y9FT1sUZCtm7T43sB4MNUo0GW/DJguXrMi2HHOmhgokcCOfJycygLccSM8X3TAw
	Gqiyku/tqPp2f1ZOAByqEN8kwX7IBbciux/ZAZyRslxWuaPyYclGuoaG1YAafabp6ATVA+jj0jPZO
	7XHik/PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz7o-00000009bgM-2OeJ;
	Mon, 19 Feb 2024 08:35:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbz7i-00000009bdB-1UL9
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 08:35:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz7h-0003vM-7S; Mon, 19 Feb 2024 09:35:37 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz7g-001boc-Qu; Mon, 19 Feb 2024 09:35:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rbz3u-00CNCk-19;
	Mon, 19 Feb 2024 09:31:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 19 Feb 2024 09:31:40 +0100
Message-Id: <20240219083140.2713047-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219083140.2713047-1-s.hauer@pengutronix.de>
References: <20240219083140.2713047-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_003538_772526_B4BEB683 
X-CRM114-Status: GOOD (  28.95  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 12/12] commands: add parted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a parted command which behaves pretty much like the GNU parted
program. Unlike other partition manipulation programs parted has a quite
convenient command line API suitable for scripting. The tool supports
these commands:

print    - print a partition table
mklabel  - create a new partition table
rm       - remove a partition
mkpart   - create a partition
unit     - change input/display units
refresh  - refresh a partition table (barebox specific)

Multiple commands can be given on a single call so that a full partition
table including partitions can be created with a single command.
Examples include:

Print a partition table:

$ parted mmc0 print

create a new partition table:

$ parted mmc0 mklabel gpt

create a new partition table and add a partition beginning at offset
1MiB ending at offset 128MiB:

$ parted mmc0 mklabel gpt mkpart rootfs ext4 1MiB 128MiB

The same, using KiB as unit and printing the result at the end:

$ parted mmc0 unit KiB mklabel gpt mkpart rootfs ext4 1024 131072 print

The "refresh" command is barebox specific and is useful when for example
the alternate GPT is missing. This happens when an image is written.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig  |  21 +++
 commands/Makefile |   2 +-
 commands/parted.c | 374 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 396 insertions(+), 1 deletion(-)
 create mode 100644 commands/parted.c

diff --git a/commands/Kconfig b/commands/Kconfig
index a6806f198e..819fb80411 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -655,6 +655,27 @@ config CMD_MOUNT
 		  -o OPTIONS	set file system OPTIONS
 		  -v		verbose
 
+config CMD_PARTED
+	tristate
+	depends on PARTITION
+	select PARTITION_MANIPULATION
+	prompt "parted"
+	help
+	  parted - edit partition tables
+
+	  Usage: parted <device> [command [options...]...]
+
+	  parted is a partition manipulation program with a behaviour similar to
+	  GNU Parted
+
+	  commands:
+	         print   print partitions
+	         mklabel <type>  create a new partition table
+	         rm <num>        remove a partition
+	         mkpart <name> <fstype> <start> <end>    create a new partition
+	         unit <unit>     change display/input units
+	         refresh refresh a partition table
+
 config CMD_UBI
 	tristate
 	default y if MTD_UBI
diff --git a/commands/Makefile b/commands/Makefile
index 4924755500..b311410276 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -146,5 +146,5 @@ obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
 obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
 obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
-
+obj-$(CONFIG_CMD_PARTED)	+= parted.o
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/parted.c b/commands/parted.c
new file mode 100644
index 0000000000..02bb1cff0c
--- /dev/null
+++ b/commands/parted.c
@@ -0,0 +1,374 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <command.h>
+#include <block.h>
+#include <getopt.h>
+#include <fcntl.h>
+#include <disks.h>
+#include <linux/sizes.h>
+#include <partitions.h>
+#include <linux/math64.h>
+
+static struct partition_desc *gpdesc;
+static bool table_needs_write;
+static const char *gunit_str = "KiB";
+static uint64_t gunit = 1024;
+
+struct unit {
+	const char *str;
+	uint64_t size;
+};
+
+static struct unit units[] = {
+	{ .str = "B", .size = 1 },
+	{ .str = "s", .size = 512 },
+	{ .str = "KiB", .size = SZ_1K },
+	{ .str = "MiB", .size = SZ_1M },
+	{ .str = "GiB", .size = SZ_1G },
+	{ .str = "TiB", .size = SZ_1T },
+	{ .str = "KB", .size = 1000ULL },
+	{ .str = "MB", .size = 1000ULL * 1000 },
+	{ .str = "GB", .size = 1000ULL * 1000 * 1000 },
+	{ .str = "TB", .size = 1000ULL * 1000 * 1000 * 1000 },
+	{ .str = "k", .size = SZ_1K },
+	{ .str = "K", .size = SZ_1K },
+	{ .str = "M", .size = SZ_1M },
+	{ .str = "G", .size = SZ_1G },
+};
+
+static int parted_strtoull(const char *str, uint64_t *val, uint64_t *mult)
+{
+	char *end;
+	int i;
+
+	*val = simple_strtoull(str, &end, 0);
+
+	if (!*end) {
+		*mult = 0;
+		return 0;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(units); i++) {
+		if (!strcmp(end, units[i].str)) {
+			*mult = units[i].size;
+			return 0;
+		}
+	}
+
+	printf("Error: Cannot read \"%s\" as number\n", str);
+
+	return -EINVAL;
+}
+
+static struct partition_desc *pdesc_get(struct block_device *blk)
+{
+	if (gpdesc)
+		return gpdesc;
+
+	gpdesc = partition_table_read(blk);
+	if (!gpdesc) {
+		printf("Cannot read partition table\n");
+		return NULL;
+	}
+
+	return gpdesc;
+}
+
+static int do_unit(struct block_device *blk, int argc, char *argv[])
+{
+	int i;
+
+	if (argc < 2) {
+		printf("Error: missing unit\n");
+		return -EINVAL;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(units); i++) {
+		if (!strcmp(units[i].str, argv[1])) {
+			gunit_str = units[i].str;
+			gunit = units[i].size;
+			return 2;
+		}
+	}
+
+	printf("invalid unit: %s\n", argv[1]);
+
+	return -EINVAL;
+}
+
+static int do_print(struct block_device *blk, int argc, char *argv[])
+{
+	struct partition_desc *pdesc;
+	struct partition *part;
+
+	pdesc = pdesc_get(blk);
+	if (!pdesc) {
+		printf("Error: Cannot get partition table from %s\n", blk->cdev.name);
+		return -EINVAL;
+	}
+
+	printf("Disk /dev/%s: %s\n", blk->cdev.name,
+	       size_human_readable(blk->num_blocks << SECTOR_SHIFT));
+	printf("Partition Table: %s\n", pdesc->parser->name);
+
+	printf("Number      Start           End          Size     Name\n");
+
+	list_for_each_entry(part, &pdesc->partitions, list) {
+		uint64_t start = part->first_sec << SECTOR_SHIFT;
+		uint64_t size = part->size << SECTOR_SHIFT;
+		uint64_t end = start + size - SECTOR_SIZE;
+
+		printf(" %3d   %10llu%-3s %10llu%-3s %10llu%-3s  %-36s\n",
+			part->num,
+			div64_u64(start, gunit), gunit_str,
+			div64_u64(end, gunit), gunit_str,
+			div64_u64(size, gunit), gunit_str,
+			part->name);
+	}
+
+	return 1;
+}
+
+static int do_mkpart(struct block_device *blk, int argc, char *argv[])
+{
+	struct partition_desc *pdesc;
+	uint64_t start, end;
+	const char *name, *fs_type;
+	int ret;
+	uint64_t mult;
+
+	if (argc < 5) {
+		printf("Error: Missing required arguments\n");
+		return -EINVAL;
+	}
+
+	name = argv[1];
+	fs_type = argv[2];
+
+	ret = parted_strtoull(argv[3], &start, &mult);
+	if (ret)
+		return ret;
+
+	ret = parted_strtoull(argv[4], &end, &mult);
+	if (ret)
+		return ret;
+
+	if (!mult)
+		mult = gunit;
+
+	start *= mult;
+	end *= mult;
+
+	/* If not on sector boundaries move start up and end down */
+	start = ALIGN(start, SECTOR_SIZE);
+	end = ALIGN_DOWN(end, SECTOR_SIZE);
+
+	/* convert to LBA */
+	start >>= SECTOR_SHIFT;
+	end >>= SECTOR_SHIFT;
+
+	/*
+	 * When unit is >= KB then substract one sector for user convenience.
+	 * It allows to start the next partition where the previous ends
+	 */
+	if (mult >= 1000)
+		end -= 1;
+
+	pdesc = pdesc_get(blk);
+	if (!pdesc)
+		return -EINVAL;
+
+	ret = partition_create(pdesc, name, fs_type, start, end);
+
+	if (!ret)
+		table_needs_write = true;
+
+	return ret < 0 ? ret : 5;
+}
+
+static int do_rmpart(struct block_device *blk, int argc, char *argv[])
+{
+	struct partition_desc *pdesc;
+	unsigned long num;
+	int ret;
+
+	if (argc < 2) {
+		printf("Error: Expecting a partition number.\n");
+		return -EINVAL;
+	}
+
+	ret = kstrtoul(argv[1], 0, &num);
+	if (ret)
+		return ret;
+
+	pdesc = pdesc_get(blk);
+	if (!pdesc)
+		return -EINVAL;
+
+	ret = partition_remove(pdesc, num);
+	if (ret)
+		return ret;
+
+	table_needs_write = true;
+
+	return 2;
+}
+
+static int do_mklabel(struct block_device *blk, int argc, char *argv[])
+{
+	struct partition_desc *pdesc;
+
+	if (argc < 2) {
+		printf("Error: Expecting a disk label type.\n");
+		return -EINVAL;
+	}
+
+	pdesc = partition_table_new(blk, argv[1]);
+	if (IS_ERR(pdesc)) {
+		printf("Error: Cannot create partition table: %pe\n", pdesc);
+		return PTR_ERR(pdesc);
+	}
+
+	table_needs_write = true;
+
+	if (gpdesc)
+		partition_table_free(gpdesc);
+	gpdesc = pdesc;
+
+	return 2;
+}
+
+static int do_refresh(struct block_device *blk, int argc, char *argv[])
+{
+	struct partition_desc *pdesc;
+
+	pdesc = pdesc_get(blk);
+	if (!pdesc)
+		return -EINVAL;
+
+	table_needs_write = true;
+
+	return 1;
+}
+
+struct parted_command {
+	const char *name;
+	int (*command)(struct block_device *blk, int argc, char *argv[]);
+};
+
+struct parted_command parted_commands[] = {
+	{
+		.name = "mkpart",
+		.command = do_mkpart,
+	}, {
+		.name = "print",
+		.command = do_print,
+	}, {
+		.name = "rm",
+		.command = do_rmpart,
+	}, {
+		.name = "mklabel",
+		.command = do_mklabel,
+	}, {
+		.name = "unit",
+		.command = do_unit,
+	}, {
+		.name = "refresh",
+		.command = do_refresh,
+	},
+};
+
+static int parted_run_command(struct block_device *blk, int argc, char *argv[])
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(parted_commands); i++) {
+		struct parted_command *cmd = &parted_commands[i];
+
+		if (!strcmp(argv[0], cmd->name))
+			return cmd->command(blk, argc, argv);
+	}
+
+	printf("No such command: %s\n", argv[0]);
+
+	return COMMAND_ERROR;
+}
+
+static int do_parted(int argc, char *argv[])
+{
+	struct cdev *cdev;
+	struct block_device *blk;
+	int ret = 0;
+
+	table_needs_write = false;
+	gpdesc = NULL;
+
+	if (argc < 3)
+		return COMMAND_ERROR_USAGE;
+
+	cdev = cdev_open_by_name(argv[1], O_RDWR);
+	if (!cdev) {
+		printf("Cannot open %s\n", argv[1]);
+		return COMMAND_ERROR;
+	}
+
+	blk = cdev_get_block_device(cdev);
+	if (!blk) {
+		ret = -EINVAL;
+		goto err;
+	}
+
+	argc -= 2;
+	argv += 2;
+
+	while (argc) {
+		debug("---> run command %s\n", argv[0]);
+		ret = parted_run_command(blk, argc, argv);
+		if (ret < 0)
+			break;
+
+		argc -= ret;
+		argv += ret;
+
+		ret = 0;
+	}
+
+	if (!ret && gpdesc && table_needs_write)
+		ret = partition_table_write(gpdesc);
+
+err:
+	if (gpdesc)
+		partition_table_free(gpdesc);
+
+	cdev_close(cdev);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(parted)
+BAREBOX_CMD_HELP_TEXT("parted is a partition manipulation program with a behaviour similar to")
+BAREBOX_CMD_HELP_TEXT("GNU Parted")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("commands:")
+BAREBOX_CMD_HELP_OPT ("print", "print partitions")
+BAREBOX_CMD_HELP_OPT ("mklabel <type>", "create a new partition table")
+BAREBOX_CMD_HELP_OPT ("rm <num>", "remove a partition")
+BAREBOX_CMD_HELP_OPT ("mkpart <name> <fstype> <start> <end>", "create a new partition")
+BAREBOX_CMD_HELP_OPT ("unit <unit>", "change display/input units")
+BAREBOX_CMD_HELP_OPT ("refresh", "refresh a partition table")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("<unit> can be one of \"s\" (sectors), \"B\" (bytes), \"kB\", \"MB\", \"GB\", \"TB\",")
+BAREBOX_CMD_HELP_TEXT("\"KiB\", \"MiB\", \"GiB\" or \"TiB\"")
+BAREBOX_CMD_HELP_TEXT("<type> must be \"gpt\"")
+BAREBOX_CMD_HELP_TEXT("<fstype> can be one of  \"ext2\", \"ext3\", \"ext4\", \"fat16\" or \"fat32\"")
+BAREBOX_CMD_HELP_TEXT("<name> for MBR partition tables can be one of \"primary\", \"extended\" or")
+BAREBOX_CMD_HELP_TEXT("\"logical\". For GPT this is a name string.")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(parted)
+	.cmd            = do_parted,
+	BAREBOX_CMD_DESC("edit partition tables")
+	BAREBOX_CMD_OPTS("<device> [command [options...]...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_parted_help)
+BAREBOX_CMD_END
-- 
2.39.2



