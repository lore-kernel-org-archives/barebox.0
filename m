Delivery-date: Wed, 18 Jun 2025 17:02:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRuIj-008dpc-2g
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 17:02:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRuIj-0004hJ-9c
	for lore@pengutronix.de; Wed, 18 Jun 2025 17:02:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=q+RaPgk8FFGwwJhGw8QwFU8I80/J/vpG4msn6GLmMyE=; b=z1x5vwG77ykDAX7yq6ihVtwLO4
	/s66NRcjxOJiw0m33zKgwZwTYFIlFv2PLeTurVWCoUbziIheUUtj1XNU0BwGN3fZUpG1fQmsVAG+3
	XjjSrTbTqfPTxivVNG7Ie329qyw0mOhZklIgmJ8eMUXoIWiZNPw11grwiyJPNno2gG/rF9bnhyXao
	Uj5OnnBsGOJvSjm9SjVzNY+bj1TPp5HAG6LkKJbchGkBnNkeR/ZoImbMOJ7X8bpkImTfZceYmUgsQ
	5p0u8oIEEoky2ueTrfsQmWa1OprNhEbFVh8fZ9AUrnhvzdEh3DFtLD+m9PDjoe2lwWMjp2XZYbZ/N
	jk+9Q6xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRuIN-0000000AWNJ-3l62;
	Wed, 18 Jun 2025 15:01:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRs2j-0000000A9hO-17pn
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 12:37:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRs2i-00012M-3Z; Wed, 18 Jun 2025 14:37:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRs2h-0048kS-2z;
	Wed, 18 Jun 2025 14:37:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRs2h-008rCz-2a;
	Wed, 18 Jun 2025 14:37:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 18 Jun 2025 14:37:27 +0200
Message-Id: <20250618123727.2110575-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_053729_307889_8E2EE9FA 
X-CRM114-Status: GOOD (  11.16  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: sleep: add msleep support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sometimes it's useful to delay execution for less than a second. Add
support for msleep command which is implemented as an alias to the sleep
command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/sleep.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/commands/sleep.c b/commands/sleep.c
index b462ef4413..641dbb230a 100644
--- a/commands/sleep.c
+++ b/commands/sleep.c
@@ -10,16 +10,20 @@
 
 static int do_sleep(int argc, char *argv[])
 {
-	uint64_t start;
-	ulong delay;
+	uint64_t start, delay;
 
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
 	delay = simple_strtoul(argv[1], NULL, 10);
 
+	if (!strcmp(argv[0], "msleep"))
+		delay *= MSECOND;
+	else
+		delay *= SECOND;
+
 	start = get_time_ns();
-	while (!is_timeout(start, delay * SECOND)) {
+	while (!is_timeout(start, delay)) {
 		if (ctrlc())
 			return 1;
 	}
@@ -27,9 +31,12 @@ static int do_sleep(int argc, char *argv[])
 	return 0;
 }
 
+static const char * const sleep_aliases[] = { "msleep", NULL};
+
 BAREBOX_CMD_START(sleep)
 	.cmd		= do_sleep,
-	BAREBOX_CMD_DESC("delay execution for n seconds")
+	.aliases	= sleep_aliases,
+	BAREBOX_CMD_DESC("delay execution for n seconds or n mseconds if invoked as msleep")
 	BAREBOX_CMD_OPTS("SECONDS")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_COMPLETE(command_var_complete)
-- 
2.39.5



