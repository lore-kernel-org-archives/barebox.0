Delivery-date: Mon, 24 Aug 2026 00:15:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyGT9-006UAt-1E
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 00:15:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9A612201BD1
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 00:15:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=srUvuEh5;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GZu0cSZE;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YgdZKfmtK3EX2Ooa6F+hVoz3Mnj/phHcM+2tDB5R/Gg=; b=srUvuEh5zkqlbJpHTTQJAbaehH
	X5xxhXjT+BBHFuvlWJ2JAKHmnokvCuWdJuEmh0PDobEPeuz8sB7HDGBKIazeMkIW3TteOjzgfMGdR
	uuv8ODihKV1HN+WhfQevJckWwEZVONw8FdLjLMg9Wt8D6CtNeRfN8jydCpxdQTkmbPYT7WuiiC0fn
	XlFLe2///wbzMdAxHNg4qYC3/12M2+RahfFIugDoXm5K6YmSLTzUY1cjOR0SxzPx5rAQ+njbk72aq
	GC00BT878knGtv0XqR+IC/WeGoXwlJhJ75ujVBIgg20Qcbb3D6tnMI6jBMQiJiZZiVuI+/sCAjgn4
	kNaBwhbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyGRe-0000000FdRp-2KEo;
	Sun, 23 Aug 2026 22:13:38 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyGRb-0000000FdRB-395Y
	for barebox@lists.infradead.org;
	Sun, 23 Aug 2026 22:13:36 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-493b966dd74so12208575e9.3
        for <barebox@lists.infradead.org>; Sun, 23 Aug 2026 15:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787523214; x=1788128014; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YgdZKfmtK3EX2Ooa6F+hVoz3Mnj/phHcM+2tDB5R/Gg=;
        b=GZu0cSZEy2Y6ODPTs3aSmhCfq/uw6NI9mjUsgjnkGGrb+VTS+L+E2vulJG5lyojN6J
         Ys/d1qwahm5bknbYl1UHPTXFFKT8pdumDQhMnD4wx8F3P58BwyrcgYeXLijkjoCer4EO
         FWhGRtoqvbf5Uw9IvqyVHV/SA8WnYnFdgK4XYoh/u7Y/lIgqjO7y8jjRl5TUZkWkvjqb
         tu8YHQXp4w8w500J7rQcn7YZPCt4HdJzy2FL3LFRGj3peZ/CSnOYj4z7Ncah/kIm1wh8
         LfbeaF9Xi6BCjEc4NZKHsnxYQdR7pi6P25eOxqWjHmc5MTCRVP+LtrwE29hNXXdGZrMe
         FLoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787523214; x=1788128014;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YgdZKfmtK3EX2Ooa6F+hVoz3Mnj/phHcM+2tDB5R/Gg=;
        b=Danb/ox+UsPt2Kl2nRgChzrigIvibg1wUugy5IbKrI22epPpn/G0i6TCrMsDjqzl9g
         X28+eQwLUBQoXye+EAhgyvndfneC0J/E+AOnlHetMCklpgVrEW8VDTYw8BZiQwo1kQWU
         P3QBmC5PUzPLN8DHXgDwvjbtrf9jDiX7TBu740XI4oVZk0iAcppWWokywQUzPQuCZWNy
         RGNERESRMS3vH0oomjaUVNU1rKXmrVH70+sMcOH6wloVI+lG21scy5O55tTY8v4U6CLS
         o5SZbKFtxaCmHSF4eD2L/D18EBouciGEpPXvW1BmnWrpGstQnbkq0TAkkqS8EL6nw5Ca
         zAtA==
X-Gm-Message-State: AFuF++nJmKgsGjvcyTz6KLIGyP3UtMuncOzmHuPqkOo7Gmvu5c5T/QRa
	1StWODNaM+J+iCsQ7WGxa5WttAIeNhJ28BudolqiV68qSA+yt9fcL92V
