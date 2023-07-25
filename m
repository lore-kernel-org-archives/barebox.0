Delivery-date: Tue, 25 Jul 2023 07:08:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHN-008zyE-CJ
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHJ-0004LG-A7
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Mb9Yeafk93d9s8gEUCpBhNp948/E3NX7fBtONnBCvw=; b=dJoWMixSWDzWkp
	MjR58hmMQnXxNPEBz9ahnBFmAS+4GeggsP79EEA/+IZ61kBPqC8LAUoOBx77iN/Z2ONWGLpS1uVLj
	fB9vEyFfoZ9Xn/CEun5Snj44IqcI0oMDL3KbUmYGuuEd2AWSaztuuRVgzpySep1OBq8I9yoPyWY3h
	MQP1m2HS7yzjIqv6hswh51VMBmCXo7gNerPNNDdkSVd2CaqSviUePKO3X0/554ONGBuGGi3e4Tf9H
	Dgo4jwRznDJ9+0oLZpqjhMTTiy4wRXtCuWMnfVlJ1k/HwLG/2YPC26HIY5Vtkw0s+rxRXb1tOEhVY
	ZL17vmu2cYt7ISt9oa1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG3-006FPl-0k;
	Tue, 25 Jul 2023 05:06:51 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFx-006FK8-20
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:47 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-991ef0b464cso1310960466b.0
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261604; x=1690866404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Mb9Yeafk93d9s8gEUCpBhNp948/E3NX7fBtONnBCvw=;
        b=FDPxRcaM5EyY8dVF4TWdZRfIctSI8+MC6STeA394jGiBrTI6HV9y0ORH2hZrlnfDCZ
         uyiz0rlZE90yvaAyZMI2TiZB/XVxZOred6LzovP/CEuW9i/maZZBnIXe7Zh3SXbMSrDn
         ua3Yg3SBQcg/7exOHLTdDVflvpB0s1M6U4+lYFx+LWndbSlSR4y0au/Z0O2ghoVRTY55
         NpBASCzQ/h9/PzKWe+HceVRf30EaXoFAlQbUcTxNiFXJr4t7pf0vGZ2gVGp2LAyIPm0J
         FYnvEBmJ71O8yjXvOoNi+dfjZ+gkxEZ+ghQfE1L0inXjogk+W1/mCeS/niRLveadEomH
         KtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261604; x=1690866404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Mb9Yeafk93d9s8gEUCpBhNp948/E3NX7fBtONnBCvw=;
        b=g/nXlqTePL8DCzu5wrdjpCpT91suEusdg3x4AgIgMreSlHqNKvtWztrog2CNLiH5Wh
         dJ5WDZMKEJIo98Xn+EF1R9CvEiLxbH1Oe0g+BpkSK29AhWHdAqJ6QsWg0zXPt+y2p6AK
         /cr5Ld6FQHFdC1W9dv1cinroqjHyn7cMzvDF+z613MTY8ODd8kmldkbQt/VaiLBNG3T2
         dLcgUxWfUlvw70QjY353Fk6FnqsGjeweU4abiwVng6X4Cm2Yz3FPFiQsLYTk0crjPKBP
         lWOUOlIX9lBepN+HK8iQWM76sjFLrrbZPnarlwrEWdtGC//IS3VakYG2GfIfq5ELHN8L
         5Aiw==
X-Gm-Message-State: ABy/qLYihBiP/AhITSZvZg5dewmSA7DbaC8ZcxwxCBN384nozlmff0el
	Op8Ut+8WWAuvYLQxbJ7kAR/xHPGfvmvMdTNntmbjsw==
X-Google-Smtp-Source: APBJJlE8GFX5ErMtbMToSaG32EE6EJC1bobh2H8sIr/Hnaz7oepU77ZzWTkhFCNP6a2PAkOaZywIOg==
X-Received: by 2002:a17:907:1b0d:b0:99b:4867:5e1c with SMTP id mp13-20020a1709071b0d00b0099b48675e1cmr1335931ejc.28.1690261603661;
        Mon, 24 Jul 2023 22:06:43 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:43 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:13 +0300
Message-ID: <20230725050618.3451-13-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220645_661238_48D57F21 
X-CRM114-Status: GOOD (  11.93  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/21] MIPS: pbl: make sure to disable interrupts/watchpoints on entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The first thing that we should do on entry is to disable interrupts and
watchpoints, as who knows in what state we got there. The former was not
being done consistently on every board, while the latter was only being
done in the barebox proper for some reason. Add a macro that combines
both of those actions and ensure that it's used in every board's entry
code.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boards/8devices-lima/lowlevel.S      |  2 ++
 arch/mips/boards/dlink-dir-320/lowlevel.S      |  2 +-
 arch/mips/boards/img-ci20/lowlevel.S           |  2 +-
 arch/mips/boards/loongson-ls1b/lowlevel.S      |  2 +-
 arch/mips/boards/netgear-wg102/lowlevel.S      |  2 +-
 arch/mips/boards/qemu-malta/lowlevel.S         |  2 +-
 arch/mips/boards/ritmix-rzx50/lowlevel.S       |  2 +-
 arch/mips/boards/tplink-wdr4300/lowlevel.S     |  2 ++
 arch/mips/include/asm/pbl_macros.h             | 16 ++++++++++++++++
 arch/mips/mach-ath79/include/mach/pbl_macros.h |  4 ++++
 10 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/arch/mips/boards/8devices-lima/lowlevel.S b/arch/mips/boards/8devices-lima/lowlevel.S
