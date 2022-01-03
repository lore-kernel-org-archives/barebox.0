Delivery-date: Mon, 03 Jan 2022 13:04:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M4q-009nyl-9k
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:04:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M4p-0004o7-3a
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:04:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DrcbHW+AJ1DJ2S6a0pal2H81bBoXyvA9hPeNRc8kJMI=; b=sBpl2GxOS+tD/s
	IS3t9pr+l7O79lQ4aWeKOvDZzciwJxhlDKPGJwMaqcaCPH8UDhyIVtUpy7eqqsqqkt2tvKbe/TeQB
	1bFhx+xmQuBiBMHzOHO4ziSPeF3gSlG2U01GZeLS12IkCTJsslGcU4hHxuZqcNzxBB5bOqOymCQX/
	p/RTaLEeuWsXppw97HEu9Ls02I+Dyyxda0FTXVhk/WyPlryVMUAzrAt9M/j0ayUYe9S4iyzMTslUO
	XbxuOVug/3uBjUeoR7wRzO6Jox7Y3ulHaU6IOFy1GilNqPRZ/wsbDGlQdsJbyKJOEVSFtAIxMbma7
	Eu/i8g09WzSDj5IxGumQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M3Z-008xSX-Ku; Mon, 03 Jan 2022 12:03:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M3U-008xRl-NZ
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:03:13 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M3T-0004gr-BP; Mon, 03 Jan 2022 13:03:11 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M3S-007FpC-Sw; Mon, 03 Jan 2022 13:03:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:03:10 +0100
Message-Id: <20220103120310.1729050-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040312_785697_D6791D02 
X-CRM114-Status: GOOD (  11.11  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: time: add -n option for nanoseconds output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The current millisecond output may be too coarse for debugging timing
of barebox functionality. Add an optional nanosecond output.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/time.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/commands/time.c b/commands/time.c
index 25ba2da15ed5..2d9fb75e7a8c 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -9,7 +9,7 @@ static int do_time(int argc, char *argv[])
 	int i;
 	unsigned char *buf;
 	u64 start, end, diff64;
-	unsigned long diff;
+	bool nanoseconds = false;
 	int len = 1; /* '\0' */
 
 	if (argc < 2)
@@ -20,7 +20,13 @@ static int do_time(int argc, char *argv[])
 
 	buf = xzalloc(len);
 
-	for (i = 1; i < argc; i++) {
+	i = 1;
+	if (!strcmp(argv[i], "-n")) {
+		nanoseconds = true;
+		i++;
+	}
+
+	for (; i < argc; i++) {
 		strcat(buf, argv[i]);
 		strcat(buf, " ");
 	}
@@ -33,11 +39,10 @@ static int do_time(int argc, char *argv[])
 
 	diff64 = end - start;
 
-	do_div(diff64, 1000000);
-
-	diff = diff64;
+	if (!nanoseconds)
+		do_div(diff64, 1000000);
 
-	printf("time: %lums\n", diff);
+	printf("time: %llu%cs\n", diff64, nanoseconds ? 'n' : 'm');
 
 	free(buf);
 
@@ -47,12 +52,14 @@ static int do_time(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(time)
 BAREBOX_CMD_HELP_TEXT("Note: This command depends on COMMAND being interruptible,")
 BAREBOX_CMD_HELP_TEXT("otherwise the timer may overrun resulting in incorrect results")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n",     "output elapsed time in nanoseconds")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(time)
 	.cmd		= do_time,
 	BAREBOX_CMD_DESC("measure execution duration of a command")
-	BAREBOX_CMD_OPTS("COMMAND")
+	BAREBOX_CMD_OPTS("[-n] COMMAND")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_time_help)
 BAREBOX_CMD_END
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

