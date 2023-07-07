Delivery-date: Fri, 07 Jul 2023 10:19:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHggz-001LCX-3P
	for lore@lore.pengutronix.de; Fri, 07 Jul 2023 10:19:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHggw-0000mI-Jf
	for lore@pengutronix.de; Fri, 07 Jul 2023 10:19:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Et2n/0u5LC735LPG8Dxu/h9b27VRmC5pOY0Lyc50+Rw=; b=vQfCW1ankjFqaexw06iifcl12l
	9541GczYJL9NLGjjWznNsHbV82Ib/8+awsXFHPT6fSk/fA1oT0LIhK+O6l6zEWtxur/q1y2IIV59T
	pFydxuXpaCZAs5zEtmoE76+wQoJC8IvBsVIUWfznZCbvLzcE0LmBKYRHj0IDzNQADIyJG5NUBFDaQ
	nzh4ttLOUkaeNfiDkUUQSYz8pzXPfUBgTeh9SZNNjaYKM8uRbrsx/K2WQS1Xt/qc79ZaKLQ8tIawb
	RTnsPS2mKV8kuCJWN2sv71DUx2CU7Wly9bX1agi/sJtoSKrfUPgzXhGev6s/ilKjwhz1oQVPisKYY
	GxPQb33Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHgfY-003xgK-2b;
	Fri, 07 Jul 2023 08:18:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHgfV-003xfA-1P
	for barebox@lists.infradead.org;
	Fri, 07 Jul 2023 08:18:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qHgfQ-0000fa-WA; Fri, 07 Jul 2023 10:18:17 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qHgfP-00Cgog-BN; Fri, 07 Jul 2023 10:18:15 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qHgfO-00AlEO-3D;
	Fri, 07 Jul 2023 10:18:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Jul 2023 10:18:14 +0200
Message-Id: <20230707081814.2564713-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_011821_471488_28E02AE0 
X-CRM114-Status: GOOD (  11.70  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: rm: add -f option to ignore nonexistent files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

rm supports multiple arguments, but will stop at the first nonexistent
file and print an error message that can't be silenced. Mimic other
implementations and implement -f for silently ignoring nonexistent files.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig |  3 ++-
 commands/rm.c    | 12 ++++++++----
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 7ca7b56fa54e..d6db312ced42 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1028,10 +1028,11 @@ config CMD_RM
 	help
 	  Remove files
 
-	  Usage: rm [-r] FILES...
+	  Usage: rm [-rf] FILES...
 
 	  Options:
 		  -r	remove directories and their contents recursively
+		  -f	ignore nonexistent files
 
 config CMD_RMDIR
 	tristate
diff --git a/commands/rm.c b/commands/rm.c
index be5c19222141..d23c84e0c012 100644
--- a/commands/rm.c
+++ b/commands/rm.c
@@ -12,13 +12,16 @@
 
 static int do_rm(int argc, char *argv[])
 {
-	int i, opt, recursive = 0;
+	int i, opt, recursive = 0, force = 0;
 
-	while ((opt = getopt(argc, argv, "r")) > 0) {
+	while ((opt = getopt(argc, argv, "rf")) > 0) {
 		switch (opt) {
 		case 'r':
 			recursive = 1;
 			break;
+		case 'f':
+			force = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -36,7 +39,7 @@ static int do_rm(int argc, char *argv[])
 			ret = unlink_recursive(argv[i], NULL);
 		else
 			ret = unlink(argv[i]);
-		if (ret) {
+		if (ret && !force) {
 			printf("could not remove %s: %m\n", argv[i]);
 			return 1;
 		}
@@ -49,12 +52,13 @@ static int do_rm(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(rm)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-r", "remove directories and their contents recursively")
+BAREBOX_CMD_HELP_OPT ("-f", "ignore nonexistent files")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(rm)
 	.cmd		= do_rm,
 	BAREBOX_CMD_DESC("remove files")
-	BAREBOX_CMD_OPTS("[-r] FILES...")
+	BAREBOX_CMD_OPTS("[-rf] FILES...")
 	BAREBOX_CMD_GROUP(CMD_GRP_FILE)
 	BAREBOX_CMD_HELP(cmd_rm_help)
 BAREBOX_CMD_END
-- 
2.39.2



