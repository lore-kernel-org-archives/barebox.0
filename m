Delivery-date: Thu, 06 Nov 2025 08:31:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGuSs-00FrYd-1R
	for lore@lore.pengutronix.de;
	Thu, 06 Nov 2025 08:31:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGuSr-0008RK-Rn
	for lore@pengutronix.de; Thu, 06 Nov 2025 08:31:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qBALkKdfQjBgfSCprIWJHPLg68kBracRS3SHCB5hu08=; b=YCkFqjH9fvjDs4P45u/0hpGjyV
	wi79Bf7WE0gqn9jVRihfRfPLBkaox4h7S6ilvoA8v83LPKLLqWBVx7l1JGZ3VNWTmXywqFMO9NcMI
	jv9g+vj5BuFsf466UZ5GVOtr23hgH1h2bYcAxWfp/DIsjQasDKRzaxyygk9YAp4G85LrPS+DVvrrm
	ZONaHeeX+SpfRtbEEux8LUGS/ezO3E+nUSgCdQKvEGv9notZMGQLBDfR9WMunXcd8Hkb/iAViRUIQ
	8p7V2YHIH9GazgZJx9eQ/sdZvanFZSZDg/D1T2AHMvJRMj7XrZtCYbCypZflwG0ZKwm7ydECcLwBu
	ZyekesIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuSC-0000000F0aI-0gqg;
	Thu, 06 Nov 2025 07:30:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGuS8-0000000F0Zx-2CfD
	for barebox@lists.infradead.org;
	Thu, 06 Nov 2025 07:30:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuS4-0008Lr-Ox; Thu, 06 Nov 2025 08:30:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuS4-007KB9-1s;
	Thu, 06 Nov 2025 08:30:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGuS4-0000000F1Yq-3qHS;
	Thu, 06 Nov 2025 08:30:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 Nov 2025 08:30:35 +0100
Message-ID: <20251106073035.3580913-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_233040_568057_7BFEBE39 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: allow to take signing key from environment variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a new Kconfig option CONFIG_ARCH_K3_SIGNING_KEY_ENV. With
this option enabled the content of CONFIG_ARCH_K3_SIGNING_KEY is treated
as the name of an environment variable from which the private key
file/uri is taken. This allows for better integration with build
systems.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Kconfig |  8 ++++++++
 images/Makefile.k3       | 12 +++++++++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index ecd77d8d9a..58f6ba827d 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -81,6 +81,14 @@ config ARCH_K3_SIGNING_KEY_CUSTOM
 
 endchoice
 
+config ARCH_K3_SIGNING_KEY_ENV
+	bool "Specify signing key in environment"
+	depends on ARCH_K3_SIGNING_KEY_CUSTOM
+	help
+	  If this option is enabled the content of CONFIG_ARCH_K3_SIGNING_KEY
+	  is treated as name of an environment variable rather than a filename/uri
+	  directly which allows for better integration with build systems.
+
 config ARCH_K3_SIGNING_KEY
 	string "Signing key"
 	depends on ARCH_K3_SIGNING_KEY_CUSTOM
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 1a8bfe641a..9de48f4d2b 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -17,10 +17,20 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
 
 endif
 
+
+
 ifdef CONFIG_ARCH_K3_SIGNING_KEY_TI_DEVEL
 KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
 else
-KEY_custmpk="$(CONFIG_ARCH_K3_SIGNING_KEY)"
+
+k3_sigining_key=$(call remove_quotes,$(CONFIG_ARCH_K3_SIGNING_KEY))
+
+ifeq ($(CONFIG_ARCH_K3_SIGNING_KEY_ENV),y)
+KEY_custmpk=$(shell echo $$$(k3_sigining_key))
+else
+KEY_custmpk=$(k3_sigining_key)
+endif
+
 endif
 KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
 
-- 
2.47.3



