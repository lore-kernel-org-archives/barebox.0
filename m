Delivery-date: Tue, 25 Jul 2023 07:08:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHH-008zsy-IT
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHD-0004FZ-VH
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/qjT91cfcfk95An6N4tI42sJu2bGAJloJXWGWcgU1U=; b=mgXcpTW6LvEUtM
	eiQTrUXCfp2elrgVMrqM8moM6YuQhqkM0MLWTj7ZDsucT/YBjy7wa9AUko/Y2TYuRWVU+zrNRxM5v
	75ybJ1SwMmI5R+rUN//WpiwklzCcmSEjgIxFYg5/wVkf8HgxyQKISwI3oeOFLqcNUYmYpgGE5Vh1o
	H7o/gNBySMHkmSZ7qyiWbqGlt/8i7jQc52Zs42g355zAOdHPrm8hfkUtQqpqbdDfzjJWCBtWWyfRC
	es+KIIBo6vTDqIdMXn9ZtHtDhu1bqafWudNS0PUFSYc5OEebn40ekpQDTTlCLsC9+CS2d5x4b70yx
	jQoBm3w0zEfG3+61rYrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG4-006FRE-0R;
	Tue, 25 Jul 2023 05:06:52 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFx-006FJT-39
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:47 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4fa48b5dc2eso7722089e87.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261602; x=1690866402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/qjT91cfcfk95An6N4tI42sJu2bGAJloJXWGWcgU1U=;
        b=Ddy88irNMZJqREDRHiJeaBQmatxne9fHCtZ4ej0sF9wHMqL7RciD8o55V/yHAH8kKr
         iSDfZAhrq5Fw2z6iTay7bbfVgxhfFO2rMP1y+HCyF1kLcYDmOPkLajiqYKL/BYJ80XqA
         R6QbQZx1pPG25RYxzujadR+lE9JHAewyOq9oRORiGRP+xcSdyMMF988Bq+3dflKxGt1a
         ubvLQQko7hyv7KBTK5JIhEhQBrp+8t56sCBRfs2jUo+7cAd1EyJNBG2iJwXdJs/9wevg
         ZCq0RlISkYeIHyyOISR6U+PnibSv1bI0GVlpTLNeBhs/nxs1dxcLGERNmW0SPY3/kqaR
         T3hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261602; x=1690866402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g/qjT91cfcfk95An6N4tI42sJu2bGAJloJXWGWcgU1U=;
        b=N5Lj2/TfTZxqq6Y12YI0st1NEZ5J1gZmXN1KkhLtCAAfUbdzpePhkEuOgF3VGuJMrp
         hUd1mvZfyR84n0ZMmQ3tVdEZWHmhcPc50PjW/Dsg31wO9+k2KbazgznYw9Sv9J3CdDOX
         zO4M2OrUc4DY2fj/DZlPdsGCUsjWEsPSJu9KtxQakdIMtC8CyLjk+ILkQgwlJYGEKe0b
         u5lumx6rV52WbtsEXpQdmHs0N6IeTmJ5lT/pj5RRB2Lqd/ZFyaMyz2QDbwTGVioRff9y
         VtuKHQ9fYBNE8+kOJJtp7Az3ZJ+KzeeDaVWBTW+0FYclowePtpIg3Os1VQJCR28i8iEa
         T6vg==
X-Gm-Message-State: ABy/qLY83wVhD27KBBAs+Bepn24N+Ubu4mMyXrFsy+JJDsYPBAtCATsX
	YtYUgpJcLlT9cmuN0dK4w+PAbdhQkhFeJHXbgZEgdA==
X-Google-Smtp-Source: APBJJlGqyARC1loT5BS7OQh3bIw7SLw8uHyLgsuoCHrjLxrMhsoFo/5TCREgZlRIoh3eArEaWxHVWw==
X-Received: by 2002:a19:5e1a:0:b0:4fe:551:3d3c with SMTP id s26-20020a195e1a000000b004fe05513d3cmr385589lfb.36.1690261602552;
        Mon, 24 Jul 2023 22:06:42 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:42 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:12 +0300
