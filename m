Delivery-date: Mon, 22 Mar 2021 07:56:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEUd-00038M-UH
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 07:56:51 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEUd-0006p6-19
	for lore@pengutronix.de; Mon, 22 Mar 2021 07:56:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VEdHnWvqSGYsxzlYHLE5wy9ongZsVlydscs547YyRvM=; b=PuDuYa77jQQ7Wdp4LZURZ6zKn
	3kjFq6BU6q9t29v7Y1mAa/as8BGoxRMOVvpBavQELKDbROGazWuk36+9jpjSiow/dvElmOde4zkKH
	tO/jHfP7eb7virXi45lm90v6GQgKwlw08r1M9aaDCGpE6Ueq9ZcBrBgL4r+4wRdymXkrvI5kTzpL/
	j9qIz9/JCgyNkLO/IaPozIlgBOkclV+7UO2smFmy+JR+U5X4w43msZgVgDdTrQ4FMOv/rhzKagGBy
	NOvNRHYs36GdzrXCRbsykeK1BKUK8bhtT1U7Ud6RS3HV0fKDql7y5X4gdZHD62zf4NnCmTDPCV9hJ
	STEP/SvAQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOETa-00B34T-HP; Mon, 22 Mar 2021 06:55:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOETS-00B33r-EZ
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 06:55:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOETK-0006V2-1x; Mon, 22 Mar 2021 07:55:30 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lOETJ-0003zl-NV; Mon, 22 Mar 2021 07:55:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Mar 2021 07:55:26 +0100
Message-Id: <20210322065527.14428-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210322065527.14428-1-a.fatoum@pengutronix.de>
References: <20210322065527.14428-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_065538_694132_C89B7220 
X-CRM114-Status: GOOD (  11.85  )
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
Subject: [PATCH master 2/3] common: readline: fix possible buffer overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Entering very long lines can crash the readline prompt due to missing
NUL terminator. Make sure we don't exceed CONFIG_CBSIZE to avoid this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/readline.c | 2 +-
 common/hush.c       | 2 +-
 common/parser.c     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/readline.c b/commands/readline.c
index 7933a58c08b4..57c8fbd7bc80 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -19,7 +19,7 @@ static int do_readline(int argc, char *argv[])
 
 	command_slice_release();
 
-	if (readline(argv[1], buf, CONFIG_CBSIZE) < 0) {
+	if (readline(argv[1], buf, CONFIG_CBSIZE - 1) < 0) {
 		command_slice_acquire();
 		free(buf);
 		return COMMAND_ERROR;
diff --git a/common/hush.c b/common/hush.c
index 763e6cf74bbc..0475401321d1 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -451,7 +451,7 @@ static void get_user_input(struct in_str *i)
 
 	command_slice_release();
 
-	n = readline(prompt, console_buffer, CONFIG_CBSIZE);
+	n = readline(prompt, console_buffer, CONFIG_CBSIZE - 1);
 
 	command_slice_acquire();
 
diff --git a/common/parser.c b/common/parser.c
index fb9ef42e7fab..584d4b0efece 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -270,7 +270,7 @@ int run_shell(void)
 	login();
 
 	for (;;) {
-		len = readline (CONFIG_PROMPT, console_buffer, CONFIG_CBSIZE);
+		len = readline (CONFIG_PROMPT, console_buffer, CONFIG_CBSIZE - 1);
 
 		if (len > 0)
 			strcpy (lastcommand, console_buffer);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

