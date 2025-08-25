Delivery-date: Mon, 25 Aug 2025 17:56:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqZYH-004PQ9-0q
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 17:56:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqZYG-0003f3-3j
	for lore@pengutronix.de; Mon, 25 Aug 2025 17:56:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=i40JoNySJhooolvQ1HATDYqgxVp1c5sKCgQEO0xVgNc=; b=S6Xmi6hHDhojKG3q89+LsgY4LI
	xqLl9zqaY6ksymd6DLvgqVrkODz023PEG677Y6FnLzWWcuC+8+oP5h/Ume4N4eT+75FEmBCA+CA79
	TUJnOKbFgw76tbnqzc74kJCpI8SV6XKd6HCCMqgNGrprKCWeaP5B4tZF1bjqailrXv9K/BuJHcvo+
	Ba0c1E9lOdDjtPC/xjt5z3V9h6aydFFDzoc8EG/zlVhHiDT55DQszkcPSmi2ZXahFYJSHa/ZrvOv5
	F1aoTTqcE2cQAxK00ObTra2AfDg46ok6DkNidR/SMBpiH0uVR+LREZyndXvdDuqMCrgDmWPDnFBgw
	8zpljLDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqZXm-00000008Zw2-1nD8;
	Mon, 25 Aug 2025 15:55:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqYrJ-00000008TBq-2Z3t
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 15:11:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqYrI-0005Qg-BI; Mon, 25 Aug 2025 17:11:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqYrI-0025S6-0X;
	Mon, 25 Aug 2025 17:11:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqYrI-0000000FEGH-07TX;
	Mon, 25 Aug 2025 17:11:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 25 Aug 2025 17:11:42 +0200
Message-ID: <20250825151143.3629734-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_081145_646798_8C73D49B 
X-CRM114-Status: GOOD (  10.60  )
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
Subject: [PATCH] logo: work around broken inkscape in Debian Trixie
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This works around a broken inkscape in Debian Trixie. With
Inkscape 1.4 (e7c3feb100, 2024-10-09). When executing multiple inkscape
instances in parallel it often fails with:

terminate called after throwing an instance of 'Gio::DBus::Error'

This is described in [1] and this patch utilizes a workaround from this
thread.

[1] https://gitlab.com/inkscape/inkscape/-/issues/4716

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/logo/Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/logo/Makefile b/lib/logo/Makefile
index 9c14105e88..9792a4699f 100644
--- a/lib/logo/Makefile
+++ b/lib/logo/Makefile
@@ -68,8 +68,11 @@ quiet_cmd_bmp = BMP     $@
 %.bmp: $(srctree)/Documentation/barebox.svg FORCE
 	$(call if_changed,bmp)
 
+# export SELF_CALL=xxx works around issue in [1]. This is seen on Debian Trixie
+# with Inkscape 1.4 (e7c3feb100, 2024-10-09)
+# [1] https://gitlab.com/inkscape/inkscape/-/issues/4716
 quiet_cmd_png = PNG     $@
-      cmd_png =	convert $(OPTS_$(@F:.png=)) $(CONVERTOPTS) $< png:$@
+      cmd_png =	export SELF_CALL=xxx ; convert $(OPTS_$(@F:.png=)) $(CONVERTOPTS) $< png:$@
 
 %.png: $(srctree)/Documentation/barebox.svg FORCE
 	$(call if_changed,png)
-- 
2.47.2



