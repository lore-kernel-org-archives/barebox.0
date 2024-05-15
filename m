Delivery-date: Wed, 15 May 2024 08:08:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oH-00FPXx-00
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 08:08:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s77oG-0005E9-EJ
	for lore@pengutronix.de; Wed, 15 May 2024 08:08:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HmxVdwiJa3DITAoHCyIstIfAKOPraKN/YchrxKE++AY=; b=ukKbV3TpF1nYzzH++bG7MbOjxQ
	TRIT0bvQLYgdco7zomiQpDwldweIjmFIXFr3MhSkvUXEVyAjI9SvO/7LnazxgXSYk2dSE2HxryDEb
	CqbrvY5WD/YFb9vvnqYQOot/1kr6OuqPs+hZBugXTPsC1EHO6gEyK8ygm0KOapwB9hD8J8uslV+t9
	ASuryFZM6ynhcrW9e87kozV5iLALvKowG2GD0mueP4utkO2PIEE8fnHHDqIrDwbA6M1j2DpXUzn7i
	tkMfhSgX/MkCFGLCOQ09QVqYqIYyQ+8pgf1eJ/HIg+YnVjceisVZINJhJkBjvY2iz3Uck+Lx71eEB
	LakcGUXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77nq-00000000bxv-0Uek;
	Wed, 15 May 2024 06:07:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s77nj-00000000bwb-3i8v
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 06:07:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77ng-00053A-Af; Wed, 15 May 2024 08:07:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77ne-001UGA-Ty; Wed, 15 May 2024 08:07:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s77ne-00F1PT-2h;
	Wed, 15 May 2024 08:07:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 08:07:36 +0200
Message-Id: <20240515060736.3580327-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_230743_946597_40F2451A 
X-CRM114-Status: UNSURE (   8.74  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: boards: wolfvision: use state_by_alias instead of opencoding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces no functional change, but makes code a bit more compact.

Cc: Michael Riesch <michael.riesch@wolfvision.net>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boards/wolfvision/common.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
index f483918cecfe..5484a8ac6b06 100644
--- a/common/boards/wolfvision/common.c
+++ b/common/boards/wolfvision/common.c
@@ -62,11 +62,7 @@ int wolfvision_register_ethaddr(void)
 	char mac[ETH_ALEN];
 	int ret;
 
-	ret = of_device_ensure_probed_by_alias("state");
-	if (ret)
-		return ret;
-
-	state = state_by_name("state");
+	state = state_by_alias("state");
 	if (!state)
 		return -ENOENT;
 
-- 
2.39.2



