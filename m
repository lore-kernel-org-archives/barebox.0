Delivery-date: Mon, 26 Jan 2026 11:53:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKDa-005W0u-24
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:53:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKDZ-0003XX-0v
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:53:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NDlNXb1w50v6rkUOCm2KF/h5EQfFnQpuI63pWV5LZSc=; b=pj7xO/XWQEE9TDU7ZB5nlg0dxJ
	vgzUUnbCYOLw0aVQ8quq7kwkIHTLrrK3so1PAtNccqAR3HXfKq5UwLXgaZpkrXd5eCsx7Xtq+oH4Z
	tAJB9dlUwzCeCfDz+Q40K+kj7zq3G6C+ucoNBd1cYQblP9sfhnaoqIDWhgbTMM0XCNpkInPfPzbAH
	XY/69gEhP/xGWzh8gib8ZjpnA3FWY7//e4zogyzpuvqktlM3bek3AhZHSCmB0lALuvfh/nenivMaJ
	F2RHcJAo81Z3s8HDkdA3RmBrs5Y/iEsakC/i5wr+mXd6DS1mgX7LV4Q8b1kZhGSL1p0KNqsV8vITa
	sTjIbuCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKD3-0000000CMaD-1gjN;
	Mon, 26 Jan 2026 10:52:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKD1-0000000CMZx-3AHR
	for barebox@bombadil.infradead.org;
	Mon, 26 Jan 2026 10:52:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=NDlNXb1w50v6rkUOCm2KF/h5EQfFnQpuI63pWV5LZSc=; b=eUxmh6HEtYF/YT3hyUa0AIiXDl
	pXqgj7jjWhJl5fAMT4T1+IbPPEKqVFQySZTHQO80szQpGhq6QXwoP7RkDEXoojG/t+8l7QzaEtclh
	/PJJWbuyiVym+jLRR9nP9ITBxfkNq229pEvzYCI1l6/HeSliBEihS/bkp/uG7pFtWS+DeGyLlAon+
	y7VGSgt4oZUiKvFfsROfOVIpblJe8D+txEBJ4QKCbVpYAhVUQVKuoZHMhyesG5EAq5qZlTopSIQr3
	hgrojLYN1KqslMbVEI6kydfG8pNiYLErNPwbQzvsrWb3BPPgvcNnzL4VMUzK4P6BC5zJIEVf6D5q3
	EI20s/fA==;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKCy-000000054oM-22lt
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:52:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKCx-0003TM-JN; Mon, 26 Jan 2026 11:52:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKCx-002ZDZ-2h;
	Mon, 26 Jan 2026 11:52:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKCx-00000005nqq-2Nhp;
	Mon, 26 Jan 2026 11:52:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Ian Abbott <abbotti@mev.co.uk>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Date: Mon, 26 Jan 2026 11:52:33 +0100
Message-ID: <20260126105234.1378994-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_105236_675897_AE736EDB 
X-CRM114-Status: GOOD (  21.59  )
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
Subject: [PATCH] commands: readlink: restore support for non-existent last component
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The documentation and commit a6f379599227 ("readlink: Improve -f handling") hint
that the last component missing used to not be an error. This is not the
case currently, so restore the original behavior and add an -e option
for the current behavior of all components existing.

To ensure this doesn't regress in future, also add some AI-generated
test cases.

Cc: Ian Abbott <abbotti@mev.co.uk>
Co-developed-by: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig               |   7 +-
 commands/readlink.c            |  66 ++++++++---
 test/py/test_shell_readlink.py | 202 +++++++++++++++++++++++++++++++++
 3 files changed, 256 insertions(+), 19 deletions(-)
 create mode 100644 test/py/test_shell_readlink.py

diff --git a/commands/Kconfig b/commands/Kconfig
index 297c89b4b566..e7de951005f4 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1161,14 +1161,17 @@ config CMD_READLINK
 	help
 	  Read value of a symbolic link
 
-	  Usage: readlink [-f] FILE [VARIABLE]
+	  Usage: readlink [-fe] FILE [VARIABLE]
 
 	  Read value of a symbolic link or canonical file name
 	  The value is either stored it into the specified VARIABLE
 	  or printed.
 
 	  Options:
