Delivery-date: Wed, 03 Jan 2024 19:33:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL636-002Nck-0K
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62y-0003na-Qe
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UYUeG/v2ath5Q4+TLIx1sp25fwj6mkdCb1MwbVCIhiw=; b=otdFzbOea341RsxRnikAjWPhNz
	3zL2x0GDHuExwm2/HWjX9QxeKc47F46/L2papz+Ds/GIZXwO13eKbzvkB2IbvlGb3DlPCKKPlUzSS
	cOL1E5h0vcdsOKhf/ZPtwww0eR/5+uxTETOjSshBzC6HTQLQq8wL+te3ebUu7NmJEzR4c98jaFtiI
	wJ2Qp4qA4dfARIMhcjDOBp201t75A4+foTRk6b0W3+HH7/9GnueS7SGdW+vgLHnPZ+r6ta9+Nsk7v
	KWECHSIWq+avVbhQ3/AwOXBWV0gRquJNpdu62Vl9eIx2YTf4MtAXIi166DOB+8N/6noBzs4js0Ra/
	c8E7nhgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61c-00Bhhp-2Y;
	Wed, 03 Jan 2024 18:31:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL619-00BhD3-2W
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=UYUeG/v2ath5Q4+TLIx1sp25fwj6mkdCb1MwbVCIhiw=; b=gpHGXjt55VY9GMkOtE8FuRgGBQ
	y7KNsJToygEgU1XJRVSq6GCobNk5Ke+mVZ3ZKYf26ozNWAqX/fc/4DvborHRl6UjZF0vNaHRtQmSS
	QV9R2lx1viRO0dqFK4ruw+2jyBplmYhIuk3JG09Bm75CWKb/eVnKxB9BBOnDSqm8y9MI7JH9YHMSH
	yIOgGm2fvwkpAMcVb2Lvc5OcKYzthZUfwoOd1KhBQBXJr2DyvwgBjP8sbLtj3g8h1LWyYpywa/HgD
	8LhKigl4A4R1Oiv2jDnvEqCm/1DZKIkLeoslMdjsMOOCkcCDeYTctTXt6WJtkAit1hWWAyWZ7V55y
	FLJGgAGQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL611-005eC6-0E
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001St-3E; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Atp-Ma; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k2-001j4X-2J;
	Wed, 03 Jan 2024 19:13:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:59 +0100
Message-Id: <20240103181312.409668-40-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_328228_48ACA330 
X-CRM114-Status: GOOD (  21.02  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 039/112] commands: introduce new findmnt command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI loader support will need to map barebox VFS paths to fs_device and
back. Make development easier by providing a findmnt command to test
the mapping.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig   |  15 +++++++
 commands/Makefile  |   1 +
 commands/findmnt.c | 108 +++++++++++++++++++++++++++++++++++++++++++++
 fs/fs.c            |   4 +-
 include/driver.h   |   5 +++
 include/fs.h       |   2 +
 6 files changed, 132 insertions(+), 3 deletions(-)
 create mode 100644 commands/findmnt.c

diff --git a/commands/Kconfig b/commands/Kconfig
index d27c20478fcf..cd2eab801a84 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -655,6 +655,21 @@ config CMD_MOUNT
 		  -o OPTIONS	set file system OPTIONS
 		  -v		verbose
 
+config CMD_FINDMNT
+	tristate
+	prompt "findmnt"
+	help
+	  Find a file system
+
+	  Usage: findmnt [ DEVICE | -T FILE ]
+
+	  findmnt will list all mounted filesystems or search
+	  for a filesystem when given the mountpoint or the
+	  source device as an argument
+
+	  Options:
+		-T		mount target file path
+
 config CMD_UBI
 	tristate
 	default y if MTD_UBI
diff --git a/commands/Makefile b/commands/Makefile
index c8cb21a7db88..81bf5651ddc2 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -36,6 +36,7 @@ obj-$(CONFIG_CMD_RM)		+= rm.o
 obj-$(CONFIG_CMD_CAT)		+= cat.o
 obj-$(CONFIG_CMD_MOUNT)		+= mount.o
 obj-$(CONFIG_CMD_UMOUNT)	+= umount.o
+obj-$(CONFIG_CMD_FINDMNT)	+= findmnt.o
 obj-$(CONFIG_CMD_REGINFO)	+= reginfo.o
 obj-$(CONFIG_CMD_CRC)		+= crc.o
 obj-$(CONFIG_CMD_CLEAR)		+= clear.o
