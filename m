Delivery-date: Wed, 03 Jan 2024 11:14:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyGt-001mPf-2E
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:14:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyGs-00028i-M4
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:14:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pJQ9awoLo6DoGxIr9m/vmhtQCSCHRhYafY1Z8V7aTl8=; b=JmkFCNt2I3f7bUZWsTyJ5F6JM/
	amUkR5m3A4Z0thb5qhPhmXoNCBwKsH4Xm0Q+YSnitUerUSgFZY8r/+law/OaBgnm0oU+Tv8inFqz/
	ZjdjZC5m0ON9ZsBvabR3+C6iEhHnw1Y0V/cINWzHfKsg2cmL2qW7sojNYZNEFqJKYZmmeI/Bs628I
	jd4RUnWjFgzGp2y8ZhnhkXjzq6ZrD8xoes+hokY/7PdsxCnht7DYkEVt5+NE0+38lTwgy8+a/hh13
	7cAioymmHZCyS5DrP24nY3cvY/OSKcraelIrmNqXEBwpzKAImJQuZlv9uTmal/DVUb2nR+EDLZveQ
	5LHY6zig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyFe-00ALdL-14;
	Wed, 03 Jan 2024 10:13:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyFb-00ALcd-32
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:13:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFa-0001eB-Or; Wed, 03 Jan 2024 11:13:26 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFa-0005vc-Cb; Wed, 03 Jan 2024 11:13:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyFa-00B1sj-0y;
	Wed, 03 Jan 2024 11:13:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:13:24 +0100
Message-Id: <20240103101324.2628829-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021327_982043_55DB744A 
X-CRM114-Status: GOOD (  10.88  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] lib: stackprotector: adjust Kconfig text for barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The reference to kernel panic is taken from the original Linux Kconfig
help text. Leaving it as-is may be confusing, so adjust it for barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig.hardening | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index f14b256a7d91..7f74d0d98a9c 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -30,7 +30,7 @@ config STACKPROTECTOR_STRONG
 	  the value just before actually returning.  Stack based buffer
 	  overflows (that need to overwrite this return address) now also
 	  overwrite the canary, which gets detected and the attack is then
-	  neutralized via a kernel panic.
+	  neutralized via a barebox panic.
 
 	  Functions will have the stack-protector canary logic added in any
 	  of the following conditions:
@@ -78,7 +78,7 @@ config PBL_STACKPROTECTOR_STRONG
 	  the value just before actually returning.  Stack based buffer
 	  overflows (that need to overwrite this return address) now also
 	  overwrite the canary, which gets detected and the attack is then
-	  neutralized via a kernel panic.
+	  neutralized via a barebox panic.
 
 	  Functions will have the stack-protector canary logic added in any
 	  of the following conditions:
-- 
2.39.2



