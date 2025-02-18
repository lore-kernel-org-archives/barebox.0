Delivery-date: Tue, 18 Feb 2025 13:43:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkMx0-003uXA-0h
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 13:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkMwz-0002ua-1a
	for lore@pengutronix.de; Tue, 18 Feb 2025 13:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xpwbxnVkK5Sx6BfPlZOcEmg/TiPFpVDID2ZTpV2xfV8=; b=ao2K5Km1UB5795oetcMPRtXQOl
	eCWoJmZ9y2vzTUTSqKKmgzm8jk6pTsOvPhlCnIJynn6aSF122JlgTkq5DGD0N2ViSZXoJrVnG/ii8
	kwhuYmObnwf2QCXirLZFOfmTbS3NqPYEzPC+ecdNkaMKFqSbp8fEihGdkdLwebpjo/jJ5UYPWaAqH
	/Fy0pdo/0xPZnzM3Jnev4eLayu1fQ0VMVo8D/sTDaxvTBYacpH7ffexH55Ibm3jpC4Zg2qyZ6s9nS
	tZGzbjvlMjsxW8uvys3kNXlyncwF+68DsLZXz5tkqUWmVrtsEiQK0kacm0+aE0kNX+T27XsQ4cfQr
	Ucczlvkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkMwL-00000008BpD-23L3;
	Tue, 18 Feb 2025 12:43:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkMwJ-00000008Bon-0e5w
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 12:43:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkMwG-0002nU-Tq; Tue, 18 Feb 2025 13:43:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkMwG-001axd-2M;
	Tue, 18 Feb 2025 13:43:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkMwG-00GCpa-23;
	Tue, 18 Feb 2025 13:43:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2025 13:43:00 +0100
Message-Id: <20250218124300.3862498-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_044303_190546_AEC81225 
X-CRM114-Status: GOOD (  13.46  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] dmesg: add support for dumping log into file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have a log_writefile() helper for dumping the log into a
file. Make it easily accessible via the shell by having a new
dmesg -o option call it.

There is nothing keeping us from extending the function to support flags
and levels like log_print does, but this can follow later if needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/dmesg.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/commands/dmesg.c b/commands/dmesg.c
index 8a60f075076e..7982188cda6d 100644
--- a/commands/dmesg.c
+++ b/commands/dmesg.c
@@ -76,13 +76,17 @@ static unsigned dmesg_get_levels(const char *__args)
 
 static int do_dmesg(int argc, char *argv[])
 {
+	const char *outputfile = NULL;
 	int opt, ret, i;
 	int delete_buf = 0, emit = 0;
 	unsigned flags = 0, levels = 0;
 	char *set = NULL;
 
-	while ((opt = getopt(argc, argv, "ctderl:n:")) > 0) {
+	while ((opt = getopt(argc, argv, "o:ctderl:n:")) > 0) {
 		switch (opt) {
+		case 'o':
+			outputfile = optarg;
+			break;
 		case 'c':
 			delete_buf = 1;
 			break;
@@ -111,6 +115,12 @@ static int do_dmesg(int argc, char *argv[])
 		}
 	}
 
+	if (outputfile) {
+		if (flags || levels)
+			return COMMAND_ERROR_USAGE;
+		return log_writefile(outputfile);
+	}
+
 	if (set) {
 		int level = str_to_loglevel(set);
 
@@ -166,6 +176,7 @@ BAREBOX_CMD_HELP_TEXT("Known debug loglevels are: emerg, alert, crit, err, warn,
 BAREBOX_CMD_HELP_TEXT("vdebug")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-o <file>",	"Output all log to given file (conflicts with -tdlr)")
 BAREBOX_CMD_HELP_OPT ("-c",		"Delete messages after printing them")
 BAREBOX_CMD_HELP_OPT ("-d",		"Show a time delta to the last message")
 BAREBOX_CMD_HELP_OPT ("-e <msg>",	"Emit a log message")
-- 
2.39.5



