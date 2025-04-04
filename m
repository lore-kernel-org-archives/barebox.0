Delivery-date: Fri, 04 Apr 2025 20:15:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0lZT-008M6L-1d
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 20:15:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0lZS-00078s-SX
	for lore@pengutronix.de; Fri, 04 Apr 2025 20:15:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZKTXWmjcfj0/WZhLmRwL3Mbifp0VtXAK/syrcmGNNwc=; b=DtlNw0i8l25XXt0b2i7YOdMX4f
	CUfyUh24Y7yjVmoWvo7NDMtwsCIiu2DYA3AA4uO/OmXpY0K6x22CJYjfg5sR55fsKP6GImkz0ZxQT
	EGg5YD/CeRagbBWwV+znXPGuvJSE4XpTIpbIMSCX1ohgzMxwvhrZHmDKYcXG8Fipb2x2OYzjJFpdv
	rrO+JrB3Bnl3BHm/z/+SOdy+GfnKJcsZlh/rqBdJWikjr3pGcNQ6f6fa4EWaP3fbDO41R///QX2HG
	mfwsf3APwmYllt1e2tkxqvm5lSOtQO6sC0VF+fCEirVVURIwOZbIX7zIUEdETetQJXvEou6hGFDrf
	DgYdudvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lYs-0000000CVSM-2r00;
	Fri, 04 Apr 2025 18:14:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lRG-0000000CUYh-2Wgw
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 18:06:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lRE-00068q-Nu; Fri, 04 Apr 2025 20:06:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lRE-003J25-1m;
	Fri, 04 Apr 2025 20:06:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lRE-00CSZc-1U;
	Fri, 04 Apr 2025 20:06:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 20:06:40 +0200
Message-Id: <20250404180640.2962778-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250404180640.2962778-1-a.fatoum@pengutronix.de>
References: <20250404180640.2962778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_110646_649494_FD43D88A 
X-CRM114-Status: GOOD (  16.28  )
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
Subject: [PATCH 3/3] commands: findmnt: add option to print kernel root option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There exists currently no way to view the kernel root option that
barebox would generate when instructed to via global.bootm.root_dev,
but without actually mounting the file system.

Add a new -K option that can print this. This can be useful in scripts
that want to fixup the root line, so it's interpreted by the rdinit, but
not by the kernel.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig   |  3 ++-
 commands/findmnt.c | 29 ++++++++++++++++++++++++++---
 2 files changed, 28 insertions(+), 4 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index f36dcf02a8ea..58e0a8b0bfe4 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -690,7 +690,7 @@ config CMD_FINDMNT
 	help
 	  Find a file system
 
-	  Usage: findmnt [ DEVICE | -T FILE ] [-v VARIABLE]
+	  Usage: findmnt [-K] [ DEVICE | -T FILE ] [-v VARIABLE]
 
 	  findmnt will list all mounted filesystems or search
 	  for a filesystem when given the mountpoint or the
@@ -699,6 +699,7 @@ config CMD_FINDMNT
 	  Options:
 		-T		mount target file path
 		-v VARIABLE	export target to specified VARIABLE
+		-K		output kernel rootarg line
 
 config CMD_PARTED
 	tristate
diff --git a/commands/findmnt.c b/commands/findmnt.c
index c64ef8760684..21868fcc0e56 100644
--- a/commands/findmnt.c
+++ b/commands/findmnt.c
@@ -6,6 +6,7 @@
 #include <fs.h>
 #include <errno.h>
 #include <getopt.h>
+#include <block.h>
 
 static void print_header(bool *header_printed)
 {
@@ -38,9 +39,13 @@ static int do_findmnt(int argc, char *argv[])
 	char *device = NULL;
 	int opt, dirfd = AT_FDCWD;
 	const char *variable = NULL;
+	bool kernelopt = false;
 
-	while ((opt = getopt(argc, argv, "T:v:")) > 0) {
+	while ((opt = getopt(argc, argv, "KT:v:")) > 0) {
 		switch(opt) {
+		case 'K':
+			kernelopt = true;
+			break;
 		case 'v':
 			variable = optarg;
 			break;
@@ -57,7 +62,8 @@ static int do_findmnt(int argc, char *argv[])
 	argv += optind;
 	argc -= optind;
 
-	if ((target && argc > 0) || (!target && argc > 1))
+	if ((target && argc > 0) || (!target && argc > 1) ||
+	    (target && kernelopt) || (kernelopt && argc != 1))
 		return COMMAND_ERROR_USAGE;
 
 	if (variable)
@@ -77,6 +83,22 @@ static int do_findmnt(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 	}
 
+	if (kernelopt) {
+		struct cdev *cdev;
+		char *root_arg;
+		int ret;
+
+		cdev = cdev_open_by_name(device, O_RDONLY);
+		if (!cdev)
+			return COMMAND_ERROR;;
+
+		root_arg = cdev_get_linux_rootarg(cdev);
+		ret = cmd_export_val(variable, root_arg);
+		free(root_arg);
+
+		return ret;
+	}
+
 	for_each_fs_device(target) {
 		if (!device || streq_ptr(target->path, device) ||
 		    streq_ptr(target->backingstore, device)) {
@@ -115,12 +137,13 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-T",  "mount target file path")
 BAREBOX_CMD_HELP_OPT ("-v VARIABLE",  "export target to specified VARIABLE")
+BAREBOX_CMD_HELP_OPT ("-K",  "output kernel rootarg line")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(findmnt)
 	.cmd		= do_findmnt,
 	BAREBOX_CMD_DESC("find a file system")
-	BAREBOX_CMD_OPTS("[ DEVICE | -T FILE ] [-v VAR]")
+	BAREBOX_CMD_OPTS("[-K] [ DEVICE | -T FILE ] [-v VAR]")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_findmnt_help)
 BAREBOX_CMD_END
-- 
2.39.5



