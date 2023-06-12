Delivery-date: Mon, 12 Jun 2023 14:33:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gk0-003pFW-6P
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 14:33:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8gjx-0002Q6-QB
	for lore@pengutronix.de; Mon, 12 Jun 2023 14:33:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CEpj1oQlJ+9pibGxjm6pOx4/3e7fCwR1VoB5ptZTZFA=; b=2pNyi04UcaroDyi+cNskSUIXpr
	6JqjKt//Yn7iSklRqpI3IfLYkgB50yz+72Z80TqgxCMBuOfQnplXELz4yJAXj6Ep20aDyFWcMg1Ot
	+jf/pIN5F+7hnqzn20X6AkcA+8Mc0nyOvI0G+iLw0ySJWAJR+j5q8oyzWqDz6iZzDdVdxf8x2BlwD
	69gKl4gOz0Zbwo3JRS5TTMgfc3mwfu2N2PfBJ5mzje/kZDWExg3Tcs4CIH58PdwjWHhYgS017dp7H
	oqzZqeVA1cwpSM3XbouC7UpKrwHNXRAEWvxd/yd46RJ6YUSCwkilb8K2X9AiGABkiGymgligqv2yp
	cQbdjeRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8giu-0041ek-3A;
	Mon, 12 Jun 2023 12:32:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8gip-0041bk-3A
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 12:32:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-0002BT-Oj; Mon, 12 Jun 2023 14:32:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gio-006syJ-58; Mon, 12 Jun 2023 14:32:34 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q8gin-00D1Cq-4c; Mon, 12 Jun 2023 14:32:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 12 Jun 2023 14:32:31 +0200
Message-Id: <20230612123232.3071957-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612123232.3071957-1-s.hauer@pengutronix.de>
References: <20230612123232.3071957-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_053236_016422_2E9D391D 
X-CRM114-Status: GOOD (  14.86  )
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
Subject: [PATCH 4/5] dmesg: implement dmesg -n
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Under Linux dmesg -n can be used to set the console loglevel. Implement
the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dmesg.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 00e5a159e0..953bdb2068 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -77,8 +77,9 @@ static int do_dmesg(int argc, char *argv[])
 	int opt, i;
 	int delete_buf = 0, emit = 0;
 	unsigned flags = 0, levels = 0;
+	char *set = NULL;
 
-	while ((opt = getopt(argc, argv, "ctderl:")) > 0) {
+	while ((opt = getopt(argc, argv, "ctderl:n:")) > 0) {
 		switch (opt) {
 		case 'c':
 			delete_buf = 1;
@@ -100,11 +101,25 @@ static int do_dmesg(int argc, char *argv[])
 		case 'r':
 			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
 			break;
+		case 'n':
+			set = optarg;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
+	if (set) {
+		int level = str_to_loglevel(set);
+
+		if (level < 0)
+			return COMMAND_ERROR;
+
+		barebox_loglevel = level;
+
+		return 0;
+	}
+
 	if (emit) {
 		char *buf;
 		int len = 0;
@@ -145,6 +160,7 @@ BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
 BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
 BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
 BAREBOX_CMD_HELP_OPT ("-l <vdebug|debug|info|notice|warn|err|crit|alert|emerg>", "Restrict output to the given (comma-separated) list of levels")
+BAREBOX_CMD_HELP_OPT ("-n <loglevel>", "Set level at which printing of messages is done to the console")
 BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
 BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
 BAREBOX_CMD_HELP_END
-- 
2.39.2



