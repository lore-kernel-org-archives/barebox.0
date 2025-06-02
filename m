Delivery-date: Mon, 02 Jun 2025 15:29:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E7-002yV2-0O
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 15:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM5E6-0007dy-0H
	for lore@pengutronix.de; Mon, 02 Jun 2025 15:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CzFwOuvxdGdkwfpkRnB8Ls2Bwv8aUJ0RflR+pRGZeTI=; b=uAjNKhcg5b3EbS8YyqHckUtQ3G
	2scy7Oay9jIVHQj1AOJur+SPrLT13O0Kgqn/UYUyWcV6F8OKICtB083usVQ5PcB2iOkjn0Tcze4+v
	9bodOCOd3oAe6XTs92V7j4zhZ4XJLLaLv8iQT11qnFmi4qGIHw0kd9wiZ+nWRMB9iaNSTpPFqInGZ
	T4/02ABbCwzm7XSf8aHZdaec49QV6CStn69DwEYEP/oOGcCh4klcgUuUAvmmzq1A94s7q1Zqi7os/
	jCNooVPk9VU85IxEQB8cNmgs5W2s7GSuz58/wMsVsr+XvMv+22egp4ZADFIAhwvxtc7IxrFsZ/UPl
	So4R1WhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5De-00000007Swh-3GnJ;
	Mon, 02 Jun 2025 13:28:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM5Da-00000007StO-0Y4p
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 13:28:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DR-0007AG-04; Mon, 02 Jun 2025 15:28:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-001Slq-2T;
	Mon, 02 Jun 2025 15:28:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uM5DQ-009BwG-2A;
	Mon, 02 Jun 2025 15:28:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 02 Jun 2025 15:28:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250602-createnv-v1-4-c3239ff875d5@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
In-Reply-To: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748870916; l=7246;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3FnDNr9rZrE45frmEu3+l+D4sMbEATK30j0QJ24ZPqg=;
 b=kRJNDjnumGbpddyteDxmLETg4RXdI92AgnmRzgQxAvepJXqoJ/g8o6zA8FsTeUpN3Ph5ZvtW5
 izgkfveEs9BCQ4gxgDJFKV5xbEho8fO0nm1KuPmeRJrYy/91ziQOuCO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_062846_341736_FAA5281C 
X-CRM114-Status: GOOD (  22.12  )
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
Subject: [PATCH 4/5] commands: create createnv command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We want to move away from describing the barebox environment explicitly
in the device tree and instead motivate usage of GPT partitions for the
envrionment. This patch creates a createnv command to facilitate this.
It creates an environment partition on the specified device and if
necessary also a GPT partition table. In the simplest case a "createnv"
without arguments will create a partition on the device barebox itself
booted from. Both the device and the size of the partition can be
specified on the command line.

We can't create environment partitions on a device containing a MBR
partition table, so a MBR partitioned device won't be touched.

As an additional safety net the command will ask the user if altering
the partition table is really desired. This behaviour can be overwritten
by specifying -f on the command line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig    |  18 ++++++
 commands/Makefile   |   1 +
 commands/createnv.c | 179 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 198 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index 0f3155d123ab6eebd6a8b4585ff8c496318c9efe..27a935d4d2e55f0384a28ab1d8718c0cf90fb746 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -771,6 +771,24 @@ endmenu
 
 menu "Environment"
 
+config CMD_CREATENV
+	tristate
+	depends on PARTITION_DISK_EFI
+	select PARTITION_MANIPULATION
+	prompt "createnv"
+	help
+	  createnv - Create a barebox environment partition
+
+	  Usage: createnv [-sf] [device]
+
+	  Create a barebox environment partition.
+	  This creates a barebox environment partition and eventually
+	  a GPT partition table when it does not exist.
+
+	  Options:
+		-s <size>       specify partition size (default 1MiB)
+		-f      force. Do not ask
+
 config CMD_NV
 	depends on NVVAR
 	tristate
diff --git a/commands/Makefile b/commands/Makefile
index 8c2749b5ebddb5ef22691d2007f556af195b432b..2780a26dc2daf86ebdc11011fed0849bafaa982a 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -157,6 +157,7 @@ obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
 obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
+obj-$(CONFIG_CMD_CREATENV)	+= createnv.o
 obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
 obj-$(CONFIG_CMD_PARTED)	+= parted.o
 obj-$(CONFIG_CMD_EFI_HANDLE_DUMP)	+= efi_handle_dump.o
