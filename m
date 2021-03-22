Delivery-date: Mon, 22 Mar 2021 07:56:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEUb-000380-RG
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 07:56:49 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEUb-0006oz-4b
	for lore@pengutronix.de; Mon, 22 Mar 2021 07:56:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DujU75VTdRMsJIDnurs9f0AM2VPaSzUEdEsTjEgTSZs=; b=fGrrlRjquQSfxopkRKI6196PEe
	EpMy4CW1D6sDcWXL939E7uvc7vpsI/8SKtATeM7agrRutXyrWTQz/r58ewWRHajRSokThr30cJk4F
	+inAtsw/2ZrIhShxkn46pd0aEZey84Dm/hPqxXEUw/bxAyWAV4Z6VA+59WKhVp2SIlfXSEEiJrLOL
	S1qzs086h5vwQuKyagwPH+FZVPMnwJ/kipeCyPPRaxOTUHKx8m1YUVb94c+Hq86EafaPKryJVnOeO
	EgLAXUvYiv+RHxXq44wD5TgcdsqvZLcM+rZyBBYYkbMl5TzJwduKLFh6gSGiMuFfed7xf8X0WsT+1
	uBQbqmTw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOETW-00B33m-VC; Mon, 22 Mar 2021 06:55:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOETL-00B335-Go
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 06:55:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOETK-0006V1-1x; Mon, 22 Mar 2021 07:55:30 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOETJ-0003zj-N3; Mon, 22 Mar 2021 07:55:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Mar 2021 07:55:25 +0100
Message-Id: <20210322065527.14428-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_065533_694001_7B0B5FFA 
X-CRM114-Status: GOOD (  10.27  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] commands: readline: fix memory leak on wrong usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Later error-handling frees buf, but the first early exit doesn't.
Move buf beyond it to fix the memory leak.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/readline.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/commands/readline.c b/commands/readline.c
index 403ac8563a36..7933a58c08b4 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -10,11 +10,13 @@
 
 static int do_readline(int argc, char *argv[])
 {
-	char *buf = xzalloc(CONFIG_CBSIZE);
+	char *buf;
 
 	if (argc < 3)
 		return COMMAND_ERROR_USAGE;
 
+	buf = xzalloc(CONFIG_CBSIZE);
+
 	command_slice_release();
 
 	if (readline(argv[1], buf, CONFIG_CBSIZE) < 0) {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

