Delivery-date: Wed, 06 Aug 2025 16:04:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelA-007exa-0e
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:04:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujel9-00047s-Hv
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:04:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q34vMipn/FifpXCG8LdewJM/casTDDq8W0lMFW+MgYU=; b=GFatk5wnBWSlSUd1HfRqFYY2uG
	EhginX6vY7SJYQQkMR6pkIpRT0RY2b1KI2Me7RrNoD98lXajVRKaM4Iqja5NEr77N8/y2XBkkEbNc
	YT1RaJkGNGA8Y9bud+Eq9Uk+zsmMfLoO5TkOCL7BRcwDWS5v2BfwqcF3EcA9s9CwCNA5VgMQoTjzC
	Kxcvvu0or39kbExfomsIEcqQrFFQ2Oz7FFav94Tf94QRMxV+Iv355AlTZPlmDlIZXT8xSwKv+dkVD
	D2kvVnOm35PE3i5bCSeEDBpdsXA1EVsLRgJxE/SpCajYdP9uQc44SlbVTNROBGGN9QkHAYcZifc8O
	jo//Sagw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujekp-0000000FNi3-3KH1;
	Wed, 06 Aug 2025 14:04:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujegZ-0000000FMtA-3o9e
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:00:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujegY-0002eR-Kb; Wed, 06 Aug 2025 16:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 16:00:04 +0200
Message-Id: <20250806140005.2866622-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806140005.2866622-1-a.fatoum@barebox.org>
References: <20250806140005.2866622-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070007_951996_45E89C7A 
X-CRM114-Status: UNSURE (   7.25  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] security: password: make PBKDF2 the default instead of MD5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

MD5 was the first entry in the choice and thus automatically the
default. This is a bad idea, so make PBKDF2 the explicit default.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 security/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/security/Kconfig b/security/Kconfig
index 3e21e1416e2f..8cc8ca223896 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -59,6 +59,7 @@ if PASSWORD
 
 choice
 	prompt "passwd checksum"
+	default PASSWD_CRYPTO_PBKDF2
 
 config PASSWD_SUM_MD5
 	bool "MD5"
-- 
2.39.5



