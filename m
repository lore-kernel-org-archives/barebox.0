Delivery-date: Tue, 04 Jul 2023 14:17:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeyb-00EmNV-80
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 14:17:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGeyY-0007bS-IC
	for lore@pengutronix.de; Tue, 04 Jul 2023 14:17:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=33C68IPVk4I2RoEiYkoz4o3aBW9YhZrmBZybGL107/4=; b=H92mJQgtT+g04jr1Rz08wnAwdO
	v+rueW3R4u0cNRFJV1bUpfLPHmIhu8HHrLDLtbg5rse7HHeuiN+lr8EL2cSJaNT6OinTwwATX5dm6
	7ccBU10lsIZg8IRQTFWCqr+kELyQBnolb/zHLqh7mp0JrQcqGJG7T7mInXaEmWrlE+7jXP3MJZGfr
	RvxMNfwryzOQjYGbMHT3+7s2fHHxJ4fbevNFTYqJ7ToSOWMn10GXm1LmlZee51EOj4ji2t3j42CCx
	ygi9vD/PX+XgaTIKT6cVhh+O3eXwEg1Yu8hpMmq4+mg4whMRgjmQ++Muc75yRr25hzyreI20XwQ5p
	BJhM9b3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGexM-00DEL5-2c;
	Tue, 04 Jul 2023 12:16:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGexJ-00DEJS-1I
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 12:16:31 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qGexI-0007Sg-4J
	for barebox@lists.infradead.org; Tue, 04 Jul 2023 14:16:28 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  4 Jul 2023 14:16:26 +0200
Message-Id: <20230704121626.835344-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704121626.835344-1-m.felsch@pengutronix.de>
References: <20230704121626.835344-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_051629_438148_37FCD4A8 
X-CRM114-Status: GOOD (  15.54  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 2/2] commands: test: add based support for bash-test style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add bash-style test [[ expression ]] to support pattern matching like:

  - [[ "foo1" == "foo*" ]]
  - [[ "foo1" != "bar*" ]]

For more information see man 1 bash.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
 - replace pr_* with printf
v2:
 - drop addittional Kconfig switch
 - fix FNMATCH select
 - drop conditional compilation
 - adapt commit message

 commands/Kconfig |  6 ++++--
 commands/test.c  | 33 +++++++++++++++++++++++++++------
 2 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7ca7b56fa5..17ad5ff87c 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1208,15 +1208,17 @@ config CMD_SLEEP
 config CMD_TEST
 	tristate
 	depends on SHELL_HUSH
+	select FNMATCH
 	default y
 	prompt "test"
 	help
-	  Minimal test command like in /bin/sh
+	  Minimal test command like in /bin/sh with support for bash-style
+	  [[ expression ]] tests as well.
 
 	  Usage: test [EXPR]
 
 	  Options:
-		  !, =, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,
+		  !, =, ==, !=, -eq, -ne, -ge, -gt, -le, -lt, -o, -a, -z, -n, -d, -e,
 		  -f, -L; see 'man test' on your PC for more information.
 
 config CMD_TRUE
diff --git a/commands/test.c b/commands/test.c
index c1b84c42ef..1130bf2e5b 100644
--- a/commands/test.c
+++ b/commands/test.c
@@ -9,11 +9,13 @@
  */
 #include <common.h>
 #include <command.h>
+#include <fnmatch.h>
 #include <fs.h>
 #include <linux/stat.h>
 
 typedef enum {
 	OPT_EQUAL,
+	OPT_EQUAL_BASH,
 	OPT_NOT_EQUAL,
 	OPT_ARITH_EQUAL,
 	OPT_ARITH_NOT_EQUAL,
@@ -36,6 +38,7 @@ typedef enum {
 
 static char *test_options[] = {
 	[OPT_EQUAL]			= "=",
+	[OPT_EQUAL_BASH]		= "==",
 	[OPT_NOT_EQUAL]			= "!=",
 	[OPT_ARITH_EQUAL]		= "-eq",
 	[OPT_ARITH_NOT_EQUAL]		= "-ne",
@@ -67,18 +70,35 @@ static int parse_opt(const char *opt)
 	return -1;
 }
 
+static int string_comp(const char *left_op, const char *right_op, bool bash_test)
+{
+	if (bash_test)
+		return fnmatch(right_op, left_op, 0);
+
+	return strcmp(left_op, right_op);
+}
+
 static int do_test(int argc, char *argv[])
 {
 	char **ap;
 	int left, adv, expr, last_expr, neg, last_cmp, opt, zero;
 	ulong a, b;
 	struct stat statbuf;
+	bool bash_test = false;
 
 	if (*argv[0] == '[') {
 		argc--;
-		if (*argv[argc] != ']') {
-			printf("[: missing `]'\n");
-			return 1;
+		if (!strncmp(argv[0], "[[", 2)) {
+			if (strncmp(argv[argc], "]]", 2) != 0) {
+				printf("[[: missing `]]'\n");
+				return 1;
+			}
+			bash_test = true;
+		} else {
+			if (*argv[argc] != ']') {
+				printf("[: missing `]'\n");
+				return 1;
+			}
 		}
 	}
 
@@ -183,10 +203,11 @@ static int do_test(int argc, char *argv[])
 			b = simple_strtol(ap[2], NULL, 0);
 			switch (parse_opt(ap[1])) {
 			case OPT_EQUAL:
-				expr = strcmp(ap[0], ap[2]) == 0;
+			case OPT_EQUAL_BASH:
+				expr = string_comp(ap[0], ap[2], bash_test) == 0;
 				break;
 			case OPT_NOT_EQUAL:
-				expr = strcmp(ap[0], ap[2]) != 0;
+				expr = string_comp(ap[0], ap[2], bash_test) != 0;
 				break;
 			case OPT_ARITH_EQUAL:
 				expr = a == b;
@@ -233,7 +254,7 @@ static int do_test(int argc, char *argv[])
 	return expr;
 }
 
-static const char * const test_aliases[] = { "[", NULL};
+static const char * const test_aliases[] = { "[", "[[", NULL};
 
 BAREBOX_CMD_HELP_START(test)
 BAREBOX_CMD_HELP_TEXT("Options:")
-- 
2.39.2



