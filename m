Delivery-date: Mon, 31 Mar 2025 19:27:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzIuq-006eeR-1N
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 19:27:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzIup-0007e0-TI
	for lore@pengutronix.de; Mon, 31 Mar 2025 19:27:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=15+JgJGNuzE++fNvtRmejW7z2XVbbPrqaEN1+OuKFIQ=; b=zKXV0E27m6yfkmcegB8LvL+9MG
	IKDunKi43+1gCUeQ25xDtTvbw+vPDt+gGaB1QSW/j+gCvj0Q0ulJIiZRZ9CsssRSAHuDiAWkbjFUR
	1Fr20zoUDmb3gmcfTSs8PywAK1x3BakISqsf4LowHgC4YN09ZzI8XZw9BfDhosNLVfBOeOkyfzmJs
	LlA4VrfOlCh92v9DxYcLuv4e57HmXnPmN//dPJetwVkfmhbEFk8hx/cqHcK2GxwSp/qNVBsUNWegv
	gxDD8oZ6hidz1YfR5w1jTAffbVhLJ+B/E2Bz7EpWKQZQUdmbczRcRbHhFsMYsSZfvr+qO3qimVde+
	bAl0jGYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzIu7-000000014G5-3NgB;
	Mon, 31 Mar 2025 17:26:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzIu4-000000014Fg-0g3H
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 17:26:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzIu0-0007V7-JQ; Mon, 31 Mar 2025 19:26:24 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzIu0-002dAr-1J;
	Mon, 31 Mar 2025 19:26:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzIu0-007kr5-10;
	Mon, 31 Mar 2025 19:26:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Mar 2025 19:26:22 +0200
Message-Id: <20250331172622.1848315-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_102628_202866_B5738130 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] hardening: add missing word in Kconfig comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Care needs to be [taken] was missing the verb.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig.hardening | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index ed280dd216d8..7567f3e9aaaf 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -3,7 +3,7 @@ menu "Hardening options"
 if HAS_INSECURE_DEFAULTS
 comment "This barebox configuration has CONFIG_HAS_INSECURE_DEFAULTS=y indicating"
 comment "that some of the configured options have potentially insecure defaults."
-comment "Extra care needs to be in secure booted systems."
+comment "Extra care needs to be taken in secure booted systems."
 endif
 
 config BUG_ON_DATA_CORRUPTION
-- 
2.39.5



