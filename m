Delivery-date: Tue, 20 Jan 2026 13:28:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAq4-003NvH-1B
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:28:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAq3-0006V6-92
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:28:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1/fqpn5H+Q8dzMTnGqjafkrcOJG7mswNPFs86H++yZA=; b=S/Kn0aL6Wh2WmAvXxH9mtYjaXO
	DRolSX9b3DftjiyXDb37o6hs5vBS63qlZyLut+qZJ586aaOTOot27VzUG9fgTsb81kubK7qFTO1yV
	nvrrmlfBPg/ADD8NvMeIjHSab6s4rqWCD7DPANU36Zbdnk68zfMNpUaDYTopfTUSzUEgFjvOUBp/h
	rQENxs+6jMeqauny06L/OFQC6Qe7aTqQh1BoRVdlzfo/duInv9W2kbNubJgv8dQ0OBVcdm1Uk54r0
	5b5x9dMzVy3VYsV8HcJz0OBL35oHmA9d3ADrL1zL8tnhQtliqzkWRaNX8i56rfT5oIV/VkzXTf9jP
	Ciro2glw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApe-00000003pyb-1cQ3;
	Tue, 20 Jan 2026 12:27:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApc-00000003pyI-48Od
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:27:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=1/fqpn5H+Q8dzMTnGqjafkrcOJG7mswNPFs86H++yZA=; b=Qs87Q9ABDUQNpjJ5q1qSN9GAAd
	6qj8q3gO9j5rh6cmYyur5vlXDZPYwk9mBNdg67ss7BLx+Bw9EPhl/dvFczP44NWa3pWf7E2X24Pjx
	ZC/EbVNm78ecuwDO7rj0m9X6cDDz3yw48sEkOlEBgo0djxZJSo00M88oXQ0ZIWKFYb5L/noUAdoKj
	DobDJvZ1+m8NxxHu1d8YifT+n2h6i0UTy8e0MF9KoQDFx2OIZXe0mDOYen8AYyrnxVO8Rf+fFE/Eg
	ecfC7IykgStzMmiMNGZANjlc3QLEKYxZfLrDQ/j7K9kHT1fJTbu9iD47IV2bRVtlUCJ2sRs3yNq8D
	Fja7jzYQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApa-0000000E1F1-1CTr
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:27:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApZ-0006J6-KK; Tue, 20 Jan 2026 13:27:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApa-001aAi-0N;
	Tue, 20 Jan 2026 13:27:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApa-00000002f5X-097U;
	Tue, 20 Jan 2026 13:27:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 20 Jan 2026 13:27:20 +0100
Message-ID: <20260120122732.634300-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122734_437807_4B5492A1 
X-CRM114-Status: GOOD (  13.95  )
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
Subject: [PATCH] commands: test: add support for [[ -v var_to_check_existence ]]
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

We currently have no way to differentiate between a variable that's set
and one that's empty, but this would be useful for scripts that source
other scripts for customization and want to verify if some variables
have been explicitly set to be empty or not, e.g. an initrd override
that's empty would mean to omit the initrd as opposed to not setting it,
which means to attempt no override.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/test.c       | 12 +++++++++++-
 test/py/test_shell.py | 43 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/commands/test.c b/commands/test.c
index c2f2993df406..d32536b0fd3e 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -10,6 +10,7 @@
 #include <common.h>
 #include <command.h>
 #include <fnmatch.h>
+#include <environment.h>
 #include <fs.h>
 #include <linux/stat.h>
 
@@ -34,6 +35,7 @@ typedef enum {
 	OPT_CHAR,
 	OPT_SYMBOLIC_LINK,
 	OPT_NONZERO_SIZE,
+	OPT_VAR_EXISTS,
 	OPT_MAX,
 } test_opts;
 
@@ -58,6 +60,7 @@ static char *test_options[] = {
 	[OPT_CHAR]			= "-c",
 	[OPT_SYMBOLIC_LINK]		= "-L",
 	[OPT_NONZERO_SIZE]		= "-s",
+	[OPT_VAR_EXISTS]		= "-v",
 };
 
 static int parse_opt(const char *opt)
@@ -197,6 +200,13 @@ static int do_test(int argc, char *argv[])
 			expr = (opt == OPT_ZERO) ? zero : !zero;
 			break;
 
+		case OPT_VAR_EXISTS:
+			adv = 2;
+			if (left < 2)
+				break;
+			expr = getenv(ap[1]) != NULL;
+			break;
+
 		case OPT_FILE:
 		case OPT_DIRECTORY:
 		case OPT_EXISTS:
@@ -302,7 +312,7 @@ static const char * const test_aliases[] = { "[", "[[", NULL};
 BAREBOX_CMD_HELP_START(test)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_TEXT("\t!, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,")
-BAREBOX_CMD_HELP_TEXT("\t-s, -f, -L; see 'man test' on your PC for more information.")
+BAREBOX_CMD_HELP_TEXT("\t-s, -f, -L, -v; see 'man test' on your PC for more information.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(test)
diff --git a/test/py/test_shell.py b/test/py/test_shell.py
index 22a076d10e1e..23c2d5dbb0b6 100644
--- a/test/py/test_shell.py
+++ b/test/py/test_shell.py
@@ -112,3 +112,46 @@ def test_cmd_clk(barebox, barebox_config):
     assert regions >= 0
 
     assert count_dicts_in_command_output(barebox, 'clk_dump -vj') == regions
+
+
+def test_barebox_test_var_exists(barebox, barebox_config):
+    skip_disabled(barebox_config, "CONFIG_CMD_TEST", "CONFIG_CMD_ECHO")
+
+    # Create a file with variable definitions
+    barebox.run_check('echo -o /tmp/testvars "TEST_VAR=value"')
+    barebox.run_check('echo -a /tmp/testvars "EMPTY_VAR="')
+
+    # Test with unset variable - should fail
+    _, _, returncode = barebox.run('test -v NONEXISTENT_VAR')
+    assert returncode == 1
+
+    _, _, returncode = barebox.run('[[ -v NONEXISTENT_VAR ]]')
+    assert returncode == 1
+
+    # Test with set variable - should succeed
+    _, _, returncode = barebox.run('. /tmp/testvars; test -v TEST_VAR')
+    assert returncode == 0
+
+    _, _, returncode = barebox.run('. /tmp/testvars; [[ -v TEST_VAR ]]')
+    assert returncode == 0
+
+    # Test with empty but set variable - should succeed
+    _, _, returncode = barebox.run('. /tmp/testvars; test -v EMPTY_VAR')
+    assert returncode == 0
+
+    _, _, returncode = barebox.run('. /tmp/testvars; [[ -v EMPTY_VAR ]]')
+    assert returncode == 0
+
+    # Test negation with !
+    _, _, returncode = barebox.run('test ! -v NONEXISTENT_VAR')
+    assert returncode == 0
+
+    _, _, returncode = barebox.run('. /tmp/testvars; test ! -v TEST_VAR')
+    assert returncode == 1
+
+    # Test in conditional context
+    barebox.run_check('. /tmp/testvars; [[ -v TEST_VAR ]] && echo ok')
+    barebox.run_check('[[ ! -v NONEXISTENT_VAR ]] && echo ok')
+
+    # Clean up
+    barebox.run_check('rm /tmp/testvars')
-- 
2.47.3



