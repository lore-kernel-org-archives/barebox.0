Delivery-date: Thu, 25 Jun 2026 20:03:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcoQ3-009nJK-1H
	for lore@lore.pengutronix.de;
	Thu, 25 Jun 2026 20:03:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wcoQ2-0003Um-Oj
	for lore@pengutronix.de; Thu, 25 Jun 2026 20:03:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GqwsF43b+Nvt+1otj4GetkWE7huEeiQZgUwxsCz81Ak=; b=psoUqcYNrpglLjkVyoTHwXRPGp
	EvfZsv6YL/6uSO9q5+VImraIfXDVpObtaJ1JU/8vJxntyL5K5xmeDqkW+pwlvufCSIPzXQnYmGHQQ
	Ehusk/jZzXDqYfOq1qKtkhRNeeTpCf++jeqsMTmfT13yl7olRncLDi3JNwxEpjs7GZjG68/XqSSj1
	hViXa35LOv3HWKxNkOnYaSDd/r33s1IG7rCoF3PF4eWp45o8GTrAzFupwXHhO/ZQSS8oAdZx9I0ur
	ZOz36gJNCnc71tycfoh3AMmUFLLw5QkjMZv30wOTDyCbi04XHFAkowAcv2FRfZuFWMMLdhvSUZkAv
	xBdRFFHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcnu9-00000009XCr-40FG;
	Thu, 25 Jun 2026 17:30:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcnu6-00000009XCM-1g3E
	for barebox@lists.infradead.org;
	Thu, 25 Jun 2026 17:30:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7678B200368;
	Thu, 25 Jun 2026 19:30:13 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wcnu1-004cls-1D;
	Thu, 25 Jun 2026 19:30:13 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wcnu1-00000002wZ1-1AEb;
	Thu, 25 Jun 2026 19:30:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Jun 2026 19:30:04 +0200
Message-ID: <20260625173012.701765-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_103018_618209_AFC907CD 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: loadx: remove non-existent options from usage string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is no -p or -c option, so drop them from the usage string as well
as from the getopt argument if they fall through into the error
(default) case.

Reported-by: Jakthree # IRC
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/loadxy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index dd9a3b8b4ba1..eae9ef86b4cc 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -128,7 +128,7 @@ static int do_loadx(int argc, char *argv[])
 	char *output_file = NULL, *cname = NULL;
 	struct console_device *cdev = NULL;
 
-	while ((opt = getopt(argc, argv, "f:b:t:o:c")) > 0) {
+	while ((opt = getopt(argc, argv, "f:b:t:o:")) > 0) {
 		switch (opt) {
 		case 'f':
 			output_file = optarg;
@@ -205,7 +205,7 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(loadx)
 	.cmd = do_loadx,
 	BAREBOX_CMD_DESC("load binary file over serial line (X-Modem)")
-	BAREBOX_CMD_OPTS("[-fptbc]")
+	BAREBOX_CMD_OPTS("[-ftbo]")
 	BAREBOX_CMD_GROUP(CMD_GRP_BOOT)
 	BAREBOX_CMD_HELP(cmd_loadx_help)
 BAREBOX_CMD_END
-- 
2.47.3



