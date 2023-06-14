Delivery-date: Wed, 14 Jun 2023 11:03:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9MPo-006QfV-Te
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 11:03:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9MPm-0001up-Hj
	for lore@pengutronix.de; Wed, 14 Jun 2023 11:03:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=izSQ0hCE8qM5Kz1cjBiKKOVj4Ch/5waMa1wRrSvFdh4=; b=iYknCzOIFJB2WioVdN4hOyZVdJ
	TbpXgguBIVkjLyb2F8xren0TpqEPr5zrG5LcZnPIM59MlD8x8HSKsiunDJmIYSHpq0sCE55IhUF13
	qioPitCAjT3xQrl9YbaYFvUbabbJI9Kx5mUIuKPUkvpMUzwaeqRgetlX/P5vPGvX8tCUqjvL/d6mz
	uWexUPC7NVxP11Ey5tZnv/YKkX306ysXY18zLCypl6cMWRw9gyO25YEqmLbJ6g7wt8Uu+KYbPge2n
	DWsKkHga4r6mCHRCIH/80ydSbf1yNP4ZCv8MR81jW2uT9McAI/gDN1sC7kxkzybgjS3FhU3K5aeso
	2+husb4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9MOl-00AzYu-23;
	Wed, 14 Jun 2023 09:02:39 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9MOi-00AzXh-1I
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 09:02:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9MOf-0001lB-L2; Wed, 14 Jun 2023 11:02:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9MOf-007JWr-0J; Wed, 14 Jun 2023 11:02:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9MOe-00HO78-AN; Wed, 14 Jun 2023 11:02:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 11:02:31 +0200
Message-Id: <20230614090231.4141827-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_020236_433446_F3A39A69 
X-CRM114-Status: GOOD (  15.96  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: help: ignore options after first regular argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If some-command -n foo bar -v fails, it would be nice to be able to
just stick help in front of the command to get help text. This doesn't
work currently, because getopt called for help will complain about not
knowing some-command's options. Fix this by only parsing help options up
to the first non-option argument (i.e. one that doesn't start with `-').

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/help.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/commands/help.c b/commands/help.c
index ba8542b90f01..87c1368d746d 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -3,7 +3,6 @@
 
 #include <common.h>
 #include <command.h>
-#include <getopt.h>
 #include <complete.h>
 
 
@@ -72,10 +71,16 @@ static void list_commands(int verbose)
 static int do_help(int argc, char *argv[])
 {
 	struct command *cmdtp;
-	int opt, verbose = 0, all = 0;
+	int verbose = 0, all = 0;
+	int argi;
 
-	while ((opt = getopt(argc, argv, "va")) > 0) {
-		switch (opt) {
+	/* We can't use getopt() here because we want to stop at the first
+	 * non-option to support, so we can just prefix help in front
+	 * of a command with options.
+	 */
+	argi = 1;
+	while (argi < argc && *argv[argi] == '-') {
+		switch (argv[argi++][1]) {
 		case 'v':
 			verbose = 1;
 			break;
@@ -93,20 +98,20 @@ static int do_help(int argc, char *argv[])
 		return 0;
 	}
 
-	if (optind == argc) {	/* show list of commands */
+	if (argi == argc) {	/* show list of commands */
 		list_commands(verbose);
 		return 0;
 	}
 
 
 	/* command help (long version) */
-	if ((cmdtp = find_cmd(argv[optind])) != NULL) {
+	if ((cmdtp = find_cmd(argv[argi])) != NULL) {
 		barebox_cmd_usage(cmdtp);
 		return 0;
 	} else {
 		printf ("Unknown command '%s' - try 'help'"
 			" without arguments for list of all"
-			" known commands\n\n", argv[optind]
+			" known commands\n\n", argv[argi]
 				);
 		return 1;
 	}
-- 
2.39.2