index 8a4c77a44f..fad4d8b4af 100644
--- a/arch/mips/boards/8devices-lima/lowlevel.S
+++ b/arch/mips/boards/8devices-lima/lowlevel.S
@@ -15,6 +15,8 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
+	mips_cpu_setup
+
 	debug_ll_ath79_init
 
 	hornet_mips24k_cp0_setup
diff --git a/arch/mips/boards/dlink-dir-320/lowlevel.S b/arch/mips/boards/dlink-dir-320/lowlevel.S
index 7e496b50d1..d0376c515c 100644
--- a/arch/mips/boards/dlink-dir-320/lowlevel.S
+++ b/arch/mips/boards/dlink-dir-320/lowlevel.S
@@ -13,7 +13,7 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_disable_interrupts
+	mips_cpu_setup
 
 	/* CPU/SoC specific setup ... */
 	/* ... absent */
diff --git a/arch/mips/boards/img-ci20/lowlevel.S b/arch/mips/boards/img-ci20/lowlevel.S
index 0295e44d1a..8ff9871c51 100644
--- a/arch/mips/boards/img-ci20/lowlevel.S
+++ b/arch/mips/boards/img-ci20/lowlevel.S
@@ -14,7 +14,7 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_disable_interrupts
+	mips_cpu_setup
 
 	/* CPU/SoC specific setup ... */
 	/* ... absent */
diff --git a/arch/mips/boards/loongson-ls1b/lowlevel.S b/arch/mips/boards/loongson-ls1b/lowlevel.S
index c3d46c773b..e823bb37dd 100644
--- a/arch/mips/boards/loongson-ls1b/lowlevel.S
+++ b/arch/mips/boards/loongson-ls1b/lowlevel.S
@@ -17,7 +17,7 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_disable_interrupts
+	mips_cpu_setup
 
 	pbl_blt 0xbf000000 skip_pll_ram_config t0
 
diff --git a/arch/mips/boards/netgear-wg102/lowlevel.S b/arch/mips/boards/netgear-wg102/lowlevel.S
index d57b62583d..6fdcfa3cca 100644
--- a/arch/mips/boards/netgear-wg102/lowlevel.S
+++ b/arch/mips/boards/netgear-wg102/lowlevel.S
@@ -14,7 +14,7 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_disable_interrupts
+	mips_cpu_setup
 
 	pbl_ar2312_pll
 
diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
index 8c2d82dab2..8ff7d93a74 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -32,7 +32,7 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_disable_interrupts
+	mips_cpu_setup
 
 	/* cpu specific setup ... */
 	/* ... absent */
diff --git a/arch/mips/boards/ritmix-rzx50/lowlevel.S b/arch/mips/boards/ritmix-rzx50/lowlevel.S
index 33810f67f5..4fccf0ddb9 100644
--- a/arch/mips/boards/ritmix-rzx50/lowlevel.S
+++ b/arch/mips/boards/ritmix-rzx50/lowlevel.S
@@ -14,7 +14,7 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_disable_interrupts
+	mips_cpu_setup
 
 	/* CPU/SoC specific setup ... */
 	/* ... absent */
diff --git a/arch/mips/boards/tplink-wdr4300/lowlevel.S b/arch/mips/boards/tplink-wdr4300/lowlevel.S
index 01cc9fc212..94ae707b0b 100644
--- a/arch/mips/boards/tplink-wdr4300/lowlevel.S
+++ b/arch/mips/boards/tplink-wdr4300/lowlevel.S
@@ -15,6 +15,8 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
+	mips_cpu_setup
+
 	debug_ll_ath79_init
 
 	hornet_mips24k_cp0_setup
diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index 6e177ff69a..cc81e06a64 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -151,6 +151,14 @@
 	.set	pop
 	.endm
 
+	.macro	mips_disable_watchpoints
+	.set	push
+	.set	noreorder
+	mtc0	zero, CP0_WATCHLO
+	mtc0	zero, CP0_WATCHHI
+	.set	pop
+	.endm
+
 	.macro	mips64_enable_64bit_addressing
 #ifdef CONFIG_64BIT
 	.set	push
@@ -162,6 +170,14 @@
 #endif
 	.endm
 
+	.macro	mips_cpu_setup
+	.set	push
+	.set	noreorder
+	mips_disable_interrupts
+	mips_disable_watchpoints
+	.set	pop
+	.endm
+
 	.macro	mips_barebox_10h
 	.set	push
 	.set	noreorder
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 86d2cba392..4b7b48618b 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -374,6 +374,8 @@
 	.set	push
 	.set	noreorder
 
+	mips_cpu_setup
+
 	pbl_blt 0xbf000000 skip_pll_ram_config t8
 
 	hornet_mips24k_cp0_setup
@@ -404,6 +406,8 @@
 	.set	push
 	.set	noreorder
 
+	mips_cpu_setup
+
 	hornet_mips24k_cp0_setup
 
 	hornet_1_1_war
-- 
2.41.0



