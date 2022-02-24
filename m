Delivery-date: Thu, 24 Feb 2022 14:54:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNEZI-008l2G-B5
	for lore@lore.pengutronix.de; Thu, 24 Feb 2022 14:54:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNEZH-000448-9z
	for lore@pengutronix.de; Thu, 24 Feb 2022 14:54:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NxXLpz6r68aep9RpOC8v4gtKqTLmZo5jp73EM8v44Jk=; b=APqHgM1hiXlTfs
	22iPp8KkwhjzeJsUrRQ1JSWAFlIISfXinlQzaxadYitHFnkweSCze0YF38U6CFYZYMoRJUQr/GZfM
	VDoFr84WQUFPU2Jjk7X5SaNZpiD9c/FoXjEXiQC2xur2gpevWX7gJamsteIPx0fhI1r+8jAfITQq3
	OF6IVPViTb6eokYfva/vGI5IdiQEVSRA6A2zTWLQgIdGCt/4W2DFE4BlgoPYUUsUA1nfWNPiENlYb
	gI54gfpC+11XdbhIAJIApr1x0hNlh9bB7owgjNifvcc0PpdnIJMKF7O8aWaJz2tDJ1saTmxYBeVOG
	nVjK2/SkabEBKw5+/COA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNEXx-0010Z9-CJ; Thu, 24 Feb 2022 13:52:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNEXs-0010Yf-Ih
 for barebox@lists.infradead.org; Thu, 24 Feb 2022 13:52:37 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nNEXo-0003lk-P2; Thu, 24 Feb 2022 14:52:32 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nNEXo-00153T-9v; Thu, 24 Feb 2022 14:52:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Feb 2022 14:52:31 +0100
Message-Id: <20220224135231.257713-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_055236_635395_E39D1844 
X-CRM114-Status: UNSURE (   9.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: tutorial: adjust command description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Current text can be quite confusing for the prev alias:

  prev - print next tip for barebox tutorial

Instead, change it to:

  prev - navigate the barebox tutorial

Which is correct for both next and prev.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/tutorial.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/tutorial.c b/commands/tutorial.c
index 81e2f93716cd..444177764311 100644
--- a/commands/tutorial.c
+++ b/commands/tutorial.c
@@ -152,7 +152,7 @@ static __maybe_unused const char *const prev_alias[] = { "prev", NULL};
 BAREBOX_CMD_START(next)
 	.cmd		= do_tutorial_next,
 	.aliases	= prev_alias,
-	BAREBOX_CMD_DESC("print next tip for barebox tutorial")
+	BAREBOX_CMD_DESC("navigate the barebox tutorial")
 	BAREBOX_CMD_OPTS("[-hr] [STEP]")
 	BAREBOX_CMD_HELP(cmd_next_help)
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

