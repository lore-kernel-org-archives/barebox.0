Delivery-date: Thu, 16 Jan 2025 15:12:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQbe-000coP-0D
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:12:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQbd-00038z-LL
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:12:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cGkQ/aiHTD6to8MMyghZ3v5kJAFUmsrE3IDZf4Gu0s4=; b=1HqgaXvHaxAWaxl0mu1Hswtmp4
	6Ebljp1Ccguaotkp16sKYVzcSIeOj3UnIU/JnkWRy1TqjLOUl6musD3c8SF4p+DC1CvlJY5iIrTOY
	rULg46kKvm1vb2Suc3a03CDgszMPtMW/MC3IYJVO1VT4Wfd0UXiSjebvmCnP5z1hfPpMnmUL4Verq
	m/blWyQx/7AL1Sg+hisNCIGvAPsIx+CFki1hrj0b9dZf+YGdcmIbKkzOxVMsQB2BdHYcn4uwMjaWX
	Ej2LnAJA+AhXOXJ0sD2HW78leGmQONAVuCElyOmqqk64S0/+ZkGsw8ptFP59OsvnuNxiezbKy2AIa
	W6n6GhSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQb1-0000000F7RE-3N1e;
	Thu, 16 Jan 2025 14:11:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQaM-0000000F7BC-1Eij
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:11:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQaI-0002kg-NO; Thu, 16 Jan 2025 15:10:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQaI-000Gac-1h;
	Thu, 16 Jan 2025 15:10:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQaJ-001G2n-0W;
	Thu, 16 Jan 2025 15:10:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Jan 2025 15:10:57 +0100
Message-Id: <20250116141057.299989-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_061102_334095_4347AB33 
X-CRM114-Status: GOOD (  15.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: readlink: print to stdout if variable is missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For easier interactive use during debugging or when the shell is
exercised by Labgrid, teach the readlink command to directly output to
stdout instead of an environment variable if none was specified.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig    |  6 ++++--
 commands/readlink.c | 39 +++++++++++++++++++++++++++++----------
 2 files changed, 33 insertions(+), 12 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 448a6e240cad..ecbcabd0272d 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1084,9 +1084,11 @@ config CMD_READLINK
 	help
 	  Read value of a symbolic link
 
-	  Usage: readlink [-f] FILE VARIABLE
+	  Usage: readlink [-f] FILE [VARIABLE]
 
-	  Read value of a symbolic link and store it into VARIABLE.
+	  Read value of a symbolic link or canonical file name
+	  The value is either stored it into the specified VARIABLE
+	  or printed.
 
 	  Options:
 		  -f	canonicalize by following first symlink
diff --git a/commands/readlink.c b/commands/readlink.c
index 55f8249028e1..a37b6d7512d7 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -11,9 +11,19 @@
 #include <malloc.h>
 #include <getopt.h>
 
+static void output_result(const char *var, const char *val)
+{
+	if (var)
+		setenv(var, val);
+	else
+		printf("%s\n", val);
+
+}
+
 static int do_readlink(int argc, char *argv[])
 {
-	char realname[PATH_MAX];
+	const char *var;
+	char *path, realname[PATH_MAX];
 	int canonicalize = 0;
 	int opt;
 
@@ -27,35 +37,44 @@ static int do_readlink(int argc, char *argv[])
 		}
 	}
 
-	if (argc < optind + 2)
+	argv += optind;
+	argc -= optind;
+
+	if (argc == 0 || argc > 2)
 		return COMMAND_ERROR_USAGE;
 
+	path = argv[0];
+	var = argv[1];
+
 	if (canonicalize) {
-		char *buf = canonicalize_path(AT_FDCWD, argv[optind]);
+		char *buf = canonicalize_path(AT_FDCWD, path);
 		struct stat s;
 
 		if (!buf)
 			goto err;
-		if (stat(dirname(argv[optind]), &s) || !S_ISDIR(s.st_mode)) {
+		if (stat(dirname(path), &s) || !S_ISDIR(s.st_mode)) {
 			free(buf);
 			goto err;
 		}
-		setenv(argv[optind + 1], buf);
+		output_result(var, buf);
 		free(buf);
 	} else {
-		if (readlink(argv[optind], realname, PATH_MAX - 1) < 0)
+		if (readlink(path, realname, PATH_MAX - 1) < 0)
 			goto err;
-		setenv(argv[optind + 1], realname);
+		output_result(var, realname);
 	}
 
 	return 0;
 err:
-	unsetenv(argv[optind + 1]);
+	if (var)
+		unsetenv(var);
 	return 1;
 }
 
 BAREBOX_CMD_HELP_START(readlink)
-BAREBOX_CMD_HELP_TEXT("Read value of a symbolic link or canonical file name and store it into VARIABLE.")
+BAREBOX_CMD_HELP_TEXT("Read value of a symbolic link or canonical file name")
+BAREBOX_CMD_HELP_TEXT("The value is either stored it into the specified VARIABLE")
+BAREBOX_CMD_HELP_TEXT("or printed.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-f", "canonicalize by following symlinks;")
@@ -65,7 +84,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(readlink)
 	.cmd		= do_readlink,
 	BAREBOX_CMD_DESC("read value of a symbolic link or canonical file name")
-	BAREBOX_CMD_OPTS("[-f] FILE VARIABLE")
+	BAREBOX_CMD_OPTS("[-f] FILE [VARIABLE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_readlink_help)
 BAREBOX_CMD_END
-- 
2.39.5



