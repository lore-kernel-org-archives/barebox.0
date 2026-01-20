Delivery-date: Tue, 20 Jan 2026 13:28:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAqA-003Nvg-39
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:28:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAq9-0006Wd-V0
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:28:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2+FMufKZOxWsGSh/UGDNbywexWDF4h3P9M5+iT+wrv8=; b=i0vBZReJillKW+KEzym/v1nlRV
	fDfbV8lhHGEKCBl4kNKCLEsYhonjFXBaldgHWPc+CPE2j64lTO9t1r1Y1VC624Sv7hq+ywl29xtI+
	xwon7Dq/Fv8kb6fZUj2fUm4sZInlAr/9CxjXWsYCAJMwcV1p3A2sJM8zsTYAJKlBL6OmtqQQdkC1v
	zxizOvOiVK+mWjM2/SecgHIMhvBrrIiZzdlEcK71ZovqgTBnBV3O+uzMjP829qebRIAMwHpxUjzQ6
	aBGWp0JRU9LWWN8J8+g+OBtAAtqzijBaD+h173ETwce078jXL2PgskaDP7AVrpoATMlkKLrkPebG6
	9yXYPllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApn-00000003q2m-28iO;
	Tue, 20 Jan 2026 12:27:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApl-00000003q1d-35hO
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=2+FMufKZOxWsGSh/UGDNbywexWDF4h3P9M5+iT+wrv8=; b=i8P114rObwN4tyrXq/XWwF0aFZ
	Vsjqd3bL0VAw0eMRXfqVLjSacGWebAfVYjOaRG+X8ysKbNVLUGG4k6Qfz9Vh1AoRZFnkdhC14KuGB
	0BNvamofqAhFr6fjtos9/MQsNVP0PH69NsRRC9KoMvm4zRYygUl2KaAjIP8Qw/R5ezPZOI9GHl/Gr
	IDpsQVK+G/1hcJMU5VcFTQAxiO9gGDdZJHqP4RbKBb6G7akCLzFfo9qo0zHatTYpl+p5dv+jvbLWo
	GMqCZNp6zvxDbXc7TUeUD7Nkwj+IhTb62P7+pyHXoiZDt98b2wyqJC3YL9Rzhru9LLQspNiNqVXOX
	nscFkXCw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApi-0000000E1GJ-30wd
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:27:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAph-0006Ld-VO; Tue, 20 Jan 2026 13:27:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApi-001aAm-1K;
	Tue, 20 Jan 2026 13:27:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApi-00000002fAH-1NGk;
	Tue, 20 Jan 2026 13:27:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Date: Tue, 20 Jan 2026 13:27:35 +0100
Message-ID: <20260120122741.634724-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122742_854684_534B3AB8 
X-CRM114-Status: GOOD (  13.98  )
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
Subject: [PATCH] commands: cd: implement support for cd - and $OLDPWD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

We have no $PWD an we would have to populate it globally, because all of
barebox shares a single working directory. What we can easily do however
is populate $OLDPWD to give shell scripts a way to resolve some
artifacts relatively and then revert back to the original working
directory, so implement that as well as cd -.

Co-developed-by: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/cd.c | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/commands/cd.c b/commands/cd.c
index 0238919bf26c..e42beb79b282 100644
--- a/commands/cd.c
+++ b/commands/cd.c
@@ -12,26 +12,48 @@
 #include <command.h>
 #include <fs.h>
 #include <errno.h>
+#include <environment.h>
 
 static int do_cd(int argc, char *argv[])
 {
+	const char *target_dir;
+	char *old_pwd;
 	int ret;
 
-	if (argc == 1)
-		ret = chdir("/");
-	else
-		ret = chdir(argv[1]);
+	if (argc == 1) {
+		target_dir = "/";
+	} else if (strcmp(argv[1], "-")) {
+		target_dir = argv[1];
+	} else {
+		/* cd - switches to previous directory */
+		target_dir = getenv("OLDPWD");
+		if (!target_dir) {
+			printf("cd: OLDPWD not set\n");
+			return 1;
+		}
+		/* Print the directory we're changing to, like bash does */
+		printf("%s\n", target_dir);
+	}
 
+	/* Save current directory before changing */
+	old_pwd = xstrdup(getcwd());
+
+	ret = chdir(target_dir);
 	if (ret) {
 		perror("chdir");
 		return 1;
 	}
 
+	setenv("OLDPWD", old_pwd);
+	free(old_pwd);
+
 	return 0;
 }
 
 BAREBOX_CMD_HELP_START(cd)
 BAREBOX_CMD_HELP_TEXT("If called without an argument, change to the root directory '/'.")
+BAREBOX_CMD_HELP_TEXT("Use 'cd -' to change to the previous directory.")
+BAREBOX_CMD_HELP_TEXT("Sets OLDPWD environment variables.")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(cd)
-- 
2.47.3



