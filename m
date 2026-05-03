Delivery-date: Sun, 03 May 2026 10:45:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS9-000U9a-2E
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:45:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSS6-0004b8-Hs
	for lore@pengutronix.de; Sun, 03 May 2026 10:45:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7CvQht2M1xCKOP4G5w88vMGs7MeLuhd9frV9yUUCsWo=; b=H+Ooul3/lkQPOQ2amxJjAXfeuk
	FO1kvpEF/nGKeEL37uYc9GRmA7YUKX9OsgQXakJtslZRPlfHo6lgybDoZvXowpNdFjI9ZQiwGA/Yi
	mvRzOL9t+Bd/XmFY7OeYSWf2PtxETfomeesbZOCcVn9LuSJH7Z14arYKUcdi/lx40KhbYRVc5FBjy
	FZHiirWC6mb+TBt0bOh6RK2MTJsNA4Q6ONEVkL9dcHSqkv5EYC4ZxcyKR/lSxjg+PzRfQBBg0siAI
	HZL1K/jxM42uD0RuJnox5Xdb1RPEsjtVUvRrEVKMrD30ExHqj4ZLa4UI4RflP3uxvaQx78GMx1Er5
	viVGLlxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRU-0000000AfC6-3WUf;
	Sun, 03 May 2026 08:44:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSRO-0000000Aevo-26Z6
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:44:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSRM-0003oP-Ln; Sun, 03 May 2026 10:44:40 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:33:22 +0200
Message-ID: <20260503084430.2765761-21-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503084430.2765761-1-a.fatoum@barebox.org>
References: <20260503084430.2765761-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_014442_555855_64CFE7D2 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/20] netconsole: suppress log message when opening console file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As is already being done for the framebuffer console, suppress log
messages when the device is briefly opened via echo.

Otherwise, a netconsole not activated for a CONSOLE_STD* stream,
would each time result in a log message.

We do not replay the dmesg, because if the output path works, the remote
side should be able to input a dmesg command.

This is unlike fbconsole, which has no input.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 net/netconsole.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index f2e9447526bf..62dd60806ebd 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -118,7 +118,8 @@ static int nc_open(struct console_device *cdev, unsigned activate)
 
 	net_udp_bind(priv->con, priv->port);
 
-	pr_info("netconsole initialized with %pI4:%d\n", &priv->ip, priv->port);
+	if (activate)
+		pr_info("netconsole initialized with %pI4:%d\n", &priv->ip, priv->port);
 
 	return 0;
 }
-- 
2.47.3



