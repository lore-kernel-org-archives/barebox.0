Delivery-date: Fri, 04 Apr 2025 20:24:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liE-008MH4-0x
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 20:24:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liD-0008KZ-Kj
	for lore@pengutronix.de; Fri, 04 Apr 2025 20:24:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ot1T+ROfnqGEozDHjTUU6kOfs+L/rU9lE+88b9Cd1RI=; b=esUwiyMxQRgrrYFFD66v2TRkYV
	iYg+vSsdaFxkruHVXvn/OL+ZLCoZLggiDPy+e/PdofN04IKtP8O+QpT+oVBsqSdl5qJbkiZP0OKI9
	WHpWX4JHhfx0B34E4kLv79+/z5oCtHeNWG0sLHUV2hPOuhVe4nuy/qBjQcitMJB/E9kS85c+L1oo+
	nSAihfsxHb6zoEr9r1n/0LZdSdVhDJrCtaeYYSzXRhXYdXox8vTEzdHbNBmrEKuvWH2c+uqMokb7u
	5DHXCaqcLVMrOs+r/lOy4pTZyhzGuxAcn/wZpm//S71+f+vNMXu4oYfjYS6APYMtEgQ+6TQAYJTRe
	32HCZ11Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lhn-0000000CWcv-168T;
	Fri, 04 Apr 2025 18:23:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lhk-0000000CWbX-0p29
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 18:23:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00086x-UQ; Fri, 04 Apr 2025 20:23:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-003JFT-2Q;
	Fri, 04 Apr 2025 20:23:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00CaV2-28;
	Fri, 04 Apr 2025 20:23:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 20:23:44 +0200
Message-Id: <20250404182345.2999795-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
References: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_112348_225994_8134E4DD 
X-CRM114-Status: GOOD (  14.62  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] commands: findmnt: add support for exporting target as variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This can be useful information in a script, so let's allow exporting it
into a variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig   |  3 ++-
 commands/findmnt.c | 31 ++++++++++++++++++++++++-------
 2 files changed, 26 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 313910d6649b..f36dcf02a8ea 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -690,7 +690,7 @@ config CMD_FINDMNT
 	help
 	  Find a file system
 
-	  Usage: findmnt [ DEVICE | -T FILE ]
+	  Usage: findmnt [ DEVICE | -T FILE ] [-v VARIABLE]
 
 	  findmnt will list all mounted filesystems or search
 	  for a filesystem when given the mountpoint or the
@@ -698,6 +698,7 @@ config CMD_FINDMNT
 
 	  Options:
 		-T		mount target file path
+		-v VARIABLE	export target to specified VARIABLE
 
 config CMD_PARTED
 	tristate
diff --git a/commands/findmnt.c b/commands/findmnt.c
index 3c9a520b8500..c64ef8760684 100644
--- a/commands/findmnt.c
+++ b/commands/findmnt.c
@@ -15,12 +15,18 @@ static void print_header(bool *header_printed)
 	*header_printed = true;
 }
 
-static void report_findmnt(const struct fs_device *fsdev)
+static void report_findmnt(const struct fs_device *fsdev,
+			   const char *variable)
 {
 	const char *backingstore;
 
 	backingstore = fsdev->backingstore ?: cdev_name(fsdev->cdev) ?: "none";
 
+	if (variable) {
+		cmd_export_val(variable, backingstore);
+		return;
+	}
+
 	printf("%-20s%-25s%-10s%-20s\n", fsdev->path, backingstore,
 	       fsdev->driver->drv.name, fsdev->options);
 }
@@ -31,9 +37,13 @@ static int do_findmnt(int argc, char *argv[])
 	struct fs_device *target = NULL;
 	char *device = NULL;
 	int opt, dirfd = AT_FDCWD;
+	const char *variable = NULL;
 
-	while ((opt = getopt(argc, argv, "T:")) > 0) {
+	while ((opt = getopt(argc, argv, "T:v:")) > 0) {
 		switch(opt) {
+		case 'v':
+			variable = optarg;
+			break;
 		case 'T':
 			target = get_fsdevice_by_path(dirfd, optarg);
 			if (!target)
@@ -50,9 +60,12 @@ static int do_findmnt(int argc, char *argv[])
 	if ((target && argc > 0) || (!target && argc > 1))
 		return COMMAND_ERROR_USAGE;
 
+	if (variable)
+		header_printed = true;
+
 	if (target) {
 		print_header(&header_printed);
-		report_findmnt(target);
+		report_findmnt(target, variable);
 		return 0;
 	}
 
@@ -60,13 +73,16 @@ static int do_findmnt(int argc, char *argv[])
 		device = canonicalize_path(dirfd, argv[0]);
 		if (!device)
 			return COMMAND_ERROR;
+	} else if (variable) {
+		return COMMAND_ERROR_USAGE;
 	}
 
 	for_each_fs_device(target) {
 		if (!device || streq_ptr(target->path, device) ||
 		    streq_ptr(target->backingstore, device)) {
-			print_header(&header_printed);
-			report_findmnt(target);
+			if (!variable)
+				print_header(&header_printed);
+			report_findmnt(target, variable);
 		} else {
 			const char *backingstore;
 			struct cdev *cdev;
@@ -80,7 +96,7 @@ static int do_findmnt(int argc, char *argv[])
 
 			if (streq_ptr(backingstore, cdev->name)) {
 				print_header(&header_printed);
-				report_findmnt(target);
+				report_findmnt(target, variable);
 			}
 			cdev_close(cdev);
 		}
@@ -98,12 +114,13 @@ BAREBOX_CMD_HELP_TEXT("source device as an argument")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-T",  "mount target file path")
+BAREBOX_CMD_HELP_OPT ("-v VARIABLE",  "export target to specified VARIABLE")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(findmnt)
 	.cmd		= do_findmnt,
 	BAREBOX_CMD_DESC("find a file system")
-	BAREBOX_CMD_OPTS("[ DEVICE | -T FILE ]")
+	BAREBOX_CMD_OPTS("[ DEVICE | -T FILE ] [-v VAR]")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_findmnt_help)
 BAREBOX_CMD_END
-- 
2.39.5