diff --git a/commands/createnv.c b/commands/createnv.c
new file mode 100644
index 0000000000000000000000000000000000000000..df03664be11251165287bd2291d09bee7408f553
--- /dev/null
+++ b/commands/createnv.c
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <command.h>
+#include <malloc.h>
+#include <stdlib.h>
+#include <partitions.h>
+#include <driver.h>
+#include <disks.h>
+#include <xfuncs.h>
+#include <getopt.h>
+#include <efi/partition.h>
+#include <bootsource.h>
+#include <linux/kstrtox.h>
+#include <fcntl.h>
+#include <stdio.h>
+#include <envfs.h>
+
+static int do_createnv(int argc, char *argv[])
+{
+	uint64_t start, size = SZ_1M;
+	struct cdev *cdev;
+	struct block_device *blk;
+	struct partition *part;
+	struct partition_desc *pdesc = NULL;
+	enum filetype filetype;
+	guid_t partition_barebox_env_guid = PARTITION_BAREBOX_ENVIRONMENT_GUID;
+	void *buf = NULL;
+	bool force = false;
+	int opt, ret;
+
+	while ((opt = getopt(argc, argv, "s:f")) > 0) {
+		switch (opt) {
+		case 's':
+			size = strtoull_suffix(optarg, NULL, 0);
+			break;
+		case 'f':
+			force = true;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+        }
+
+	argc -= optind;
+	argv += optind;
+
+	if (argc < 1) {
+		cdev = bootsource_of_cdev_find();
+		if (!cdev) {
+			printf("Cannot find bootsource cdev\n");
+			return COMMAND_ERROR;
+		}
+		ret = cdev_open(cdev, O_RDWR);
+		if (ret) {
+			printf("Cannot open %s: %pe\n", cdev->name, ERR_PTR(ret));
+			return COMMAND_ERROR;
+		}
+	} else {
+		cdev = cdev_open_by_path_name(argv[0], O_RDWR);
+		if (!cdev) {
+			printf("Cannot open %s\n", argv[0]);
+			return COMMAND_ERROR;
+		}
+	}
+
+	blk = cdev_get_block_device(cdev);
+	if (!blk) {
+		ret = -ENOENT;
+		goto err;
+	}
+
+	buf = xzalloc(2 * SECTOR_SIZE);
+
+	ret = cdev_read(cdev, buf, 2 * SECTOR_SIZE, 0, 0);
+	if (ret < 0) {
+		printf("Cannot read from %s: %pe\n", cdev->name, ERR_PTR(ret));
+		goto err;
+	}
+
+	filetype = file_detect_partition_table(buf, 2 * SECTOR_SIZE);
+
+	switch (filetype) {
+	case filetype_gpt:
+		pdesc = partition_table_read(blk);
+		if (!pdesc) {
+			printf("Cannot read partition table\n");
+			ret = -EINVAL;
+			goto err;
+		}
+		break;
+	case filetype_mbr:
+		printf("%s contains a DOS partition table. Cannot create a barebox environment here\n",
+		       cdev->name);
+		ret = -EINVAL;
+		goto err;
+	default:
+		printf("Will create a GPT on %s\n", cdev->name);
+		pdesc = partition_table_new(blk, "gpt");
+		break;
+	}
+
+	list_for_each_entry(part, &pdesc->partitions, list) {
+		if (guid_equal(&part->typeuuid, &partition_barebox_env_guid)) {
+			printf("%s already contains a barebox environment partition\n",
+			       cdev->name);
+			ret = -EINVAL;
+			goto err;
+		}
+	}
+
+	size >>= SECTOR_SHIFT;
+
+	ret = partition_find_free_space(pdesc, size, &start);
+	if (ret) {
+		printf("No free space available\n");
+		goto err;
+	}
+
+	ret = partition_create(pdesc, "barebox-environment", "bbenv", start, start + size - 1);
+	if (ret) {
+		printf("Creating partition failed: %pe\n", ERR_PTR(ret));
+		goto err;
+	}
+
+	printf("Will create a barebox environment partition of size %llu bytes on %s\n",
+	       size << SECTOR_SHIFT, cdev->name);
+
+	if (!force) {
+		char c;
+
+		printf("Do you wish to continue? (y/n)\n");
+
+		c = getchar();
+		if (c != 'y') {
+			ret = -EINTR;
+			goto err;
+		}
+	}
+
+	ret = partition_table_write(pdesc);
+	if (ret) {
+		printf("Cannot write partition table: %pe\n", ERR_PTR(ret));
+		goto err;
+	}
+
+	if (!default_environment_path_get()) {
+		char *path = xasprintf("/dev/%s.barebox-environment", cdev->name);
+		default_environment_path_set(path);
+		free(path);
+	}
+
+	printf("Created barebox environment partition on %s\n", cdev->name);
+
+	ret = 0;
+err:
+	if (pdesc)
+		partition_table_free(pdesc);
+
+	free(buf);
+	cdev_close(cdev);
+
+	return ret ? COMMAND_ERROR : 0;
+}
+
+BAREBOX_CMD_HELP_START(createnv)
+BAREBOX_CMD_HELP_TEXT("Create a barebox environment partition.")
+BAREBOX_CMD_HELP_TEXT("This creates a barebox environment partition and eventually")
+BAREBOX_CMD_HELP_TEXT("a GPT partition table when it does not exist.")
+BAREBOX_CMD_HELP_OPT("-s <size>", "specify partition size (default 1MiB)")
+BAREBOX_CMD_HELP_OPT("-f\t", "force. Do not ask")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(createnv)
+        .cmd            = do_createnv,
+        BAREBOX_CMD_DESC("Create a barebox environment partition")
+        BAREBOX_CMD_OPTS("[-sf] [device]")
+        BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+        BAREBOX_CMD_HELP(cmd_createnv_help)
+BAREBOX_CMD_END

-- 
2.39.5