diff --git a/commands/findmnt.c b/commands/findmnt.c
new file mode 100644
index 000000000000..da8f58835f28
--- /dev/null
+++ b/commands/findmnt.c
@@ -0,0 +1,108 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2022 Ahmad Fatoum, Pengutronix
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <errno.h>
+#include <getopt.h>
+
+static void print_header(bool *header_printed)
+{
+	if (*header_printed)
+		return;
+	printf("%-20s%-25s%-10s%-20s\n", "TARGET", "SOURCE", "FSTYPE", "OPTIONS");
+	*header_printed = true;
+}
+
+static void report_findmnt(const struct fs_device *fsdev)
+{
+	const char *backingstore;
+
+	backingstore = fsdev->backingstore ?: cdev_name(fsdev->cdev) ?: "none";
+
+	printf("%-20s%-25s%-10s%-20s\n", fsdev->path, backingstore,
+	       fsdev->driver->drv.name, fsdev->options);
+}
+
+static int do_findmnt(int argc, char *argv[])
+{
+	bool header_printed = false;
+	struct fs_device *target = NULL;
+	char *device = NULL;
+	int opt, dirfd = AT_FDCWD;
+
+	while ((opt = getopt(argc, argv, "T:")) > 0) {
+		switch(opt) {
+		case 'T':
+			target = get_fsdevice_by_path(dirfd, optarg);
+			if (!target)
+				return COMMAND_ERROR;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if ((target && argc > 0) || (!target && argc > 1))
+		return COMMAND_ERROR_USAGE;
+
+	if (target) {
+		print_header(&header_printed);
+		report_findmnt(target);
+		return 0;
+	}
+
+	if (argv[0]) {
+		device = canonicalize_path(dirfd, argv[0]);
+		if (!device)
+			return COMMAND_ERROR;
+	}
+
+	for_each_fs_device(target) {
+		if (!device || streq_ptr(target->path, device) ||
+		    streq_ptr(target->backingstore, device)) {
+			print_header(&header_printed);
+			report_findmnt(target);
+		} else {
+			const char *backingstore;
+			struct cdev *cdev;
+
+			cdev = cdev_by_name(devpath_to_name(device));
+			if (!cdev)
+				continue;
+
+			backingstore = target->backingstore;
+			backingstore += str_has_prefix(backingstore, "/dev/");
+
+			if (streq_ptr(backingstore, cdev->name)) {
+				print_header(&header_printed);
+				report_findmnt(target);
+			}
+		}
+	}
+
+	free(device);
+
+	return header_printed ? 0 : COMMAND_ERROR;
+}
+
+BAREBOX_CMD_HELP_START(findmnt)
+BAREBOX_CMD_HELP_TEXT("findmnt will list all mounted filesystems or search")
+BAREBOX_CMD_HELP_TEXT("for a filesystem when given the mountpoint or the")
+BAREBOX_CMD_HELP_TEXT("source device as an argument")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-T",  "mount target file path")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(findmnt)
+	.cmd		= do_findmnt,
+	BAREBOX_CMD_DESC("find a file system")
+	BAREBOX_CMD_OPTS("[ DEVICE | -T FILE ]")
+	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
+	BAREBOX_CMD_HELP(cmd_findmnt_help)
+BAREBOX_CMD_END
diff --git a/fs/fs.c b/fs/fs.c
index 5f46918caafe..bd6b9f504adb 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -130,8 +130,6 @@ void cdev_print(const struct cdev *cdev)
 }
 EXPORT_SYMBOL(cdev_print);
 
-static struct fs_device *get_fsdevice_by_path(int dirfd, const char *path);
-
 void stat_print(const char *filename, const struct stat *st)
 {
 	int dirfd = AT_FDCWD;
@@ -2383,7 +2381,7 @@ static int filename_lookup(int dirfd, struct filename *name, unsigned flags,
 	return err;
 }
 
-static struct fs_device *get_fsdevice_by_path(int dirfd, const char *pathname)
+struct fs_device *get_fsdevice_by_path(int dirfd, const char *pathname)
 {
 	struct fs_device *fsdev;
 	struct path path;
diff --git a/include/driver.h b/include/driver.h
index b6fe8712837b..7a8b46ac4109 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -568,6 +568,11 @@ static inline void cdev_set_of_node(struct cdev *cdev, struct device_node *np)
 		cdev->device_node = np;
 }
 
+static inline const char *cdev_name(struct cdev *cdev)
+{
+	return cdev ? cdev->name : NULL;
+}
+
 int devfs_create(struct cdev *);
 int devfs_create_link(struct cdev *, const char *name);
 int devfs_remove(struct cdev *);
diff --git a/include/fs.h b/include/fs.h
index c4af8659b0d3..020761692cad 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -152,6 +152,8 @@ void cdev_print(const struct cdev *cdev);
 
 char *canonicalize_path(int dirfd, const char *pathname);
 
+struct fs_device *get_fsdevice_by_path(int dirfd, const char *path);
+
 char *get_mounted_path(const char *path);
 
 struct cdev *get_cdev_by_mountpath(const char *path);
-- 
2.39.2



