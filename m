Delivery-date: Thu, 03 Aug 2023 15:49:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRYi5-0058pz-Aw
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 15:49:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRYi3-0003RV-ET
	for lore@pengutronix.de; Thu, 03 Aug 2023 15:49:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jBl8F64p7198l9ipQ0Q0AqY7aopGKqvu31VAnD806CI=; b=ezJHN2NsmmBbpW9Y7mheR96HrA
	6pNPa10f8efkyMqOYMDx2m8bnUYx1cm4kkpT/p52a4ONpws0Pf5dZ5gMl1osxSdMI6zKAVd1Pm81A
	n2HXrPAC62V1a3KUUg2F9rF0b0VfmMvaQe33e5nDNumOC3ez0kjLSscXF5J5zLBOiQdNQD7frif26
	JbQ1AiJdIEAAQdHHISCYgoslvDIpLLOT6Fsq/i71WR5JeMme508yMmbsSEY05k7vVrjt0/XzFbfKU
	xw1UGlCdb1saBZF8lfCQ/cNWvX0u4GaVAUdmQDXOidel6dsXcZlgTsUFdLgu5pNeDmD/6y1MZ0Voh
	O+75VVHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRYgy-009EKp-0W;
	Thu, 03 Aug 2023 13:48:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRYc6-009AIi-04
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 13:43:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qRYc2-00026b-Hw; Thu, 03 Aug 2023 15:43:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qRYc1-000r7D-U8; Thu, 03 Aug 2023 15:43:33 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qRYc1-007Oel-1t;
	Thu, 03 Aug 2023 15:43:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  3 Aug 2023 15:43:32 +0200
Message-Id: <20230803134332.1763059-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_064338_078291_2DC7BEE0 
X-CRM114-Status: GOOD (  12.73  )
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
Subject: [PATCH v2] commands: rm: add -f option to ignore nonexistent files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

rm supports multiple arguments, but will stop at the first nonexistent
file and print an error message that can't be silenced. Mimic other
implementations and implement -f for silently ignoring nonexistent files.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - only ignore -ENOENT and not all error codes
---
 commands/Kconfig |  3 ++-
 commands/rm.c    | 16 +++++++++++-----
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 844f7046282b..eb95b2a5fbcc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1031,10 +1031,11 @@ config CMD_RM
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
index be5c19222141..c35cf2d2d412 100644
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
@@ -37,8 +40,10 @@ static int do_rm(int argc, char *argv[])
 		else
 			ret = unlink(argv[i]);
 		if (ret) {
-			printf("could not remove %s: %m\n", argv[i]);
-			return 1;
+			if (!force || ret != -ENOENT)
+				printf("could not remove %s: %m\n", argv[i]);
+			if (!force)
+				return 1;
 		}
 		i++;
 	}
@@ -49,12 +54,13 @@ static int do_rm(int argc, char *argv[])
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



