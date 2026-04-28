Delivery-date: Tue, 28 Apr 2026 11:24:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHegd-00HH0g-2t
	for lore@lore.pengutronix.de;
	Tue, 28 Apr 2026 11:24:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHegd-0006KH-C9
	for lore@pengutronix.de; Tue, 28 Apr 2026 11:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dUM3UccdG4lL6BsiFMVY7NbYVAyh+Qe74aSNi/qthB4=; b=nDE1XIiOmrxfrJiKr2WxdrJQLg
	zP3ISmOdVQXuExZdqpdkxZkX4IqQWk7CP7PdYo148HukL6FFervweRHaaAxeABDtKhi4MpMgaO6u7
	NR+3ti5hnTck60sahhM/tzm+YIC41Nt8L19RWPDPcHoECP2sAg24ZYltG6EbbKT7libR7nvwUkEe7
	zjasEO/ZZearPmqpGit2mPzhdcRAWWyufOzv3nbcj0/cbdEIB3vKMcyFVLVqbiwAP9wjcd4is7ja9
	XoSZvNH12TcYZxC1D8/FYofz3upv0EtRJZgOS94pLI5k/vOugCj7V+9vkEifAp+EFPen/jYn0H6dK
	W3ibsR2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHefx-00000001551-3iu9;
	Tue, 28 Apr 2026 09:24:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHefv-0000000153x-16Qm
	for barebox@lists.infradead.org;
	Tue, 28 Apr 2026 09:24:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-0005ws-PS; Tue, 28 Apr 2026 11:24:11 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-007dfB-0f;
	Tue, 28 Apr 2026 11:24:11 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-000000093nw-0XoI;
	Tue, 28 Apr 2026 11:24:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2026 11:24:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260428-env-autoprobe-v1-1-9cdedfa0752e@pengutronix.de>
References: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
In-Reply-To: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777368251; l=808;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=pPvA8YLpf8ALz75vciGXshK8fsuSdpWoW1WFaT8subA=;
 b=C+gL+1oqSKd9rAJ7zHDk/AQm9XWhBuBrL17samrv7iDibxKAszH7mxoRow1/gMOVKNwMDKjjc
 pYGh02FYq+xBz9lbMfqFhjIw3OIZmUWS8P5ZW4Y6pZXAebLmblnfUh6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_022415_307387_376190BE 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] environment: Drop /dev/env0 default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since [1] all boards that want to use /dev/env0 as environment path do so
explicitly, so we can drop the default fallback to /dev/env0.

[1] c31204804b ("environment: explicitly set env path to /dev/env0 where used")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index ec14d0629a..207b58e743 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -132,8 +132,6 @@ const char *default_environment_path_get(void)
 	cdev = default_environment_path_search();
 	if (cdev)
 		default_environment_path = basprintf("/dev/%s", cdev->name);
-	else
-		default_environment_path = xstrdup("/dev/env0");
 
 	return default_environment_path;
 }

-- 
2.47.3



