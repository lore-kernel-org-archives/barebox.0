Delivery-date: Tue, 21 Oct 2025 17:28:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBEHk-00AILK-1e
	for lore@lore.pengutronix.de;
	Tue, 21 Oct 2025 17:28:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBEHj-0006qT-VY
	for lore@pengutronix.de; Tue, 21 Oct 2025 17:28:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7Cy/fnKLKnCz+TcG7BKgONntkvmFHBpXSOXO/TJ+y68=; b=rHWQzrxbl2TmRQK8KiC6Z/XGzI
	gwKrBZkbMuadkdV2xhuL49ZEfIyOhN6StLmtclOPs+0ofSsTN5BmSusd8ldlzeNTikL+X8ZitWHIz
	4reN/B6+ALoGyAqpJHo7xAqMqN2Tsqs4H7LxuSX7QWu+h4evng5hlrpAFXGhhLewO93u1WVmpSJjO
	lAhBqdBkbxGl+emLDZfJsezi9lTXZBAGuWRmOkBHrivgcFX5xwXUTH0XKCvbvo0+HMZat/fnO8yvc
	y4xiVPAYvT8pSGKVTiaU8mP/MbgWD0WB4YibUEUlDxbzp2ySgLlbHinuw+SjnvfnyYoEve41mpAIj
	Bmb75xAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBEHH-0000000HVfD-487p;
	Tue, 21 Oct 2025 15:27:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBEHE-0000000HVe5-3CvV
	for barebox@lists.infradead.org;
	Tue, 21 Oct 2025 15:27:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBEHD-0006iK-0R; Tue, 21 Oct 2025 17:27:55 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBEHC-004kJn-2d;
	Tue, 21 Oct 2025 17:27:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBEHC-00000005hHp-31gi;
	Tue, 21 Oct 2025 17:27:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Oct 2025 17:27:50 +0200
Message-ID: <20251021152753.1357904-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251021144106.1228193-2-f.pfitzner@pengutronix.de>
References: <20251021144106.1228193-2-f.pfitzner@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_082756_820742_C79BB4C4 
X-CRM114-Status: UNSURE (   9.36  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: i.MX: karo-tx6: use mmcboot handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Documentation: migration-2025.11.0: mention Karo bbu change

The existing method of hardcoding boot0 is not power-fail safe, so it's
hopefully not used by userspace to update the bootloader, but in any
case a warning sounds apt.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../migration-guides/migration-2025.11.0.rst        | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.11.0.rst b/Documentation/migration-guides/migration-2025.11.0.rst
index 9cbc46acc39b..a9c7abb66ef0 100644
--- a/Documentation/migration-guides/migration-2025.11.0.rst
+++ b/Documentation/migration-guides/migration-2025.11.0.rst
@@ -1,3 +1,6 @@
+Release v2025.11.0
+==================
+
 i.MX GPIOs
 ----------
 
@@ -5,3 +8,13 @@ Reading output GPIOs now returns the configured output level instead
 of reading back the input register. This aligns us with what Linux
 is doing, but may falsify readings of single-ended GPIOs that have
 the SION bit configured.
+
+Board support
+-------------
+
+Karo TX6X
+^^^^^^^^^
+
+The barebox update handler for this SoM no longer unconditionally updates
+/dev/mmc3.boot0, but instead it now updates the inactive boot partition
+on /dev/mmc3 and then sets it as active allowing for power-fail safety.
-- 
2.47.3



