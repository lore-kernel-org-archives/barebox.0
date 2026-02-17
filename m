Delivery-date: Tue, 17 Feb 2026 13:12:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsJw3-002g8K-2q
	for lore@lore.pengutronix.de;
	Tue, 17 Feb 2026 13:12:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vsJw4-0005co-6u
	for lore@pengutronix.de; Tue, 17 Feb 2026 13:12:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3EKlb3QNpIRnV2gWREBxmlGtUvMk6VkHoHPjnQMSYA4=; b=ramQGPLAHwHMWXCp5siGVpD/t/
	SOFEJig6dV3d/Z/Bj7f3lW49r00C+1UUeuoWMchCLJxUj6f8bQ5IG4MBm8SBhEvCbXOZTLKSCe2C7
	ZjTCDb10i5otBBAO4uH80/flv4/nmZnDgS9Jq7Kf+RK2UlN2vT59vaxQsnxeyfwxrDoIzFNdIsnSu
	SJoYpDzBTBBMT3BZdvW+TdR28LF5Fca85Xw3TaU1RTCcslBddMUaG6k++gdSKb4GIFRsxYgXzPF3p
	k4B/MtInV8kaDmXuNtyE7vYgVGq6uoZUI+r4++ZX1KSxPM6p4EP1v3EMpK7Ph9NiVRe4+gIRycE/u
	0pLoY92w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsJvQ-00000008Ats-2wAL;
	Tue, 17 Feb 2026 12:11:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsJvN-00000008AtO-3KrL
	for barebox@lists.infradead.org;
	Tue, 17 Feb 2026 12:11:30 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vsJvK-0005VT-Q3; Tue, 17 Feb 2026 13:11:26 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 17 Feb 2026 13:11:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260217-scripts-kconfig-keytoc-help-v1-1-ea5f6e9414a6@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAO1alGkC/x3MQQqAIBAAwK/EnltIi6S+Eh3CtloKFTeiCP+ed
 JzLvCAUmQT64oVIFwt7l6HKAuw2uZWQ52zQlW4rrQyKjRxOwd16t/CKOz2nt7jREbDuTN2qyVA
 zN5CHEGnh+9+HMaUPJE17y20AAAA=
X-Change-ID: 20260217-scripts-kconfig-keytoc-help-397361a7e4d4
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=934; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=uM7UYHRfr93maeoE3SFjoUmtkiZdggptT5O4uUEmro0=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsicEvXO0NOiycI181+RuGkh48fJ7rFlfNcmaEyp+PT/6
 rzPjULsHaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgIlIRDD80zsX+uKawZ60pwVN
 h5zsJwROWpRW4v3kX5l13a09Pyctbmb4K6B8PkFvwaOCkhuPov7EHc5aydP6Tijx1fon5oy/ziz
 s5QcA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_041129_841588_18CF8B54 
X-CRM114-Status: UNSURE (   9.67  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: Kconfig: Update help text for ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We're also supporting ECDSA in keytoc and within barebox so calling it
an "RSA to C converter" is a bit misleading.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 scripts/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Kconfig b/scripts/Kconfig
index 738f69585b..2972d5dbc7 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -104,7 +104,7 @@ config QOICONV
 	  This enable converting png to qoi images to generate boot logo.
 
 config KEYTOC
-	bool "RSA to C converter" if COMPILE_HOST_TOOLS
+	bool "PEM to C converter" if COMPILE_HOST_TOOLS
 	help
 	  This utility converts public keys in PEM format to either C or
 	  device tree snippets. This requires OpenSSL on the build host

---
base-commit: 74393178faf08f8102c7c370ac310c29112e1137
change-id: 20260217-scripts-kconfig-keytoc-help-397361a7e4d4

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



