Delivery-date: Mon, 26 Jan 2026 12:00:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKKb-005W77-1x
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 12:00:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKKa-0004eB-FF
	for lore@pengutronix.de; Mon, 26 Jan 2026 12:00:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UgsIZ37vH5gKIlpRuFGqzbmCT7UFKAJcNdg8KuCHfFc=; b=pCRANn/hiQKJ0e02Vv5TAZ1qiC
	gc3wwJMExsbuz/CdRmyGpOpDy/ycAVTvpoZDSNg194FPXXZEBVIc1G7ftmQzKlUw4EKm7Mizd9g5P
	NjV0yzsewabfcg1/hCKKndMpTekZXXtqZF621RiXwgSpvWfxNpcgIfTU5BYbhHRWl+QCWbPSRmPIY
	3WY6ZzOQrNQpZfjIgMBqPp9qUDdntM6Yf8RmMAoboWb8maVcyOj0Hcs3L0eQu0gbZ14hI5F+G0r0G
	v2L6O7fpborfAuL2pGzDEeahu3d19gICUOLKx+h53U1U2LxGMm6jFOaXslnaFiFqWEobJkYUmnpz8
	gcb2lrAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKK8-0000000CN7o-01Aa;
	Mon, 26 Jan 2026 11:00:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKK6-0000000CN7c-0jfL
	for barebox@bombadil.infradead.org;
	Mon, 26 Jan 2026 10:59:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=UgsIZ37vH5gKIlpRuFGqzbmCT7UFKAJcNdg8KuCHfFc=; b=fVGhghU6osskMYi2xtxQ5VdgHN
	9gKPI34tgXnx072UKPCysCzRo1aTcrCGPkaHd+BeEEOCHCFsqrOte5ivNGS3gRj8TPIDEa1xKR7+7
	JFxXcrT4afsFlXgCeQ2rjCCrguXhy+O9+dkKWSSY0L4/1rs7F2YzfJSyCwSP0eUXJouZnwPunI70D
	rhPBWWvQQoYjmXCUiJPIexlmW47hnz5UpMLfuDTxO4ACRviErkSE26FD4JpqWHRMrJx7/oSgC84yO
	KwaQqyMO7qxpWUbvlazomIDCi+fNaUu68PDPQdAOvlnvDKa4083roC2cOfXgjh0coaoFfn+HTu5Bp
	MOdEH8Sw==;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKK2-000000055hE-2akV
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:59:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKK1-0004SW-OJ; Mon, 26 Jan 2026 11:59:53 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKK2-002ZFh-0k;
	Mon, 26 Jan 2026 11:59:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKK1-0000000934w-44Fg;
	Mon, 26 Jan 2026 11:59:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 11:59:52 +0100
