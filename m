Delivery-date: Mon, 02 Mar 2026 14:53:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3iB-007ItD-16
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 14:53:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx3iB-0008Cg-F1
	for lore@pengutronix.de; Mon, 02 Mar 2026 14:53:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BiA83R22FskyUqPYESS+Jc8GfqPN/HAzsu2SnVPd4no=; b=j7WcESgFaLp1Tf7kQyXrkxOOMR
	zCQb4p+hlwtl14J9TcSsCLIs1z+0PnK7arKONR59l4KqFabIq6h20jkZESCjBhq1L53bwL67koLKz
	lTfaeJEMLVjmdl/fZ9CEJz9Xw7KnFVMUXY7YIynY5GPQdEEEBGm6YRNSDUMMleQlvy4rYCeYPk50o
	XNjsQZpRViX9YfTjyVStivg95xBtYE0SSpDlkudoeXOiVWHOk5qQup/vE7q9A/lPTlc1t0P+kXbGV
	952wKGRSWgH/L0E8ZAa7zWvhecxJfVBMIWTB426juLsJOPX80KqIhOePTH/jUOqszg5FMWDO/cbh0
	d7RLufwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3ho-0000000DAID-2Tbs;
	Mon, 02 Mar 2026 13:53:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx3hl-0000000DAHF-2134
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 13:53:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vx3hj-00083H-IU; Mon, 02 Mar 2026 14:52:59 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Mar 2026 14:52:32 +0100
Message-ID: <20260302135258.197132-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_055301_522153_5AAC57BE 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] treewide: fix -Wformat-security warnings for run_command()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

run_command() is declared __printf(1, 2), so passing a non-literal
format string triggers -Wformat-security with clang. Use "%s" as the
format string at all call sites that forward a dynamic string.

Reported-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
Targetting master with the assumption that what's in next now will go
into master.
---
 commands/exec.c          | 2 +-
 commands/time.c          | 2 +-
 commands/watch.c         | 2 +-
 common/boot.c            | 2 +-
 common/fastboot.c        | 2 +-
 common/menu.c            | 2 +-
 common/menutree.c        | 2 +-
 common/parser.c          | 2 +-
 common/ratp/ratp.c       | 2 +-
 common/startup.c         | 2 +-
 common/structio.c        | 4 ++--
 fs/fs.c                  | 2 +-
 net/ifup.c               | 2 +-
 security/password.c      | 2 +-
 test/self/test_command.c | 2 +-
 15 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/commands/exec.c b/commands/exec.c
index 0b063181b247..962ba8a99eff 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -26,7 +26,7 @@ static int do_exec(int argc, char *argv[])
 		if (!script)
 			return 1;
 
-		if (run_command(script) == -1)
+		if (run_command("%s", script) == -1)
 			goto out;
 		free(script);
 	}
diff --git a/commands/time.c b/commands/time.c
index a3f270407122..350dc08ab617 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -34,7 +34,7 @@ static int do_time(int argc, char *argv[])
 
 	start = get_time_ns();
 
-	run_command(buf);
+	run_command("%s", buf);
 
 	end = get_time_ns();
 
diff --git a/commands/watch.c b/commands/watch.c
index 64b59abb107d..82a1934c074f 100644
--- a/commands/watch.c
+++ b/commands/watch.c
@@ -68,7 +68,7 @@ static int do_watch(int argc , char *argv[])
 			printf("%s\n\n", header);
 		}
 
-		run_command(cmd);
+		run_command("%s", cmd);
 
 		start = get_time_ns();
 		while (!is_timeout(start, period_ns)) {
diff --git a/common/boot.c b/common/boot.c
index 3c7f541163a1..0fa2022be1ac 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -107,7 +107,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	bootm_nattempts = bootm_command_attempts();
 
-	ret = run_command(bs->entry.path);
+	ret = run_command("%s", bs->entry.path);
 	if (ret) {
 		pr_err("Running script '%s' failed: %s\n", bs->entry.path, strerror(-ret));
 		goto out;
diff --git a/common/fastboot.c b/common/fastboot.c
index 84bda241aea1..106072c7616e 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -945,7 +945,7 @@ static void cb_oem_exec(struct fastboot *fb, const char *cmd)
 		return;
 	}
 
-	ret = run_command(cmd);
+	ret = run_command("%s", cmd);
 	if (ret < 0)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL, "%pe", ERR_PTR(ret));
 	else if (ret > 0)
