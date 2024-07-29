Delivery-date: Mon, 29 Jul 2024 16:42:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRaL-004A1l-0R
	for lore@lore.pengutronix.de;
	Mon, 29 Jul 2024 16:42:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRaK-0001jt-J7
	for lore@pengutronix.de; Mon, 29 Jul 2024 16:42:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nph94DhjmzsrjBxGHg7cUwhu6ZZEJr8609JWkbmQ/VM=; b=n41OoujUNCX5AZayi26xVBQnml
	HLpyW3uuWZ9GJGgaz86biFnO2tJqe/CNu1Z2Trq9qeaCaeHkjtgrtVDRiuFuvSWidbVZDXbE1D6Ri
	UNMVKy1MaZl4ymylYkEOqb2KemA+ctS8kvHboi4vhFKprXd7RYNw5cln2JL+H2quyITfp/ULuPvMC
	8yvxpKj9wd3f4/L2jX/KFqECftYl46FY5MMaNt9akRMK9LEhS0mL59zyj70Hxd0HEPCCww8PJm6R+
	SUo0Y2wK/kPEK/Px+P2zn0WU9EFHTpxZvxorUALbnMtg9ED9jSTxXcYOJkiO9E18llvISeAPA5ILd
	mUK5SYHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRZn-0000000Bh6F-0Wuk;
	Mon, 29 Jul 2024 14:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRO6-0000000BbY4-1Tua
	for barebox@lists.infradead.org;
	Mon, 29 Jul 2024 14:30:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRO4-0000Oj-PW; Mon, 29 Jul 2024 16:30:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRO4-00349L-CV; Mon, 29 Jul 2024 16:30:08 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRO4-006XJu-0x;
	Mon, 29 Jul 2024 16:30:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Jul 2024 16:30:07 +0200
Message-Id: <20240729143007.1558035-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240729143007.1558035-1-a.fatoum@pengutronix.de>
References: <20240729143007.1558035-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_073010_418296_633D57EE 
X-CRM114-Status: UNSURE (   8.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] watchdog: imxwd: populate device pointer when registering restart handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To make it possible to select a specific i.MX watchdog by device name,
when multiple were registered, populate the new optional
struct restart_handler::dev member.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/imxwd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
index 616248af3863..2ec9d0d59635 100644
--- a/drivers/watchdog/imxwd.c
+++ b/drivers/watchdog/imxwd.c
@@ -306,6 +306,7 @@ static int imx_wd_probe(struct device *dev)
 	priv->restart.name = "imxwd";
 	priv->restart.restart = imxwd_force_soc_reset;
 	priv->restart.priority = RESTART_DEFAULT_PRIORITY;
+	priv->restart.dev = &priv->wd.dev;
 
 	restart_handler_register(&priv->restart);
 
-- 
2.39.2