Message-ID: <20260126105952.2155950-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_105955_618431_E9275DE6 
X-CRM114-Status: GOOD (  18.86  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: cat: add support for concatenating into file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For testing initrd concatenation, it would be useful if barebox could
repeat the operation on the shell and then it can compare it against
the result, so add cat -o and -a options, like we already got for
echo.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/cat.c        | 76 ++++++++++++++++++++++++++++++++++---------
 test/py/test_shell.py | 32 ++++++++++++++++++
 2 files changed, 92 insertions(+), 16 deletions(-)

diff --git a/commands/cat.c b/commands/cat.c
index 503520dc64a5..aa77b19907e0 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -14,6 +14,8 @@
 #include <errno.h>
 #include <xfuncs.h>
 #include <malloc.h>
+#include <getopt.h>
+#include <libfile.h>
 
 #define BUFSIZE 1024
 
@@ -23,20 +25,46 @@
  */
 static int do_cat(int argc, char *argv[])
 {
+	const char *outfile = NULL;
 	int ret;
-	int fd, i;
+	int fd, outfd = -1, i;
 	char *buf;
 	int err = 0;
-	int args = 1;
+	int oflags = O_WRONLY | O_CREAT;
+	int opt;
 
-	if (argc < 2) {
-		perror("cat");
-		return 1;
+	while ((opt = getopt(argc, argv, "a:o:")) > 0) {
+		switch(opt) {
+		case 'a':
+			oflags |= O_APPEND;
+			outfile = optarg;
+			break;
+		case 'o':
+			oflags |= O_TRUNC;
+			outfile = optarg;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	argv += optind;
+	argc -= optind;
+
+	if (argc == 0)
+		return COMMAND_ERROR_USAGE;
+
+	if (outfile) {
+		outfd = open(outfile, oflags);
+		if (outfd < 0) {
+			perror("open");
+			return 1;
+		}
 	}
 
 	buf = xmalloc(BUFSIZE);
 
-	while (args < argc) {
+	for (int args = 0; args < argc; args++) {
 		fd = open(argv[args], O_RDONLY);
 		if (fd < 0) {
 			err = 1;
@@ -44,24 +72,36 @@ static int do_cat(int argc, char *argv[])
 			goto out;
 		}
 
-		while((ret = read(fd, buf, BUFSIZE)) > 0) {
-			for(i = 0; i < ret; i++) {
-				if (isprint(buf[i]) || buf[i] == '\n' || buf[i] == '\t')
-					putchar(buf[i]);
-				else
-					putchar('.');
-			}
-			if(ctrlc()) {
+
+		if (outfd >= 0) {
+			ret = copy_fd(fd, outfd, 0);
+			if (ret < 0) {
+				perror("copy_fd");
 				err = 1;
 				close(fd);
 				goto out;
 			}
+		} else {
+			while((ret = read(fd, buf, BUFSIZE)) > 0) {
+				for (i = 0; i < ret; i++) {
+					if (isprint(buf[i]) || buf[i] == '\n' || buf[i] == '\t')
+						putchar(buf[i]);
+					else
+						putchar('.');
+				}
+				if(ctrlc()) {
+					err = 1;
+					close(fd);
+					goto out;
+				}
+			}
 		}
+
 		close(fd);
-		args++;
 	}
 
 out:
+	close(outfd);
 	free(buf);
 
 	return err;
@@ -69,12 +109,16 @@ static int do_cat(int argc, char *argv[])
 
 BAREBOX_CMD_HELP_START(cat)
 BAREBOX_CMD_HELP_TEXT("Currently only printable characters and NL, TAB are printed.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-a FILE", "append to FILE instead of using stdout")
+BAREBOX_CMD_HELP_OPT ("-o FILE", "overwrite FILE instead of using stdout")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cat)
 	.cmd		= do_cat,
 	BAREBOX_CMD_DESC("concatenate file(s) to stdout")
-	BAREBOX_CMD_OPTS("FILE...")
+	BAREBOX_CMD_OPTS("[-ao] FILE...")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_cat_help)
 BAREBOX_CMD_END
diff --git a/test/py/test_shell.py b/test/py/test_shell.py
index 50ae497fc6c3..9010270e0e63 100644
--- a/test/py/test_shell.py
+++ b/test/py/test_shell.py
@@ -32,6 +32,38 @@ def test_shell_quoting(barebox):
     assert barebox.run_check('source /tmp/script && echo "$var"') == "A B"
 
 
+def test_barebox_echo_cat(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_ECHO", "CONFIG_CMD_CAT")
+
+    barebox.run_check('rm -f stanza*')
+
+    barebox.run_check('echo -o stanza-1 meow')
+    barebox.run_check('echo -o stanza-1 mau')
+    barebox.run_check('echo -o stanza-2 meow')
+    barebox.run_check('echo -a stanza-2 meow')
+    barebox.run_check('cat  -o stanza-3 /dev/null')
+    barebox.run_check('echo -a stanza-3 mau')
+    barebox.run_check('echo -a stanza-3 ma')
+
+    expected = ["mau", "meow", "meow", "mau", "ma"]
+
+    stdout = barebox.run_check('ls -l stanza-*')
+
+    assert len(stdout) == 3
+
+    assert barebox.run_check('cat stanza-*') == expected
+
+    barebox.run_check('rm -f stanza')
+
+    stdout = barebox.run_check('cat -o stanza stanza-*')
+    assert stdout == []
+    assert barebox.run_check('cat stanza') == expected
+
+    stdout = barebox.run_check('cat -a stanza stanza-*')
+    assert stdout == []
+    assert barebox.run_check('cat stanza') == expected + expected
+
+
 def test_barebox_md5sum(barebox, barebox_config):
     skip_disabled(barebox_config, "CONFIG_CMD_MD5SUM", "CONFIG_CMD_ECHO")
 
-- 
2.47.3



