Delivery-date: Tue, 01 Jul 2025 12:12:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXyq-00CvfO-3B
	for lore@lore.pengutronix.de;
	Tue, 01 Jul 2025 12:12:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWXyq-0005gQ-E2
	for lore@pengutronix.de; Tue, 01 Jul 2025 12:12:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F36KovUOxkzSMLiKViOeldXfNe3gvNxz6goF3XmHfFA=; b=A4wF8ESgIIffvsvzFbT/auFg4X
	di1+baCGib86ZY8Kc6YRlrUGhRPddlbCzOh1Q+iGb5RRMQ2F2LLl5oRbKMnPaqYbu65EIsRy/pQ5p
	kpeIMbvb90dp6UsYiyrZXc+Y8MjGJwjhzlt8skiVOw3Esjddwsy7swgj2LBLag6oM9zcl3q90CK6O
	jBk+mnQxICGTF85uInBROpfvErmrRtEYFV8w/y/1ZCMU3cXmpU0g1yS+LhkBLDXMtZaxGgw1/hvCc
	uHIXglRwtDohZxxOgWeHD4FMSKpBfPUhO5IAGaXtIFJd7u5NPyR+WWVJGvawerhahxbVnMZEoDZrG
	xKiCZMsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWXyM-00000004iMg-3IuT;
	Tue, 01 Jul 2025 10:12:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWXyF-00000004iKq-36We
	for barebox@lists.infradead.org;
	Tue, 01 Jul 2025 10:12:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1uWXyD-00051u-6c; Tue, 01 Jul 2025 12:12:09 +0200
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1uWXyD-006FnL-02;
	Tue, 01 Jul 2025 12:12:09 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1uWXyC-0026nH-2n;
	Tue, 01 Jul 2025 12:12:08 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Jul 2025 12:12:01 +0200
Message-Id: <20250701101201.502762-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_031211_776704_E6C2FFC6 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: Kconfig: fix location of FILETYPE_STRINGS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It erroneously slipped into menu "OP-TEE loading".

Fixes: 09702e4a00ec ("filetype: make file type strings optional")
Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 39a597bb704f..65fa30d23659 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1418,6 +1418,8 @@ config PBL_OPTEE
 	  The trampoline for jumping back from OP-TEE to barebox does currently
 	  not handle THUMB2, so barebox must be built either for A32 or A64.
 
+endmenu
+
 config FILETYPE_STRINGS
 	bool "Print file types as strings"
 	default y
@@ -1426,8 +1428,6 @@ config FILETYPE_STRINGS
 	  Say yes here to include strings for filetypes in barebox. If disabled file
 	  types will be printed as numbers only.
 
-endmenu
-
 if FASTBOOT_BASE
 
 menu "Android Fastboot"
-- 
2.39.5



