Delivery-date: Thu, 14 Aug 2025 17:37:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0o-000YGe-0R
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:37:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma0m-00044W-V4
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:37:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/BNhDmFs16sbpnN2ZGy7bn6eptRNwbGsdj0WeH78Sfg=; b=fwhbj4NxN839nOzJSNwpBQ2yrl
	u+y6e4y0I7sH0xbO2vt2+cC1xOPCY5F15ZshCwotpzNIKoD9VSKs7moBq031qwC3bAQKu0E55AV9C
	8rN0pzZRfhpIJng8DdVfuI8YCAsUVduG3PYNa0L45ymtuBZm3NMvcKplUhEBIz2F5f/y3dQfGJnjS
	P1hKrc+kBhUXmUqYMaPLKt67Qg18wrU9ps6NL1fNTHsARMzolohdf5AwpHSgTWzyrBi3Bg8bogeob
	vu63RPqC5oudyGadTvXIkupz4x9itV9+i97Y4tHHmXqB28a+0OU6rtZnyUiGz0inskGwn+Qx9sjFW
	bvGR9yFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uma0M-0000000HSl0-0xMy;
	Thu, 14 Aug 2025 15:36:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVTw-0000000Gdwj-3PiN
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:46:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-0000Na-Ks; Thu, 14 Aug 2025 12:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-000Ewv-1C;
	Thu, 14 Aug 2025 12:46:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-004nMh-0s;
	Thu, 14 Aug 2025 12:46:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Aug 2025 12:46:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-k3-am62l-updates-v1-3-9934277d8757@pengutronix.de>
References: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
In-Reply-To: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755168411; l=1885;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=QJ4kNUBS1YkFVAYv9zpsN7+bJofCKsLJe9u0beYOzCw=;
 b=ZZm7sVrMgCS8r9I3qNwjXqG4Y3iawypDdLGQHMl7tBa0L0emgTYsgZLAbmbvxOG9BgHcGJKYv
 CRxS8EhJYFlCM9U2f4CB4IEvOC07ZeOzmU4Clz7hrYxcGnBG3rbWRzF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_034652_873512_57FC3DF2 
X-CRM114-Status: UNSURE (   9.03  )
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
Subject: [PATCH 3/6] ARM: k3: allow to pass custom signing keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By default the AM62x images are signed with default TI development keys.
Allow to sign the images with custom keys for future secure boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Kconfig | 22 ++++++++++++++++++++++
 images/Makefile.k3       |  4 ++++
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 338421a8af1715c72a23adc41fb7a21d69091585..281068071e4ef617f5fe5006b225428c7e2d17c1 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -66,4 +66,26 @@ config ARCH_K3_COMMAND_AUTHENTICATE
 	  Add k3_authenticate_image command to test authenticating images
 	  against the K3 ROM API.
 
+choice
+	prompt "Select signing key"
+	default ARCH_K3_SIGNING_KEY_TI_DEVEL
+
+config ARCH_K3_SIGNING_KEY_TI_DEVEL
+	bool "Use TI devel key for signing (arch/arm/mach-k3/custMpk.pem)"
+	help
+	  Use the TI provided devel key for signing the bootable certificates
+
+config ARCH_K3_SIGNING_KEY_CUSTOM
+	bool "Specify custom key for signing"
+	help
+	  Use custom keys for signing the bootable certificates
+
+endchoice
+
+config ARCH_K3_SIGNING_KEY
+	string "Signing key"
+	depends on ARCH_K3_SIGNING_KEY_CUSTOM
+	help
+	  Path or PKS#11 uri for the signing keys
+
 endmenu
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 0024cefa3687778487749f39b1c5bb57d490ec10..05b645f6d48b0594eec2af1208825c1d551a1dff 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -17,7 +17,11 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
 
 endif
 
+ifdef CONFIG_ARCH_K3_SIGNING_KEY_TI_DEVEL
 KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
+else
+KEY_custmpk="$(CONFIG_ARCH_K3_SIGNING_KEY)"
+endif
 KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
 
 ifdef CONFIG_MACH_K3_CORTEX_R5

-- 
2.39.5



