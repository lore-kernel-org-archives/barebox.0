Delivery-date: Wed, 18 Mar 2026 16:54:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2tDt-002FvB-34
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 16:54:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2tDt-00079U-DU
	for lore@pengutronix.de; Wed, 18 Mar 2026 16:54:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/ugR9SsbTlX1OmnecZvd7SBr2NFe0vnuxzzHcUTofd4=; b=TSGu7rO1ET/xiI
	+nOuLakEtaS4dKofAQrJyGHmgQH11mH483RQXoSm9OoaIik17M1K1HF2GR0JKejL7Bh5QhPGDR2zX
	Qze+KxvdvGpWEQlzmT11s4Hu84dm68B6a3AeY+DDj4YwsWGa0sdslv1i6q+4mxbUZpWqCtAb9gCrn
	UmCTOr5D0paBclbPiGQGnSc0XB6YmK6g88QxAp7po1MUYXXnis/U2lgTMObEV70x06u4Mxhc4PUhX
	N8Z3KYWzt7P/3uwc2rsbTlizIUrh2OhZql1KoEM3xW/V7JXA9LR7+dxlkBqeTPGDk5EqbGOzIDB+5
	k7Q3weSJUuE6MfykeJPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2tDO-00000008nux-1rNp;
	Wed, 18 Mar 2026 15:53:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2tDM-00000008nts-2kYy
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 15:53:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2tDK-00073B-Oo; Wed, 18 Mar 2026 16:53:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2tDK-000vq2-1s;
	Wed, 18 Mar 2026 16:53:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2tDK-0000000ECOx-1ztT;
	Wed, 18 Mar 2026 16:53:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Mar 2026 16:53:41 +0100
Message-ID: <20260318155341.3384253-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_085344_692616_C6196913 
X-CRM114-Status: UNSURE (   8.86  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! defaultenv: base: add new devboot script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

defaultenv: base: devel: drop incomplete boot target

If boot.default is set to devel, what's the boot.default the boot
command uses...?

This boot target doesn't make sense and the alternative is for users to
write their own boot script, so drop the target and references to it.

Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/devboot.rst          | 3 ---
 defaultenv/defaultenv-2-base/boot/devel | 3 ---
 2 files changed, 6 deletions(-)
 mode change 100755 => 100644 defaultenv/defaultenv-2-base/boot/devel

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index 4425f0ebe91a..550ab9120576 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -140,9 +140,6 @@ Usage
   # Boot from the default boot entry
   devboot
 
-  # Make devboot the default for subsequent boots
-  nv.boot.default=devel
-
 Configuration script
 ^^^^^^^^^^^^^^^^^^^^
 
diff --git a/defaultenv/defaultenv-2-base/boot/devel b/defaultenv/defaultenv-2-base/boot/devel
old mode 100755
new mode 100644
index 9bcaaffb5870..e69de29bb2d1
--- a/defaultenv/defaultenv-2-base/boot/devel
+++ b/defaultenv/defaultenv-2-base/boot/devel
@@ -1,3 +0,0 @@
-#!/bin/sh
-
-devboot
-- 
2.47.3



