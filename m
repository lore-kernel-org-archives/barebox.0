Delivery-date: Mon, 04 Mar 2024 20:04:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDc5-008d78-0i
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:04:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDc4-0008ET-Cq
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NLuMeNlscje/MZOftnd8NkgjKKd+hlSz/7ZJm8NxKLA=; b=0UIkH1SJoJ1g39sGhomgD57uIf
	V3PqvSJG3JOf4QFenhPNNJ/+5fL5jmsb4Ad5V10cOASXaAkirE1IgKfN5LJd6OTymkYQLsTXNSuej
	vXDIbQ3/wH7UEYsPAxKp3kA90DpEnCIj98jQx9E7TRedRnvjkaG05dSJSPdkAZIQuUZg0f4WHh8Ho
	egUi32HQ8+YWmF/A2inOuLjXdQtMi1CpV/LxCSRvF5ca8z8NArwlCOJMEsdGYbDAsZaHNi/FLITq3
	2rPDTDgK4T9U0qq/3IYPn863Fu2p1wTMhWMGrfwEBAARBrIJ+oQzEgmT8ukCAQhBaYWLoh5DbV6IN
	qz22Zzeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDbR-0000000AJDZ-2971;
	Mon, 04 Mar 2024 19:03:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaE-0000000AIHR-2LBB
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-0005yE-9H; Mon, 04 Mar 2024 20:02:41 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaC-004PGP-Rl; Mon, 04 Mar 2024 20:02:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-3D;
	Mon, 04 Mar 2024 20:00:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:28 +0100
Message-Id: <20240304190038.3486881-44-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_110242_995887_B9B4168B 
X-CRM114-Status: GOOD (  15.34  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 043/113] commands: stat: add option for statat
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The stat command is a debugging aid for developing the VFS, so it makes
sense to add support for dirfd, so they can be tested interactively.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig |  6 ++++--
 commands/stat.c  | 26 +++++++++++++++++++-------
 fs/fs.c          |  5 ++---
 include/fs.h     |  2 +-
 4 files changed, 26 insertions(+), 13 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 9df3c67d930d..269d2432b45e 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1011,12 +1011,14 @@ config CMD_STAT
 	help
 	  Display file status
 
-	  Usage: stat [-L] [FILEDIR...]
+	  Usage: stat [-LcC] [FILEDIR...]
 
 	  Display status information about the specified files or directories.
 
 	  Options:
-		  -L	follow symlinks
+		  -L		follow symlinks
+		  -c DIR	lookup file relative to directory DIR
+		  -C DIR	change root to DIR before file lookup
 
 config CMD_MD5SUM
 	tristate
diff --git a/commands/stat.c b/commands/stat.c
index 153eac50f1fa..10662005cdda 100644
--- a/commands/stat.c
+++ b/commands/stat.c
@@ -12,15 +12,23 @@
 
 static int do_stat(int argc, char *argv[])
 {
-	int (*statfn)(const char *, struct stat *) = lstat;
-	int ret, opt, exitcode = 0;
+	int (*statfn)(int dirfd, const char *, struct stat *) = lstatat;
+	int ret, opt, dirfd = AT_FDCWD, extra_flags = 0, exitcode = 0;
 	char **filename;
 	struct stat st;
 
-	while((opt = getopt(argc, argv, "L")) > 0) {
+	while((opt = getopt(argc, argv, "Lc:C:")) > 0) {
 		switch(opt) {
 		case 'L':
-			statfn = stat;
+			statfn = statat;
+			break;
+		case 'C':
+			extra_flags |= O_CHROOT;
+			fallthrough;
+		case 'c':
+			dirfd = open(optarg, O_PATH | extra_flags);
+			if (dirfd < 0)
+				return dirfd;
 			break;
 		default:
 			return COMMAND_ERROR_USAGE;
@@ -31,7 +39,7 @@ static int do_stat(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	for (filename = &argv[optind]; *filename; filename++) {
-		ret = statfn(*filename, &st);
+		ret = statfn(dirfd, *filename, &st);
 
 		if (ret) {
 			printf("%s: %s: %m\n", argv[0], *filename);
@@ -39,9 +47,11 @@ static int do_stat(int argc, char *argv[])
 			continue;
 		}
 
-		stat_print(*filename, &st);
+		stat_print(dirfd, *filename, &st);
 	}
 
+	close(dirfd);
+
 	return exitcode;
 }
 
@@ -51,12 +61,14 @@ BAREBOX_CMD_HELP_TEXT("or directories.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-L",  "follow links")
+BAREBOX_CMD_HELP_OPT ("-c DIR",  "lookup file relative to directory DIR")
+BAREBOX_CMD_HELP_OPT ("-C DIR",  "change root to DIR before file lookup")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(stat)
 	.cmd		= do_stat,
 	BAREBOX_CMD_DESC("display file status")
-	BAREBOX_CMD_OPTS("[-L] [FILEDIR...]")
+	BAREBOX_CMD_OPTS("[-LcC] [FILEDIR...]")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_stat_help)
 BAREBOX_CMD_END
diff --git a/fs/fs.c b/fs/fs.c
index fa1d01d892dc..3bd476713595 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -130,9 +130,8 @@ void cdev_print(const struct cdev *cdev)
 }
 EXPORT_SYMBOL(cdev_print);
 
-void stat_print(const char *filename, const struct stat *st)
+void stat_print(int dirfd, const char *filename, const struct stat *st)
 {
-	int dirfd = AT_FDCWD;
 	struct block_device *bdev = NULL;
 	struct fs_device *fdev;
 	struct cdev *cdev = NULL;
@@ -177,7 +176,7 @@ void stat_print(const char *filename, const struct stat *st)
 		char realname[PATH_MAX] = {};
 		int ret;
 
-		ret = readlink(filename, realname, PATH_MAX - 1);
+		ret = readlinkat(dirfd, filename, realname, PATH_MAX - 1);
 		if (ret)
 			printf(" -> <readlink error %pe>", ERR_PTR(ret));
 		else
diff --git a/include/fs.h b/include/fs.h
index 020761692cad..70903142e89b 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -147,7 +147,7 @@ int ls(const char *path, ulong flags);
 
 char *mkmodestr(unsigned long mode, char *str);
 
-void stat_print(const char *filename, const struct stat *st);
+void stat_print(int dirfd, const char *filename, const struct stat *st);
 void cdev_print(const struct cdev *cdev);
 
 char *canonicalize_path(int dirfd, const char *pathname);
-- 
2.39.2