-		  -f	canonicalize by following first symlink
+		-f	canonicalize by following symlinks
+			final component need not exist
+		-e	canonicalize by following symlinks
+			all components must exist
 
 config CMD_RM
 	tristate
diff --git a/commands/readlink.c b/commands/readlink.c
index a37b6d7512d7..021fbaa3e08b 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -11,6 +11,8 @@
 #include <malloc.h>
 #include <getopt.h>
 
+enum can_mode { CAN_NONE, CAN_ALL_BUT_LAST, CAN_EXISTING };
+
 static void output_result(const char *var, const char *val)
 {
 	if (var)
@@ -20,20 +22,59 @@ static void output_result(const char *var, const char *val)
 
 }
 
+static int canonicalize_filename_mode(const char *var, char *path, enum can_mode can_mode)
+{
+	char *buf = NULL, *file, *dir;
+	struct stat s;
+	int ret = -1;
+
+	buf = canonicalize_path(AT_FDCWD, path);
+	if (buf)
+		goto out;
+
+	switch (can_mode) {
+	case CAN_ALL_BUT_LAST:
+		file = basename(path);
+		dir = dirname(path);
+
+		buf = canonicalize_path(AT_FDCWD, dir);
+		if (!buf || stat(dir, &s) || !S_ISDIR(s.st_mode))
+			goto err;
+
+		buf = xrasprintf(buf, "/%s", file);
+		break;
+	case CAN_EXISTING:
+	case CAN_NONE:
+		goto err;
+	}
+
+out:
+	output_result(var, buf);
+	ret = 0;
+err:
+	free(buf);
+	return ret;
+}
+
 static int do_readlink(int argc, char *argv[])
 {
 	const char *var;
 	char *path, realname[PATH_MAX];
-	int canonicalize = 0;
+	enum can_mode can_mode = CAN_NONE;
 	int opt;
 
 	memset(realname, 0, PATH_MAX);
 
-	while ((opt = getopt(argc, argv, "f")) > 0) {
+	while ((opt = getopt(argc, argv, "fe")) > 0) {
 		switch (opt) {
 		case 'f':
-			canonicalize = 1;
+			can_mode = CAN_ALL_BUT_LAST;
 			break;
+		case 'e':
+			can_mode = CAN_EXISTING;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
 		}
 	}
 
@@ -46,18 +87,9 @@ static int do_readlink(int argc, char *argv[])
 	path = argv[0];
 	var = argv[1];
 
-	if (canonicalize) {
-		char *buf = canonicalize_path(AT_FDCWD, path);
-		struct stat s;
-
-		if (!buf)
+	if (can_mode > CAN_NONE) {
+		if (canonicalize_filename_mode(var, path, can_mode))
 			goto err;
-		if (stat(dirname(path), &s) || !S_ISDIR(s.st_mode)) {
-			free(buf);
-			goto err;
-		}
-		output_result(var, buf);
-		free(buf);
 	} else {
 		if (readlink(path, realname, PATH_MAX - 1) < 0)
 			goto err;
@@ -77,14 +109,14 @@ BAREBOX_CMD_HELP_TEXT("The value is either stored it into the specified VARIABLE
 BAREBOX_CMD_HELP_TEXT("or printed.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT("-f", "canonicalize by following symlinks;")
-BAREBOX_CMD_HELP_OPT("",   "final component need not exist");
+BAREBOX_CMD_HELP_OPT("-f", "canonicalize by following symlinks; final component need not exist")
+BAREBOX_CMD_HELP_OPT("-e", "canonicalize by following symlinks; all components must exist")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(readlink)
 	.cmd		= do_readlink,
 	BAREBOX_CMD_DESC("read value of a symbolic link or canonical file name")
-	BAREBOX_CMD_OPTS("[-f] FILE [VARIABLE]")
+	BAREBOX_CMD_OPTS("[-fe] FILE [VARIABLE]")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_readlink_help)
 BAREBOX_CMD_END
diff --git a/test/py/test_shell_readlink.py b/test/py/test_shell_readlink.py
new file mode 100644
index 000000000000..ccd8ccfec421
--- /dev/null
+++ b/test/py/test_shell_readlink.py
@@ -0,0 +1,202 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+from .helper import skip_disabled
+
+
+def test_cmd_readlink(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_READLINK", "CONFIG_CMD_MKDIR")
+
+    # Create test directory structure
+    barebox.run_check('mkdir -p /tmp/readlink-test/subdir')
+    barebox.run_check('cd /tmp/readlink-test')
+
+    stdout = barebox.run_check('readlink -f .')
+    assert stdout == ["/tmp/readlink-test"]
+
+    # Test relative path resolution
+    stdout = barebox.run_check('readlink -f ./subdir')
+    assert stdout == ["/tmp/readlink-test/subdir"]
+
+    # Test with variable storage
+    stdout = barebox.run_check('readlink -f ./subdir mypath && echo $mypath')
+    assert stdout == ["/tmp/readlink-test/subdir"]
+
+    stdout = barebox.run_check('readlink -f ./subdir/something mypath && echo $mypath')
+    assert stdout == ["/tmp/readlink-test/subdir/something"]
+
+    # Test with variable storage (positional argument)
+    stdout = barebox.run_check('readlink -f subdir mypath && echo $mypath')
+    assert stdout == ["/tmp/readlink-test/subdir"]
+
+    # Test with absolute path (should return as-is)
+    stdout = barebox.run_check('readlink -f /tmp')
+    assert stdout == ["/tmp"]
+
+    # Cleanup
+    barebox.run_check('rm -r /tmp/readlink-test')
+
+
+def test_cmd_readlink_nonexistent(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_READLINK", "CONFIG_CMD_MKDIR")
+
+    # Create test directory structure
+    barebox.run_check('mkdir -p /tmp/readlink-test2/existing')
+    barebox.run_check('cd /tmp/readlink-test2')
+
+    # Test -f with non-existent final component (should work)
+    stdout = barebox.run_check('readlink -f existing/nonexistent')
+    assert stdout == ["/tmp/readlink-test2/existing/nonexistent"]
+
+    # Test -f with nested non-existent final component
+    stdout = barebox.run_check('readlink -f ./existing/also-nonexistent')
+    assert stdout == ["/tmp/readlink-test2/existing/also-nonexistent"]
+
+    # Test -e with non-existent final component (should fail)
+    _, _, returncode = barebox.run('readlink -e existing/nonexistent')
+    assert returncode != 0
+
+    # Test -e with existing component (should work)
+    stdout = barebox.run_check('readlink -e existing')
+    assert stdout == ["/tmp/readlink-test2/existing"]
+
+    # Test -f with non-existent parent directory (should fail)
+    _, _, returncode = barebox.run('readlink -f nonexistent-parent/file')
+    assert returncode != 0
+
+    # Test -e with non-existent parent directory (should fail)
+    _, _, returncode = barebox.run('readlink -e nonexistent-parent/file')
+    assert returncode != 0
+
+    # Cleanup
+    barebox.run_check('rm -r /tmp/readlink-test2')
+
+
+def test_cmd_readlink_symlinks(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_READLINK", "CONFIG_CMD_MKDIR", "CONFIG_CMD_LN", "CONFIG_CMD_ECHO")
+
+    # Create test directory structure with symlinks
+    barebox.run_check('mkdir -p /tmp/readlink-test3/real/deep')
+    barebox.run_check('cd /tmp/readlink-test3')
+    barebox.run_check('echo -o real/file.txt content')
+
+    # Create various symlinks
+    barebox.run_check('ln real link-to-real')
+    barebox.run_check('ln real/file.txt link-to-file')
+    barebox.run_check('ln link-to-real link-to-link')
+    barebox.run_check('ln nonexistent broken-link')
+
+    # Test basic readlink (no -f/-e, just read symlink value)
+    stdout = barebox.run_check('readlink link-to-real')
+    assert stdout == ["real"]
+
+    stdout = barebox.run_check('readlink link-to-file')
+    assert stdout == ["real/file.txt"]
+
+    # Test -f following single symlink
+    stdout = barebox.run_check('readlink -f link-to-real')
+    assert stdout == ["/tmp/readlink-test3/real"]
+
+    stdout = barebox.run_check('readlink -f link-to-file')
+    assert stdout == ["/tmp/readlink-test3/real/file.txt"]
+
+    # Test -f following multiple levels of symlinks
+    stdout = barebox.run_check('readlink -f link-to-link')
+    assert stdout == ["/tmp/readlink-test3/real"]
+
+    # Test -e following symlinks (should work when target exists)
+    stdout = barebox.run_check('readlink -e link-to-real')
+    assert stdout == ["/tmp/readlink-test3/real"]
+
+    stdout = barebox.run_check('readlink -e link-to-file')
+    assert stdout == ["/tmp/readlink-test3/real/file.txt"]
+
+    # Test -e with broken symlink (should fail)
+    _, _, returncode = barebox.run('readlink -e broken-link')
+    assert returncode != 0
+
+    # Test -f with broken symlink (canonicalizes the link path itself)
+    stdout = barebox.run_check('readlink -f broken-link')
+    assert stdout == ["/tmp/readlink-test3/broken-link"]
+
+    # Test -f with symlink to non-existent file in existing subdirectory
+    barebox.run_check('ln real/nonexistent link-to-nonexistent')
+    stdout = barebox.run_check('readlink -f link-to-nonexistent')
+    assert stdout == ["/tmp/readlink-test3/link-to-nonexistent"]
+
+    # Test -e with symlink to non-existent file (should fail)
+    _, _, returncode = barebox.run('readlink -e link-to-nonexistent')
+    assert returncode != 0
+
+    # Cleanup
+    barebox.run_check('rm -r /tmp/readlink-test3')
+
+
+def test_cmd_readlink_parent_refs(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_READLINK", "CONFIG_CMD_MKDIR")
+
+    # Create test directory structure
+    barebox.run_check('mkdir -p /tmp/readlink-test4/a/b/c')
+    barebox.run_check('cd /tmp/readlink-test4/a/b/c')
+
+    # Test parent directory references with -f
+    stdout = barebox.run_check('readlink -f ..')
+    assert stdout == ["/tmp/readlink-test4/a/b"]
+
+    stdout = barebox.run_check('readlink -f ../..')
+    assert stdout == ["/tmp/readlink-test4/a"]
+
+    stdout = barebox.run_check('readlink -f ../../..')
+    assert stdout == ["/tmp/readlink-test4"]
+
+    # Test parent with additional path components
+    stdout = barebox.run_check('readlink -f ../../../a/b')
+    assert stdout == ["/tmp/readlink-test4/a/b"]
+
+    # Test -f with non-existent path using parent refs
+    stdout = barebox.run_check('readlink -f ../../nonexistent')
+    assert stdout == ["/tmp/readlink-test4/a/nonexistent"]
+
+    # Test -e with parent references (existing path)
+    stdout = barebox.run_check('readlink -e ..')
+    assert stdout == ["/tmp/readlink-test4/a/b"]
+
+    # Test -e with parent references (non-existent final component)
+    _, _, returncode = barebox.run('readlink -e ../../nonexistent')
+    assert returncode != 0
+
+    # Cleanup
+    barebox.run_check('rm -r /tmp/readlink-test4')
+
+
+def test_cmd_readlink_edge_cases(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_READLINK", "CONFIG_CMD_MKDIR")
+
+    # Create test directory structure
+    barebox.run_check('mkdir -p /tmp/readlink-test5/dir')
+    barebox.run_check('cd /tmp/readlink-test5')
+
+    # Test with trailing slash on existing directory
+    stdout = barebox.run_check('readlink -f dir/')
+    assert stdout == ["/tmp/readlink-test5/dir"]
+
+    # Test with multiple slashes
+    stdout = barebox.run_check('readlink -f ./dir//subpath')
+    assert stdout == ["/tmp/readlink-test5/dir/subpath"]
+
+    # Test self-reference
+    stdout = barebox.run_check('readlink -f ./././dir')
+    assert stdout == ["/tmp/readlink-test5/dir"]
+
+    # Test -e with trailing slash on existing directory
+    stdout = barebox.run_check('readlink -e dir/')
+    assert stdout == ["/tmp/readlink-test5/dir"]
+
+    # Test absolute path that's already canonical
+    stdout = barebox.run_check('readlink -f /tmp/readlink-test5/dir')
+    assert stdout == ["/tmp/readlink-test5/dir"]
+
+    stdout = barebox.run_check('readlink -e /tmp/readlink-test5/dir')
+    assert stdout == ["/tmp/readlink-test5/dir"]
+
+    # Cleanup
+    barebox.run_check('rm -r /tmp/readlink-test5')
-- 
2.47.3



