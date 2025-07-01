Delivery-date: Tue, 01 Jul 2025 09:48:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWVje-00CtSG-0G
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 09:48:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWVjd-00053O-IP
	for lore@pengutronix.de; Tue, 01 Jul 2025 09:48:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PW7FwukzvVk8BvMfWcSREAMxxv4gSWEJTMdBFSnEiXQ=; b=hDtLGSdZU9r0zcWBdxIzEBWg1u
	uT7rYn/EDxoAmMveTuDMGKrY6sss1Aa6PQLhz10wZlz9rkO6U/vQHa88nwhkKSf0WpLonZEmaBMS2
	KQ/FgYfij+2K/RwpYVpUhIS2rr7GdX0ivpjWNMPVcKQE3eszZVfwJ6bGd0UIEeimCTF8UCmvtS9zD
	IBzCWKlHH2iTDL3DJBUhx9iOksMaryj2gM1EMxO4yA+OLQ4i6zpu1zgTFdnhe9+DdoW9D4crS85oV
	DVq8zvG0/4m+5oweAdh0OA+SSAoDrKuyCgRJmfZHmfutbQKcKZESP25n6/4ZE7RsAsTvMZE6lMUl5
	2TPabcbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWVio-00000004JRx-0b8c;
	Tue, 01 Jul 2025 07:48:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWVEQ-00000004FRh-0YsP
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 07:16:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWVEM-0006Cc-C3; Tue, 01 Jul 2025 09:16:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWVEM-006ETP-0b;
	Tue, 01 Jul 2025 09:16:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWVEM-001dg8-0F;
	Tue, 01 Jul 2025 09:16:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Jul 2025 09:16:37 +0200
Message-Id: <20250701071637.390845-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_001642_204992_089D78EF 
X-CRM114-Status: UNSURE (   8.43  )
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
Subject: [PATCH] common: drop duplicate inclusion of common/boards/Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Commit b3d50a2b40 ("common: factor out debugging options into separate
files") accidently added a second inclusion of common/boards/Kconfig.
Drop the duplicate.

Fixes: b3d50a2b40 ("common: factor out debugging options into separate files")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 0651f955dc..df5709faf9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1457,7 +1457,6 @@ endif
 endmenu
 
 source "common/Kconfig.debug"
-source "common/boards/Kconfig"
 
 config DDR_SPD
 	bool
-- 
2.39.5



