Delivery-date: Wed, 11 Feb 2026 11:03:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq745-000UZj-32
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 11:03:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq746-0004QV-9G
	for lore@pengutronix.de; Wed, 11 Feb 2026 11:03:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9kBUn9IsyXn1r6O0C8yv7AaiahRRoHF51XR2/XsMR0Y=; b=LEmZMvHXQpxstezSl8/SQ6QcqK
	O53yMz9pknLTgRK+Co2KBXdK4coBFY46Q/uTFbZAJYKH+DnZG7UuTW8xK+Vo1u5+vt1ZlA7qH8mIX
	sdvuMoUz7V4WhM8mgoF1sbNG48oQXBauSbUXpAP3E0c9aUedu6jRZU3Dt7UhmupoLcbi6HJgCJN4Y
	7sSCXtVFRvJ4Pf6nWOoXejGP1Q/0+lI8GSbQJR9VCEo0LEuQOW1FD4U281mS8XSp0tJXAcsiZFeZV
	1GYLOuQ9BiIepc9Lah1kt9IJlUhD4vXuUYOII1DRIDgTpyp7XXSoyUREpsSV6pW/pfCB0HMUjDUDV
	Pj2VVvdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq73i-00000000TOC-2WN9;
	Wed, 11 Feb 2026 10:02:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq73g-00000000TNt-05bN
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 10:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vq73e-0004L0-4H; Wed, 11 Feb 2026 11:02:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vq73c-000Due-0H;
	Wed, 11 Feb 2026 11:02:53 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vq73d-00000001fxx-1MWo;
	Wed, 11 Feb 2026 11:02:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	9l@9lo.re
Date: Wed, 11 Feb 2026 11:02:51 +0100
Message-ID: <20260211100252.399635-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_020256_064147_B314248B 
X-CRM114-Status: UNSURE (   9.91  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] boot: guard net in global.boot.default behind CONFIG_NET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If CONFIG_NET is disabled, there is little reason to have net in
global.boot.default, so omit it in that case.

CONFIG_NET on its own is not sufficient for net to work by default (ifup
and TFTP are needed in the default case), but we don't want to reflect
all the script dependencies in Kconfig.

Reported-by: <9l@9lo.re>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index 78d990f1617e..8679a594bb76 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -147,7 +147,8 @@ static int init_boot(void)
 			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "bootsource ")
 			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.builtin.nonbootsource ")
 			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.removable.nonbootsource ")
-			"net"
+			IF_ENABLED(CONFIG_NET,                 "net")
+			""
 		);
 
 	globalvar_add_simple_string("boot.default", &global_boot_default);
-- 
2.47.3