Message-ID: <20230725050618.3451-12-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220646_025017_39579E1E 
X-CRM114-Status: GOOD (  10.97  )
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
Subject: [PATCH 11/21] MIPS: pbl: put mips_barebox_10h into ENTRY_FUNCTION
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Remove duplicated macro calls by moving it into a common macro, as is
done in ARM code. Some boards were missing this one for no good reason,
it seems. Well, now they don't.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boards/8devices-lima/lowlevel.S      | 2 --
 arch/mips/boards/dlink-dir-320/lowlevel.S      | 2 --
 arch/mips/boards/loongson-ls1b/lowlevel.S      | 2 --
 arch/mips/boards/netgear-wg102/lowlevel.S      | 2 --
 arch/mips/boards/qemu-malta/lowlevel.S         | 1 -
 arch/mips/boards/tplink-wdr4300/lowlevel.S     | 2 --
 arch/mips/include/asm/asm.h                    | 4 ++--
 arch/mips/mach-ath79/include/mach/pbl_macros.h | 4 ----
 8 files changed, 2 insertions(+), 17 deletions(-)

diff --git a/arch/mips/boards/8devices-lima/lowlevel.S b/arch/mips/boards/8devices-lima/lowlevel.S
index dd1ab6247d..8a4c77a44f 100644
--- a/arch/mips/boards/8devices-lima/lowlevel.S
+++ b/arch/mips/boards/8devices-lima/lowlevel.S
@@ -15,8 +15,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
-
 	debug_ll_ath79_init
 
 	hornet_mips24k_cp0_setup
diff --git a/arch/mips/boards/dlink-dir-320/lowlevel.S b/arch/mips/boards/dlink-dir-320/lowlevel.S
index da969bc74e..7e496b50d1 100644
--- a/arch/mips/boards/dlink-dir-320/lowlevel.S
+++ b/arch/mips/boards/dlink-dir-320/lowlevel.S
@@ -13,8 +13,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
-
 	mips_disable_interrupts
 
 	/* CPU/SoC specific setup ... */
diff --git a/arch/mips/boards/loongson-ls1b/lowlevel.S b/arch/mips/boards/loongson-ls1b/lowlevel.S
index 7240d351b4..c3d46c773b 100644
--- a/arch/mips/boards/loongson-ls1b/lowlevel.S
+++ b/arch/mips/boards/loongson-ls1b/lowlevel.S
@@ -17,8 +17,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
-
 	mips_disable_interrupts
 
 	pbl_blt 0xbf000000 skip_pll_ram_config t0
diff --git a/arch/mips/boards/netgear-wg102/lowlevel.S b/arch/mips/boards/netgear-wg102/lowlevel.S
index e48dded269..d57b62583d 100644
--- a/arch/mips/boards/netgear-wg102/lowlevel.S
+++ b/arch/mips/boards/netgear-wg102/lowlevel.S
@@ -14,8 +14,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
-
 	mips_disable_interrupts
 
 	pbl_ar2312_pll
diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
index d5d7480e21..8c2d82dab2 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -32,7 +32,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
 	mips_disable_interrupts
 
 	/* cpu specific setup ... */
diff --git a/arch/mips/boards/tplink-wdr4300/lowlevel.S b/arch/mips/boards/tplink-wdr4300/lowlevel.S
index 8aed5ddcf1..01cc9fc212 100644
--- a/arch/mips/boards/tplink-wdr4300/lowlevel.S
+++ b/arch/mips/boards/tplink-wdr4300/lowlevel.S
@@ -15,8 +15,6 @@
 
 ENTRY_FUNCTION(BOARD_PBL_START)
 
-	mips_barebox_10h
-
 	debug_ll_ath79_init
 
 	hornet_mips24k_cp0_setup
diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index c699542a55..f6daae6757 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -83,8 +83,8 @@ symbol:		.frame	sp, framesize, rpc
 	.set noreorder;					\
 	.section .text_head_entry.symbol;		\
 	.align 4;					\
-							\
-EXPORT(symbol)
+EXPORT(symbol)						\
+	mips_barebox_10h
 
 /*
  * ENTRY_FUNCTION_END - mark end of entry function
diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index f101b41708..86d2cba392 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -374,8 +374,6 @@
 	.set	push
 	.set	noreorder
 
-	mips_barebox_10h
-
 	pbl_blt 0xbf000000 skip_pll_ram_config t8
 
 	hornet_mips24k_cp0_setup
@@ -406,8 +404,6 @@
 	.set	push
 	.set	noreorder
 
-	mips_barebox_10h
-
 	hornet_mips24k_cp0_setup
 
 	hornet_1_1_war
-- 
2.41.0



