Delivery-date: Mon, 15 Dec 2025 09:47:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4F3-00BgNX-13
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:47:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4F1-0002q7-W5
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:47:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iW+iAMcErvFIgakt3VFkkmmSJfnyyvW5APtBX2tagBg=; b=TdBFdqSCk0tFzB1ClKcnULBYUc
	dWymuPTxcyJYYtYDVXDY/km3trVf/Mn+aTBjtUYQ4KJNKmEc3Ngu6BRJXF45wb4QoHMcZv8VAbJIm
	SkkPbsv1wQ5m7DhSzYSTyaOS6vJTj/W0BWfFJQ0H2QY2YYsT9HxgR9fWrhAzEHpgPN91UWMR4EH9f
	HRHBZK/fq3GYVweieXjSLXXSP4Vj+emUjlxxERnPxpMPyzif7Pos0SDR24R2gRKH5XL9PN2QlQTs2
	M/Qo67J6P31CdMPUrqVOk6soMfSG1dgtjJFfvHofc+5v/KtBjnuPiPM4vgHFjT2vbt8XZVHu2tm2h
	QkqE02YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Ee-00000003IOd-0w1H;
	Mon, 15 Dec 2025 08:47:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4Ec-00000003INx-1ufh
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:47:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Ea-0002la-LH; Mon, 15 Dec 2025 09:47:12 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Ea-005kbw-1X;
	Mon, 15 Dec 2025 09:47:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV4Ea-0000000B3q5-1bkm;
	Mon, 15 Dec 2025 09:47:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Dec 2025 09:47:10 +0100
Message-ID: <20251215084711.2635214-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_004714_498678_E37CFDB1 
X-CRM114-Status: UNSURE (   7.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: support reserving the x18 platform register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux helpfully complained about "register x18 corrupted by EFI" with
the upcoming EFI loader support as this register is apparently the
platform register and is meant to be usable by the OS without other
firmware like the EFI runtime services clobbering it.

Provide a hidden AAPCS64 symbol that will be usable for this purpose.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig  | 11 +++++++++++
 arch/arm/Makefile |  1 +
 2 files changed, 12 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index afa6de3cd0b1..d2d81a4f90d6 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -313,6 +313,17 @@ config AEABI
 
 	  To use this you need GCC version 4.0.0 or later.
 
+config AAPCS64
+	bool "Observe ARM64 Procedure Call Standard" if COMPILE_TEST
+	depends on CPU_V8
+	help
+	  This option instructs barebox to observe the AAPCS64 for
+	  interoperability with other firmware.
+
+	  The only effect this currently has is reserving x18 (the
+	  platform register), so Linux can call back into a barebox
+	  EFI runtime service without it getting clobbered.
+
 config THUMB2_BAREBOX
 	select AEABI
 	depends on !ARCH_TEGRA && !ARCH_AT91
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d6ae6b648f65..4d84f3bf9c72 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -68,6 +68,7 @@ CFLAGS_ABI-$(CONFIG_CPU_32)	:=$(call cc-option,-mapcs-32,-mabi=apcs-gnu) $(call
 CFLAGS_ABI-$(CONFIG_AEABI)	:=-mabi=aapcs-linux
 
 CFLAGS_ABI-$(CONFIG_ARM_UNWIND)	+=-funwind-tables
+CFLAGS_ABI-$(CONFIG_AAPCS64)	+=-ffixed-x18
 
 ifeq ($(CONFIG_THUMB2_BAREBOX),y)
 AFLAGS_AUTOIT	:=$(call as-option,-Wa$(comma)-mimplicit-it=always,-Wa$(comma)-mauto-it)
-- 
2.47.3