X-Gm-Gg: AR+sD11rT1cR0GKK/J8Y6DP1zJ/AhmXiWs5oA/HbMNzMNdoOcEvB4NNugrUxVAIqoqT
	GhDe8gvdzKIWFpukKv7HfGVi09Dqyw8F6K8uTLSUlqmK4oWPsUZ5xpaowgLpe1lQBF7b8+FCZ4n
	X96oeyOReIN4amMqvWZBsOscN9wPqKktENqtvXIA5GH9PENO/JQUxkedpcjYZWW1QmcFWqJKZro
	WiSIq9sGY4WabHNCpaoHjQFJI0hFoS8olunGTY/zxqIPPzKIymEgrGROmd75nMjVZoWxY5o6tQ2
	fKt8PnIxEEHrAFiY9T12Vf+dcE1HJL97YAYiuUNm4eVg7u2QvwrPI351Av+Wd07HnBl1kQLB2xh
	Jr5+Wj2jczYCllaay45YU3ICGJcFrqAEbksasuE9277rxpJzvmN91g4rG287kD+AvGJkm491M9a
	dWKPHSA6MaDdNQ2Po1i/YkMc4Y0r71k00HQFOctSJ5WGHA5bRUjM+HEPB734q/AqFluOMAuBrQL
	fPLWKn4msabvnwOrbNHH/iAqKNk3pTPMsmpKzUQydk1PbGxDxU4cErlL/jebbKKj3LOM32PRO8k
	TtyGr+CQgy1aAzDUVSx9
X-Received: by 2002:a05:600c:a01:b0:499:bdf1:7578 with SMTP id 5b1f17b1804b1-499c19bfd2dmr123899845e9.3.1787523213575;
        Sun, 23 Aug 2026 15:13:33 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499b9b6d5d0sm63842175e9.3.2026.08.23.15.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2026 15:13:33 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH] bcm283x: debug_ll: add RaspberryPi 4 PL011 UART support
Date: Mon, 24 Aug 2026 00:13:29 +0200
Message-ID: <20260823221329.513717-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_151335_804413_CB8BF125 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis Add a DEBUG_RPI4_UART choice for low-level
    debugging on RaspberryPi 4 and CM4 boards via the PL011 UART (uart0), for
    setups where the disable-bt overlay routes it onto the GPIO header pins instead
    of [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32e listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: soy4ixwezmxpbbadmzm9nhjoiuhd3hhz
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32e:received];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 9A612201BD1

From: Chali Anis <chalianis1@gmail.com>

Add a DEBUG_RPI4_UART choice for low-level debugging on RaspberryPi 4
and CM4 boards via the PL011 UART (uart0), for setups where the
disable-bt overlay routes it onto the GPIO header pins instead of the
mini UART. Mirrors the existing RPi1/RPi2-3 PL011 debug_ll support:
firmware configures the UART, so debug_ll_init() is a no-op.

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/Kconfig.debug_ll         | 10 ++++++++++
 include/mach/bcm283x/debug_ll.h | 10 ++++++++++
 include/mach/bcm283x/platform.h |  1 +
 3 files changed, 21 insertions(+)

diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 8445b4be0872..5a28dc4a61e7 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -275,6 +275,16 @@ config DEBUG_RPI2_3_UART
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 2 and 3 boards.
 
+config DEBUG_RPI4_UART
+	bool "RaspberryPi 4 PL011 UART"
+	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 4 / CM4 boards using the PL011 UART (uart0),
+	  e.g. when the disable-bt overlay routes it onto the GPIO
+	  header pins instead of the mini UART.
+
 config DEBUG_RPI3_MINI_UART
 	bool "RaspberryPi 3 mini UART"
 	depends on ARCH_BCM283X
diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
index a6a3b8f08856..3f2d5ddc9857 100644
--- a/include/mach/bcm283x/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -40,6 +40,16 @@ static inline void debug_ll_init(void)
 #define DEBUG_LL_UART_ADDR BCM2836_PL011_BASE
 #include <debug_ll/pl011.h>
 
+#elif defined CONFIG_DEBUG_RPI4_UART
+
+static inline void debug_ll_init(void)
+{
+	/* Configured by ROM */
+}
+
+#define DEBUG_LL_UART_ADDR BCM2711_PL011_BASE
+#include <debug_ll/pl011.h>
+
 #elif defined CONFIG_DEBUG_RPI3_MINI_UART
 
 static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
diff --git a/include/mach/bcm283x/platform.h b/include/mach/bcm283x/platform.h
index b957ac8de35e..54d8b38bd8ed 100644
--- a/include/mach/bcm283x/platform.h
+++ b/include/mach/bcm283x/platform.h
@@ -32,6 +32,7 @@
 
 #define BCM2835_PL011_BASE 0x20201000
 #define BCM2836_PL011_BASE 0x3f201000UL
+#define BCM2711_PL011_BASE 0xfe201000UL
 #define BCM2835_MINIUART_BASE 0x20215040
 #define BCM2836_MINIUART_BASE 0x3f215040UL
 #define BCM2711_MINIUART_BASE 0xfe215040UL