diff --git a/common/menu.c b/common/menu.c
index c985f2987751..895671507796 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -466,7 +466,7 @@ static void menu_action_command(struct menu *m, struct menu_entry *me)
 	if (!s)
 		s = e->command;
 
-	ret = run_command(s);
+	ret = run_command("%s", s);
 
 	if (ret < 0)
 		udelay(1000000);
diff --git a/common/menutree.c b/common/menutree.c
index 196c2f49fa58..6370ad1f56aa 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -29,7 +29,7 @@ static void menutree_action(struct menu *m, struct menu_entry *me)
 {
 	struct menutree *mt = container_of(me, struct menutree, me);
 
-	run_command(mt->action);
+	run_command("%s", mt->action);
 }
 
 static void setenv_bool(const char *var, bool val)
diff --git a/common/parser.c b/common/parser.c
index 50e0b93e30ee..3233d06fe8a4 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -305,7 +305,7 @@ int run_shell(void)
 		if (len == -1) {
 			puts ("<INTERRUPT>\n");
 		} else {
-			const int rc = run_command(lastcommand);
+			const int rc = run_command("%s", lastcommand);
 			if (rc < 0) {
 				/* invalid command or not repeatable, forget it */
 				lastcommand[0] = 0;
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index f2735fa88531..bbed34d65021 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -329,7 +329,7 @@ static void ratp_command_run(struct work_struct *w)
 
 	pr_debug("running command: %s\n", rw->command);
 
-	ret = run_command(rw->command);
+	ret = run_command("%s", rw->command);
 
 	free(rw->command);
 	free(rw);
diff --git a/common/startup.c b/common/startup.c
index dd643182043f..2e2b5f820fe9 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -359,7 +359,7 @@ static int run_init(void)
 		path = &scr[strlen("source ")];
 		if (stat(path, &s) == 0) {
 			pr_info("Invoking '%s'...\n", path);
-			run_command(scr);
+			run_command("%s", scr);
 		}
 		free(scr);
 	}
diff --git a/common/structio.c b/common/structio.c
index 776dc1e902ab..7116617bb6ee 100644
--- a/common/structio.c
+++ b/common/structio.c
@@ -18,12 +18,12 @@ int structio_run_command(struct bobject **bret, const char *cmd)
 	int ret;
 
 	if (!bret)
-		return run_command(cmd);
+		return run_command("%s", cmd);
 
 	active_capture = bobj = bobject_alloc("capture");
 	bobj->local = true;
 
-	ret = run_command(cmd);
+	ret = run_command("%s", cmd);
 
 	active_capture = NULL;
 
diff --git a/fs/fs.c b/fs/fs.c
index 43840c3a7ace..6a73a5baa26e 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -3507,7 +3507,7 @@ static int automount_mount(struct dentry *dentry)
 
 		setenv("automount_path", am->path);
 		export("automount_path");
-		ret = run_command(am->cmd);
+		ret = run_command("%s", am->cmd);
 		unsetenv("automount_path");
 
 		if (ret) {
diff --git a/net/ifup.c b/net/ifup.c
index bd821535e8b3..9e87cfc58f7e 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -31,7 +31,7 @@ static int eth_discover(char *file)
 		goto out;
 	}
 
-	ret = run_command(file);
+	ret = run_command("%s", file);
 	if (ret) {
 		pr_err("Running '%s' failed with %d\n", file, ret);
 		goto out;
diff --git a/security/password.c b/security/password.c
index 55b2d1093ab9..8067008d5126 100644
--- a/security/password.c
+++ b/security/password.c
@@ -417,7 +417,7 @@ void login(void)
 
 		ret = password(passwd, PASSWD_MAX_LENGTH, LOGIN_MODE, login_timeout);
 		if (ret < 0)
-			run_command(login_fail_command);
+			run_command("%s", login_fail_command);
 
 		if (ret < 0)
 			continue;
diff --git a/test/self/test_command.c b/test/self/test_command.c
index 358855d0f68a..b545e5c09eb0 100644
--- a/test/self/test_command.c
+++ b/test/self/test_command.c
@@ -25,7 +25,7 @@ static void __assert_eq(const char *expr, bool result, const char *func, int lin
 
 	total_tests++;
 
-	ret = run_command(expr);
+	ret = run_command("%s", expr);
 	if ((result && ret != 0) || (!result && ret != 1)) {
 		failed_tests++;
 		printf("%s:%d: %s: assertion failure, ret=%d\n", func, line, expr, ret);
-- 
2.47.3



