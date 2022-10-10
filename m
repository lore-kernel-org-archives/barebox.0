Delivery-date: Mon, 10 Oct 2022 08:45:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmXh-0034wA-Be
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 08:45:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmXe-0005Us-Qn
	for lore@pengutronix.de; Mon, 10 Oct 2022 08:45:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z1hd6zGm/iyINO1Nq/JI7RdGFcpPVp3ASLIMSAxKlWc=; b=CWLH4r2uQTVCqsZHAqtD5czscj
	WbeBH+lKkpCts7yI08f6RmVurZ1+eDzgtFf6puzQBEgx4Sqfbnz8ziYUsDj/YzO33MNKevmizwfEN
	zoE9T3xU27FzeKSioFSUy8t80iVqei3txC27hc5xepV+m93N4fLjc4JsZ24cjRmh7ZwvtMf8ne+JC
	IrRZ9VrY/DoRfAHuu0RLyvG/FSVsy36QICMmxY9g+KrDsPc1csmoVcLvv1W93NdEWKbt+9HSuincX
	IpGxE/QObXOZ5v9HQUnyjJa9QOrzpc2NIjKC9A4msXUSUYlgaaVvUFP3u1ZyC3mbXa+nHm+MsJSKV
	OWBOl4pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmWM-00HGN8-Vu; Mon, 10 Oct 2022 06:44:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmWI-00HGMS-3b
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 06:44:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmWG-0005NQ-7T; Mon, 10 Oct 2022 08:44:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmWF-000dd0-HF; Mon, 10 Oct 2022 08:44:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ohmWE-008tSy-SC; Mon, 10 Oct 2022 08:44:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 10 Oct 2022 08:43:58 +0200
Message-Id: <20221010064358.2119629-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_234410_333321_29A007A7 
X-CRM114-Status: GOOD (  20.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: add new stat command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have a couple of commands to help with debugging the VFS:
ll, devinfo, devlookup, but we lack a command that can just dump all
information we have in a struct stat or struct cdev. Add stat as such a
command. For most uses, it's not needed, but it can come in handy for
development. The stat_print and cdev_print functions underlying it are
exported, so they can called for debugging purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  |  14 +++++++
 commands/Makefile |   1 +
 commands/stat.c   |  62 ++++++++++++++++++++++++++++
 fs/fs.c           | 100 +++++++++++++++++++++++++++++++++++++++++++++-
 include/fs.h      |   3 ++
 5 files changed, 179 insertions(+), 1 deletion(-)
 create mode 100644 commands/stat.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 3e21dc4c0500..a561a474b404 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -939,6 +939,20 @@ config CMD_LS
 		  -C	column format (opposite of long format)
 		  -R	list subdirectories recursively
 
+config CMD_STAT
+	tristate
+	prompt "stat"
+	select PRINTF_UUID
+	help
+	  Display file status
+
+	  Usage: stat [-L] [FILEDIR...]
+
+	  Display status information about the specified files or directories.
+
+	  Options:
+		  -L	follow symlinks
+
 config CMD_MD5SUM
 	tristate
 	select COMPILE_HASH
diff --git a/commands/Makefile b/commands/Makefile
index 0aae8893d696..7e304e40771b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -26,6 +26,7 @@ obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
 obj-$(CONFIG_CMD_GO)		+= go.o
 obj-$(CONFIG_CMD_PARTITION)	+= partition.o
 obj-$(CONFIG_CMD_LS)		+= ls.o
+obj-$(CONFIG_CMD_STAT)		+= stat.o
 obj-$(CONFIG_CMD_CD)		+= cd.o
 obj-$(CONFIG_CMD_PWD)		+= pwd.o
 obj-$(CONFIG_CMD_MKDIR)		+= mkdir.o
diff --git a/commands/stat.c b/commands/stat.c
new file mode 100644
index 000000000000..53c22c53aef1
--- /dev/null
+++ b/commands/stat.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2022 Ahmad Fatoum, Pengutronix
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <linux/stat.h>
+#include <errno.h>
+#include <malloc.h>
+#include <getopt.h>
+#include <stringlist.h>
+
+static int do_stat(int argc, char *argv[])
+{
+	int (*statfn)(const char *, struct stat *) = stat;
+	int ret, opt, exitcode = 0;
+	char **filename;
+	struct stat st;
+
+	while((opt = getopt(argc, argv, "L")) > 0) {
+		switch(opt) {
+		case 'L':
+			statfn = lstat;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (optind == argc)
+		return COMMAND_ERROR_USAGE;
+
+	for (filename = &argv[optind]; *filename; filename++) {
+		ret = statfn(*filename, &st);
+
+		if (ret) {
+			printf("%s: %s: %m\n", argv[0], *filename);
+			exitcode = COMMAND_ERROR;
+			continue;
+		}
+
+		stat_print(*filename, &st);
+	}
+
+	return exitcode;
+}
+
+BAREBOX_CMD_HELP_START(stat)
+BAREBOX_CMD_HELP_TEXT("Display status information about the specified files")
+BAREBOX_CMD_HELP_TEXT("or directories.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-L",  "follow links")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(stat)
+	.cmd		= do_stat,
+	BAREBOX_CMD_DESC("display file status")
+	BAREBOX_CMD_OPTS("[-L] [FILEDIR...]")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_stat_help)
+BAREBOX_CMD_END
diff --git a/fs/fs.c b/fs/fs.c
index 6583e0a6e9b3..0dcc28669e8c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -67,6 +67,105 @@ char *mkmodestr(unsigned long mode, char *str)
 }
 EXPORT_SYMBOL(mkmodestr);
 
+void cdev_print(const struct cdev *cdev)
+{
+	bool uuid_set;
+
+	if (cdev->dev || cdev->master || cdev->partname) {
+		printf("Origin: %s", dev_name(cdev->dev) ?: "None");
+		if (cdev->master)
+			printf("\tMaster: %s", cdev->master->name);
+		if (cdev->partname)
+			printf("\tPartition: %s", cdev->partname);
+		printf("\n");
+	}
+	printf("Ocount: %d\tFlags: 0x%02x", cdev->open, cdev->flags);
+	if (cdev->flags) {
+		printf(" (");
+		if (cdev->flags & DEVFS_IS_CHARACTER_DEV)
+			printf(" cdev");
+		if (cdev->flags & DEVFS_PARTITION_FIXED)
+			printf(" fixed-partition");
+		if (cdev->flags & DEVFS_PARTITION_READONLY)
+			printf(" readonly-partition");
+		if (cdev->flags & DEVFS_PARTITION_FROM_TABLE)
+			printf(" table-partition");
+		if (cdev->flags & DEVFS_IS_MCI_MAIN_PART_DEV)
+			printf(" mci-main-partition");
+		if (cdev->mtd)
+			printf(" mtd");
+		printf(" )");
+	}
+	printf("\n");
+
+	uuid_set = memchr_inv(cdev->uuid, 0x00 ,sizeof(cdev->uuid));
+	if (cdev->filetype || cdev->dos_partition_type || uuid_set) {
+		if (cdev->filetype)
+			printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
+		if (cdev->dos_partition_type)
+			printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
+		if (uuid_set)
+			printf("UUID: %pUl", cdev->uuid);
+		printf("\n");
+	}
+}
+EXPORT_SYMBOL(cdev_print);
+
+static struct fs_device_d *get_fsdevice_by_path(const char *path);
+
+void stat_print(const char *filename, const struct stat *st)
+{
+	struct block_device *bdev = NULL;
+	struct fs_device_d *fdev;
+	struct cdev *cdev = NULL;
+	const char *type = NULL;
+	char modestr[11];
+
+	mkmodestr(st->st_mode, modestr);
+
+	switch (st->st_mode & S_IFMT) {
+		case S_IFDIR:    type = "directory"; break;
+		case S_IFBLK:    type = "block special file"; break;
+		case S_IFCHR:    type = "character special file"; break;
+		case S_IFIFO:    type = "fifo"; break;
+		case S_IFLNK:    type = "symbolic link"; break;
+		case S_IFSOCK:   type = "socket"; break;
+		case S_IFREG:    type = "regular file"; break;
+	}
+
+	printf("  File: %s\n", filename);
+
+	if (st->st_mode & S_IFCHR) {
+		const char *devicefile;
+
+		devicefile = devpath_to_name(filename);
+
+		cdev = cdev_by_name(devicefile);
+		if (cdev)
+			bdev = cdev_get_block_device(cdev);
+	}
+
+	printf("  Size: %-20llu", st->st_size);
+	if (bdev)
+		printf("Blocks: %llu\tIO Block: %u\t",
+		       (u64)bdev->num_blocks, 1 << bdev->blockbits);
+
+	if (type)
+		printf("  %s", type);
+
+	fdev = get_fsdevice_by_path(filename);
+
+	printf("\nDevice: %s\tInode: %lu\tLinks: %u\n",
+	       fdev ? dev_name(&fdev->dev) : "<unknown>",
+	       st->st_ino, st->st_nlink);
+	printf("Access: (%04o/%s)\tUid: (%u)\tGid: (%u)\n",
+	       st->st_mode & 07777, modestr, st->st_uid, st->st_gid);
+
+	if (cdev)
+		cdev_print(cdev);
+}
+EXPORT_SYMBOL(stat_print);
+
 static char *cwd;
 static struct dentry *cwd_dentry;
 static struct vfsmount *cwd_mnt;
@@ -91,7 +190,6 @@ postcore_initcall(init_fs);
 
 struct filename;
 
-static struct fs_device_d *get_fsdevice_by_path(const char *path);
 static int filename_lookup(struct filename *name, unsigned flags,
 			   struct path *path);;
 static struct filename *getname(const char *filename);
diff --git a/include/fs.h b/include/fs.h
index 894cae3e4c2f..e82b3d8ceb6a 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -147,6 +147,9 @@ int ls(const char *path, ulong flags);
 
 char *mkmodestr(unsigned long mode, char *str);
 
+void stat_print(const char *filename, const struct stat *st);
+void cdev_print(const struct cdev *cdev);
+
 char *canonicalize_path(const char *pathname);
 
 char *get_mounted_path(const char *path);
-- 
2.30.2



