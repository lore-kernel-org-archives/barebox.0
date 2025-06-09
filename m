Delivery-date: Mon, 09 Jun 2025 08:35:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOW6X-005Lwt-1G
	for lore@lore.pengutronix.de;
	Mon, 09 Jun 2025 08:35:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOW6W-0006lB-QS
	for lore@pengutronix.de; Mon, 09 Jun 2025 08:35:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ntswq27VCUXTneFR4xeMgi/OnwuAU69V/fZt0utVNEw=; b=hTxYQMHrHX5XJ8QNsUG800lkD6
	iz/u47bQ8pqMXF7N+/jarZPwgb+f//hY5V3I3QkT8U35bvmyRXQrARCM0vWuR90QqN5iB7SDbZLZH
	KkhJVBGpMk61LOrBh6Z8g478kHJWji9aIkmv5wv5TaQ/cTEA3LS3pNgKHXT3xm8+Crt2fpRTeAHmY
	ex8rMVRL8Ip3fn2gUAJ0QlbgGfi4bBToiAd5eKsGNIHis4DjPczgjSjuFkCQTDf2Fk/R+sQGXuZNY
	OA/0NYPdJmaaPRK7vGdgk6IBQduTxBtKlbBwhVJa1wuO8obMBO8qeoC6iMEHwjwc9kE24GCGY/bMm
	6SvPMxag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOW64-00000003W4W-3JRh;
	Mon, 09 Jun 2025 06:35:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOW61-00000003W3q-3GDA
	for barebox@lists.infradead.org;
	Mon, 09 Jun 2025 06:35:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uOW60-0006Xc-BL; Mon, 09 Jun 2025 08:35:00 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Jun 2025 08:34:59 +0200
Message-Id: <20250609063459.3167639-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250608_233501_818443_8A5F30E9 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: dmesg: add -p option for setting maximum log level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The existing -l option requires the user to specify all log levels they
are interested in, e.g. dmesg -l warn,err,crit,alert,emerg, which is
cumbersome.

Add a new -p option that automatically includes more severe log levels,
so the above can be realized by just dmesg -p warn

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/dmesg.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 8a60f075076e..a93ad5b359fb 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -81,7 +81,7 @@ static int do_dmesg(int argc, char *argv[])
 	unsigned flags = 0, levels = 0;
 	char *set = NULL;
 
-	while ((opt = getopt(argc, argv, "ctderl:n:")) > 0) {
+	while ((opt = getopt(argc, argv, "ctderl:p:n:")) > 0) {
 		switch (opt) {
 		case 'c':
 			delete_buf = 1;
@@ -96,9 +96,16 @@ static int do_dmesg(int argc, char *argv[])
 			emit = 1;
 			break;
 		case 'l':
+		case 'p':
 			levels = dmesg_get_levels(optarg);
 			if (!levels)
 				return COMMAND_ERROR;
+			if (opt == 'p') {
+				unsigned maxbit = fls(levels) - 1;
+				if (levels & ~BIT(maxbit))
+					return COMMAND_ERROR_USAGE;
+				levels = GENMASK(maxbit, 0);
+			}
 			break;
 		case 'r':
 			flags |= BAREBOX_LOG_PRINT_RAW | BAREBOX_LOG_PRINT_TIME;
@@ -170,6 +177,7 @@ BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
 BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
 BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
 BAREBOX_CMD_HELP_OPT ("-l <loglevel>", "Restrict output to the given (comma-separated) list of levels")
+BAREBOX_CMD_HELP_OPT ("-p <loglevel>", "Restrict output to specified log level at most")
 BAREBOX_CMD_HELP_OPT ("-n <loglevel>", "Set level at which printing of messages is done to the console")
 BAREBOX_CMD_HELP_OPT ("-r",		"Print timestamp and log-level prefixes.")
 BAREBOX_CMD_HELP_OPT ("-t",		"Show timestamp informations")
@@ -178,7 +186,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(dmesg)
 	.cmd	= do_dmesg,
 	BAREBOX_CMD_DESC("Print or control log messages")
-	BAREBOX_CMD_OPTS("[-cdert]")
+	BAREBOX_CMD_OPTS("[-cdelprt]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_dmesg_help)
 BAREBOX_CMD_END
-- 
2.39.5



