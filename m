Delivery-date: Fri, 22 May 2026 09:23:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQKEH-002WNl-34
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 09:23:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQKEH-0002Fq-70
	for lore@pengutronix.de; Fri, 22 May 2026 09:23:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CMnScjJ9Exeiq2c/BsM33vsXLsVR9S0KHLcH+30pSUc=; b=cxdUwtDVTSVYDuWU5JTfw7HXR/
	ykxZdxTfbdzNE60uaTf2iAWiZeZoYJMJOMdqVvOrHd5uJxLKo2zbny9jF4dEQ+9gP4lVCPikB1WBL
	2Dr+mJWnwFSwRbPpNif24INpetAB/BPuxJ9mCX4xrGItF+fZGdcBqKmEn8bD/+XH0GLK+LEOsXmUa
	ZFHUzCGHFkXzPgCNGXdWRyrrMkcwK3rP+7Grda2uf+TzaOKAdHDbVLo38x72dzez0HnTBo/BrGqze
	kLQnQChcdURev1++MvrL9Alc8YiJQVb5Akkix61qQh73hJhCcX3hZAMaIzV/n+snpNp2z46fpOH/y
	gXkEkmow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQKD0-0000000A4PS-1Hq7;
	Fri, 22 May 2026 07:22:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQKCx-0000000A4Oo-1UVM
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 07:22:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQKCu-0001zL-Cj; Fri, 22 May 2026 09:22:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQKCt-001EOV-2V;
	Fri, 22 May 2026 09:22:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQKCu-00000009VHM-10mz;
	Fri, 22 May 2026 09:22:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 09:22:06 +0200
Message-ID: <20260522072207.2265178-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_002211_392162_D6382F39 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] common: env: make ENV_HANDLING_AUTOPROBE default to INSECURE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The CONFIG_ prefix is not used inside Kconfig, but outside in Makefiles
and preprocessor symbols.

Drop it, so ENV_HANDLING_AUTOPROBE correctly changes with regards to
CONFIG_INSECURE=y.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4bed5644c280..bfca650c49cc 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -990,7 +990,7 @@ config ENV_HANDLING
 config ENV_HANDLING_AUTOPROBE
 	depends on ENV_HANDLING
 	bool "Autoprobe for environment devices"
-	default CONFIG_INSECURE
+	default INSECURE
 	help
 	  There are two ways for specifying where the barebox environment is. The first one
 	  specifies the path explicitly in the device tree or board code. The other one is
-- 
2.47.3



