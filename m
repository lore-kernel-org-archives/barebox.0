Delivery-date: Mon, 26 May 2025 16:39:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyn-000Y9K-2N
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:39:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyn-00014S-2s
	for lore@pengutronix.de; Mon, 26 May 2025 16:39:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rr8ofkjqYOr3XQMlBrTXd7XjcT5zrMBWrMsFDHQCj/Q=; b=dh9En5YWZhLx6D6xP11UzmBwZ9
	IgkGjXCNnm0bBlbQ27BK7qPaQGJcvaW/teXc7EzYnWvH5hYuz7sKcqUHOTklv1jke/Sw4fPl4y9uN
	q4Uz8urBeFAqLfeJxOG+MS6FYDHhQUfwSBqfXNUjfPrq1Mit6mYaW5oFXW4v4rR5SjcUl245JY4gT
	cP0mX5QRXgxkHXSsODQK/TOl4c4/ZlC4cMCoUSIMOuVt9Ov8f/T12MrAhbKwNJSKZPt8pzU2kkfI4
	xwrRAknWDLuiChtUgGpfRd3pC4NwyNLdc4ZGCFZdec85KM+nM0f79XSpkOAudZfIPioQyqA+mDWol
	kxyaLiow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyJ-000000092T1-07Qw;
	Mon, 26 May 2025 14:38:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyF-000000092N2-10qZ
	for barebox@bombadil.infradead.org;
	Mon, 26 May 2025 14:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Rr8ofkjqYOr3XQMlBrTXd7XjcT5zrMBWrMsFDHQCj/Q=; b=d6cCkAPtU46xc2hPnentvSfWeC
	zc4o1Z9SYZFQCHLjbQvML+BjdcZrG9Y1kM18ncApe3pjtta67AfdSfe5Wz87FGjX4Ih2C1A4wmCAp
	opXpTQapkzGSvSX1pnDsGehLOwLbf5it6UM4A4zWZClIaqhGsmKQhNmrYLWDtEfTUDPeuuJWZrwEo
	+gxDUjGamGJ2UASbA5sAqVuSC9ZLxZ+BwwMkqGAQkR5XMTNOcKj+26HfDZ6KV/3UZS/LdarWjvDRG
	WTol7UCiJLMdqMj0/uBolM5SeucTjlfsFd9NdWaY9sbaGkeBFrj7CzsWHmWcGF+Bd7oGpkqIm0OoI
	eiIY3j3w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyB-00000001vXm-2YJk
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:29 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy8-0000OJ-0W; Mon, 26 May 2025 16:38:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk3588-optee-v1-8-5004995cbd03@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
In-Reply-To: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_153828_113756_9BAE8B8E 
X-CRM114-Status: GOOD (  21.21  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] ARM: rockchip: pass device tree to TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The upstream OP-TEE expects a device tree to be able to initialize the
dynamic shared memory. Therefore, barebox should pass a device tree that
contains memory nodes through the TF-A to OP-TEE.

Unfortunately, the downstream TF-A fails to start if barebox passes its
device tree and it is not possible to detect if the loaded TF-A is able
to handle the device tree. Add a config option to pass the device tree
if it is possible.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig | 13 +++++++++++++
 arch/arm/mach-rockchip/atf.c   | 15 ++++-----------
 pbl/Kconfig                    |  1 +
 3 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 98dfd11c182b9fee6e3c958653ad4fa8a7d98d84..257c13bcf4846e805a7803105c71edeff92c534d 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -141,6 +141,19 @@ config ARCH_ROCKCHIP_ATF
 	  useful for debugging early startup, but for all other cases,
 	  say y here.
 
+config ARCH_ROCKCHIP_ATF_PASS_FDT
+	bool "Pass device tree to TF-A"
+	depends on ARCH_ROCKCHIP_ATF
+	help
+	  Enable this option if you are using an upstream OP-TEE that uses the
+	  device tree to initialize dynamic shared memory, which is passed
+	  through the upstream TF-A.
+
+	  Disable the option if you are using a downstream TF-A since it
+	  doesn't always cope with device trees. Supposedly this happens if the
+	  device tree is too large, for example if CONFIG_OF_OVERLAY_LIVE is
+	  enabled.
+
 config ARCH_ROCKCHIP_OPTEE
 	bool "Build rockchip OP-TEE binary into barebox"
 	depends on ARCH_ROCKCHIP_ATF
diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index cfa6df043b34c0f36919048237c7ecf33dfe0724..12cf13717b6972c2eafc5a044ae8d0b4de029c32 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -186,18 +186,11 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 		rk3588_lowlevel_init();
 		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
 
-		/*
-		 * The downstream TF-A doesn't cope with our device tree when
-		 * CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
-		 * too big for some reason. Otherwise it doesn't have any visible
-		 * effect if we pass a device tree or not, except that the TF-A
-		 * fills in the ethernet MAC address into the device tree.
-		 * The upstream TF-A doesn't use the device tree at all.
-		 *
-		 * Pass NULL for now until we have a good reason to pass a real
-		 * device tree.
-		 */
+#ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
+		rk3588_atf_load_bl31(fdt);
+#else
 		rk3588_atf_load_bl31(NULL);
+#endif
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 489b2001a855d62e11a2159311332b0e67f3a754..3dfc7de3e80da12a6313e84175275070274b9a5d 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -63,6 +63,7 @@ config PBL_CLOCKSOURCE
 config PBL_FDT_MIN_SIZE
 	hex
 	default 0x0
+	default 0x60000 if ARCH_ROCKCHIP_ATF_PASS_FDT
 	prompt "Minimum size of the FDT blob"
 	help
 	  The TF-A or OP-TEE may modify the FDT or add nodes to the FDT. This

-- 
2.39.5



