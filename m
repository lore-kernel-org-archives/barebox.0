Delivery-date: Sun, 12 Jan 2025 09:35:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRg-0007hh-0D
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtRf-0007Mp-C9
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rkFImqJ0R54ckbuqeRxFEDS6F4s60M+s6JCSptqAW/M=; b=lUdjOuD3O8tKRWeXP1OwzLcQ36
	GDDzJSxX8qaDp/YqzLXLJiuCBAjMxJkfEBGJrKVBL7/0xbExM5E2IPshAU6g83YgQUiGkfRFnPZsh
	gJUVzG6CuutwTI/h/pAzEFJWZvEDHXEJRPrW3xwUnZsjHXDjj0sfAWK+elo7wZaft6U+wMXXrbAKt
	avo6Chl38XBV927A57JeQbZhhY+KI4h6svylCSq0ZyyEFNylUsbH4wtwz//uHc9pxtEcJwnyexS63
	gWQQiNSKF2cBXxel9jxOeRc+rtdSrDysgLtKS/hR92nYUxvEGP2FyGlTBHUD/yVmNf4qU/axVcG3+
	DlG99RNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtRH-00000002LMx-3yGo;
	Sun, 12 Jan 2025 08:35:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtRE-00000002LKT-3e6v
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:35:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gQ-Ht; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003OB-1a;
	Sun, 12 Jan 2025 09:34:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-22;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:27 +0100
Message-Id: <20250112083432.320215-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003516_909155_8816CC27 
X-CRM114-Status: UNSURE (   9.30  )
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
Subject: [PATCH 08/13] arch: maintain Linux kernel and mkimage ARCH mapping in Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

How barebox calls the architectures it supports differs from both the
names used in the Linux kernel and in mkimage.

For easier interoperability with the two, especially in scripts, add
config options that hold the relevant names.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig          |  8 ++++++++
 arch/arm/Kconfig      |  9 +++++++++
 arch/mips/Kconfig     |  9 +++++++++
 arch/openrisc/Kconfig |  4 ++++
 arch/powerpc/Kconfig  |  8 ++++++++
 arch/riscv/Kconfig    |  9 +++++++++
 arch/sandbox/Kconfig  |  4 ++++
 arch/x86/Kconfig      | 10 ++++++++++
 8 files changed, 61 insertions(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 671e6a0e979d..f6ac75eafd11 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -21,3 +21,11 @@ config ARCH_DMA_DEFAULT_COHERENT
 
 config ARCH_HAS_ASAN_FIBER_API
 	bool
+
+config ARCH_LINUX_NAME
+	string
+	default "$(SRCARCH)"
+
+config ARCH_MKIMAGE_NAME
+	string
+	default "invalid"
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f2c0f44e7487..df730b96b815 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -16,6 +16,15 @@ config ARM
 	select USE_COMPRESSED_DTB
 	default y
 
+config ARCH_LINUX_NAME
+	string
+	default "arm" if ARM32
+	default "arm64" if ARM64
+
+config ARCH_MKIMAGE_NAME
+	string
+	default ARCH_LINUX_NAME
+
 config ARM32
 	def_bool CPU_32
 
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 14062dee3471..769949a91085 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -14,6 +14,15 @@ config MIPS
 	select ELF
 	default y
 
+config ARCH_LINUX_NAME
+	string
+	default "mips64" if CPU_SUPPORTS_64BIT_KERNEL
+	default "mips"
+
+config ARCH_MKIMAGE_NAME
+	string
+	default ARCH_LINUX_NAME
+
 config SYS_SUPPORTS_BIG_ENDIAN
 	bool
 
diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index 102071686e4f..6b64b299b391 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -10,6 +10,10 @@ config OPENRISC
 	select HAS_DEBUG_LL
 	default y
 
+config ARCH_MKIMAGE_NAME
+	string
+	default "or1k"
+
 # not used
 config ARCH_TEXT_BASE
 	hex
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index ba875767b2f8..6346594173ac 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -11,6 +11,14 @@ config PPC
 	select ARCH_HAS_SJLJ
 	default y
 
+config ARCH_LINUX_NAME
+	string
+	default "ppc"
+
+config ARCH_MKIMAGE_NAME
+	string
+	default "powerpc"
+
 choice
 	prompt "Processor type"
 
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8f2cd089a213..ad724565d7bb 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -18,6 +18,15 @@ config RISCV
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
 
+config ARCH_LINUX_NAME
+	string
+	default "riscv" if ARCH_RV32I
+	default "riscv64" if ARCH_RV64I
+
+config ARCH_MKIMAGE_NAME
+	string
+	default "riscv"
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x0
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index d5b37de1843b..0b6cc75098be 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -22,6 +22,10 @@ config SANDBOX
 	select BAREBOX_CMDLINE
 	default y
 
+config ARCH_LINUX_NAME
+	string
+	default "um"
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index aab0c3c63261..cea8e25b81f0 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -9,6 +9,16 @@ config X86
 	select HAVE_EFI_PAYLOAD
 	default y
 
+config ARCH_LINUX_NAME
+	string
+	default "i386" if X86_32
+	default "x86_64" if X86_64
+
+config ARCH_MKIMAGE_NAME
+	string
+	default "x86" if X86_32
+	default "x86_64" if X86_64
+
 config ARCH_TEXT_BASE
 	hex
 	default 0x0
-- 
2.39.5



