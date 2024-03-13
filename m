Delivery-date: Wed, 13 Mar 2024 20:56:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiR-004oTz-2f
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 20:56:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiR-0003td-9O
	for lore@pengutronix.de; Wed, 13 Mar 2024 20:56:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4lxTI/wggpHGrjhOl+cWf7J6K17quZU1VSGjWOoa70w=; b=hVhy+2F0eFzaPqXPlYQyBJGx3t
	hxX2h+7KBO/7zQKXwtSR9H1EwvZGy7kuVmfW3Zmskxsy/1IsjlKvwqFRa0RI1dVbbtyt2QhziqDhY
	0djaqTxC6zV2Ff3i3sci7zX4mziy6A5fkxklXtMz0MZWFgQ95xkHypm6QRHL2t98Yg5M+LcJk/HWM
	/RXIlFvovFwp5qzM+M9Q8ZbR1ulHth2RcaeSwuHpwATYl1LH9BVbc8ZLR0mcBLlCR1CEa+NZ0B73j
	5zqhfBwrDBFpD49LoaUWIlEtAl9rR89X+UvUNc/ptZ3TgCekUlVLM1cuDaL+9neh31L7im+oKdS7B
	ekakJMEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUhz-0000000BifJ-2qoT;
	Wed, 13 Mar 2024 19:56:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUht-0000000BicP-01gF
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 19:56:11 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rkUhr-00037i-Ry
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 20:56:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 20:56:05 +0100
Message-Id: <20240313195606.3911219-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313195606.3911219-1-m.felsch@pengutronix.de>
References: <20240313195606.3911219-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_125609_519164_EDBA4037 
X-CRM114-Status: UNSURE (   9.73  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] startup: fix autoboot_state in case of abort
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently do_autoboot_countdown() always returns AUTOBOOT_BOOT if no
interactive console was found which is wrong if global_autoboot_state
was set to AUTOBOOT_ABORT. Fix this by checking the
global_autoboot_state as well.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/startup.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/startup.c b/common/startup.c
index bbba72f89255..d7f7b5163e87 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -174,7 +174,8 @@ enum autoboot_state do_autoboot_countdown(void)
 	if (autoboot_state != AUTOBOOT_UNKNOWN)
 		return autoboot_state;
 
-	if (!console_get_first_active()) {
+	if (!console_get_first_active() &&
+	    global_autoboot_state != AUTOBOOT_ABORT) {
 		printf("\nNon-interactive console, booting system\n");
 		return autoboot_state = AUTOBOOT_BOOT;
 	}
-- 
2.39.2



