Delivery-date: Tue, 01 Sep 2026 17:15:33 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QCz-009gUj-0E
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:15:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4ADEC205818
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:15:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Q9wON37z;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=FJh7lj7C;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rylBctF+Rla2vHm9+EkWd63b/R5rtlEHuS6ghSjiq30=; b=Q9wON37zP05isv2T3sDh+uBjfc
	RSuV3Tf/pgTzfuguJDrW4IY3T/cL3hTu7SQ/s3L8WpieJ4TwtMAZc3w/IbJfRBGdwrSHwXPHzXRs9
	hztPnq31Lv1imZWBNp1Am8PSDmqT2Vm85UWedQYhjB2rmeh9sFCzFra9CwI4NWyzfHN8jFbTv3gOP
	AkHJuBtdAAZ7Rn8i7yAaDZeoRCNBw2LUpCx/FWpKOUk3B+os16N7YSAnLDNOTxxusSYCTFIs/qmnV
	tvZBneSOq5k20Exiq7Ki3/3aS5c8VkIxppGDYTHhN5nIXBwQ3Fl62u5Da0rmW6AgZBgNlJHI0AkTC
	aqyjGczw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBT-0000000CRdU-02BY;
	Tue, 01 Sep 2026 15:13:59 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBO-0000000CRYr-2OCM
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:13:55 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49b392ccaacso69573715e9.2
        for <barebox@lists.infradead.org>; Tue, 01 Sep 2026 08:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275633; x=1788880433; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rylBctF+Rla2vHm9+EkWd63b/R5rtlEHuS6ghSjiq30=;
        b=FJh7lj7CJtH/vhCAMxS5Jz+bgW0dZftzaMRNEW6EmN9tLTTAYKqh61x+giJvIypiE8
         gxM5zLdZTysZBoTeikOyijZQwmD9sPji9GKfN7BCWqdGYLfNOw3AU8Rcnzo5ankXQ2jV
         1RkRIDxU37Fva2BSVNHkYGGsESURGtMTsMEOc/G9rim8OmV4dkMMibkEBMq9QRHSjId/
         xzH9lOfD0qjAVYvjekiFNlqyjbcWdSGMVqNpu1cyGv9TdL/hL8+1Q1/tcXrpoO4aZocC
         8F5NkNswhmxFtRTT+4QN5BJtMKGpkrD5G7F7cKkiUyLnl0sEVa9uQr2Q3mDOhDoT4Dk3
         5eRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275633; x=1788880433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rylBctF+Rla2vHm9+EkWd63b/R5rtlEHuS6ghSjiq30=;
        b=NVtRQ3Z3KQcPRaf+fBbziNjF58er1q2DkhtAjDEXcIhgo3JnAbK+N6HwWsavTz0v5S
         EsuY7JRXeBZwCjfMtw6UPGRocuEAsYgVEU5R9NynjOWvdgnwEUGO7LQ7YipR7pr/riNP
         SCHi3vcFLchkp2hEcp7QEFaVR5VPE2PAZw7FOrN2aO02f7Bm4DRK6a1aLq+GhstM5Cfw
         MPegeyqd46U3XT0ObNmuie4SPYiAyjYD81UVHd+Gnljw2WBAjENgiEAQoCMmh0aG1+KC
         m9EjyrRxUVID1LRno1OrKeacarqoIdZt9+qM5q5Vt3anhZmxHfxrl98JFgoxDSGOX13Q
         sDwQ==
X-Gm-Message-State: AFuF++kXzGDE+64PWw3Nat/Po78vJSf4EAhkIZtJ2MPbOTiyBrC60Pe6
	/iDNmipmwB1gUrGJ6yxJYaoVYllO+oth1u3x8ceRSZoZcybwIj1c5F3iEK/L6Q==
X-Gm-Gg: AR+sD12k2unAHpzLXEYBkip+nvXJxlgjcYMU9NyyHAn/ySqN17yPALFv2AUImlFfbMq
	5tA8qI2CN7ndGCp4SkKVuCsppE5x2T703ge0o1i7tDDpAXyrCdo3mznNoGX2rJec0KMwyNUECHU
	EvGcfNTYZaG42lUZVERnvEwFOOkamaUHDkIIGWAmHkzlNkXYscX660GjrPRhtATS1bIHBxA7KRW
	uZRKfpWs3Cgp3w0Jz4t9TcfK0TLVhCwJiNB/cUtmW6+zlJ9S32GUEy+EIUfAYHvAsHdI1OuNEuo
	ik2iWTztaQ7fQyWi4YHCwyJXT49frDulLqBT8BRFQhwaei/AuaHaWWYYe9nIfGSNhEL3Tws/7hl
	pNSxEiGcP58susG6FSpmelOi9n49plzIZQeNZSY9+TGvNNISy4mn+fTbXzpYF+WyrSYM7pTNc5n
	+yKnZdO/D6tS9bpGGRBZDALrF7YRVjRQNQlqUAHigP5PoCSZjeoX7ofK+LfYEDIh7Ua8HDUKP1x
	ZptlDY5g/Tty4cdx43yT+p6D/qQSoGmS70oGVdL+mFDct6Jfz4nvjZ221IugBdAypLm/0pRa1NS
	Mfl0z28=
X-Received: by 2002:a05:600c:45d4:b0:499:7219:122f with SMTP id 5b1f17b1804b1-49b91c1ebd7mr492998575e9.4.1788275632309;
        Tue, 01 Sep 2026 08:13:52 -0700 (PDT)
Received: from [192.168.0.233] (2a02-8388-e6ca-5780-e161-768d-5c97-84d0.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e161:768d:5c97:84d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm303549035e9.1.2026.09.01.08.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:13:52 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Date: Tue, 01 Sep 2026 17:13:01 +0200
Subject: [PATCH RFC 6/6] bcm283x: debug_ll: add Raspberry Pi 5 UART support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260901-add-rpi5-support-v1-6-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
To: barebox@lists.infradead.org
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788275628; l=1912;
 i=andrey.lalaev@gmail.com; s=20260901; h=from:subject:message-id;
 bh=6lBWOQz1wD5g6oaJ9ZjjX6FbRbt9xZPqAzMETehSkV8=;
 b=r1yd+2gOYpx1t0tdeDxUKShJczlWydgvjMOEqoEIo0Cr6A5YY2zPyVaB1M3Z3nSodVPU9w/uw
 kTIGl2HSFXQA1OmwDxLSI7W1C3sEmBLZbFAkjkraIaasDzAMRybO+oH
X-Developer-Key: i=andrey.lalaev@gmail.com; a=ed25519;
 pk=YHk+K3q98GV/1CigmrEAQ+Vc0o+GlFWt3j94jvrEh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081354_626073_BCCD3DB6 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This commit adds support for low-level debugging using UART
    debug port on Raspberry Pi 5. Signed-off-by: Andrei Lalaev --- common/Kconfig.debug_ll
    | 8 ++++++++ include/mach/bcm283x/debug_ll.h | 10 ++++++++++ include/mach/bcm283x/platform.h
    | 1 + 3 files changed, 19 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:329 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [andrey.lalaev(at)gmail.com]
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
X-Rspamd-Server: mx1
X-Stat-Signature: heb5yrigxwe94fwo3zyzepgcmutbkgxt
X-Rspamd-Queue-Id: 4ADEC205818
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::329:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	TAGGED_RCPT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action

This commit adds support for low-level debugging using UART debug port
on Raspberry Pi 5.

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 common/Kconfig.debug_ll         |  8 ++++++++
 include/mach/bcm283x/debug_ll.h | 10 ++++++++++
 include/mach/bcm283x/platform.h |  1 +
 3 files changed, 19 insertions(+)

diff --git a/common/Kconfig.debug_ll b/common/Kconfig.debug_ll
index 6126431692eb..c6091979bfa3 100644
--- a/common/Kconfig.debug_ll
+++ b/common/Kconfig.debug_ll
@@ -301,6 +301,14 @@ config DEBUG_RPI4_MINI_UART
 	  Say Y here if you want low-level debugging support on
 	  RaspberryPi 4 board mini UART.
 
+config DEBUG_RPI5_UART
+	bool "RaspberryPi 5 PL011 UART"
+	depends on ARCH_BCM283X
+	select DEBUG_BCM283X_UART
+	help
+	  Say Y here if you want low-level debugging support on
+	  RaspberryPi 5 boards.
+
 config DEBUG_ZYNQ_UART
 	bool "Zynq debug UART"
 	depends on ARCH_ZYNQ
diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
index 3f2d5ddc9857..7562fe977e87 100644
--- a/include/mach/bcm283x/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -113,6 +113,16 @@ static inline void PUTC_LL(char c)
 	debug_ll_ns16550_putc(base, c);
 }
 
+#elif defined CONFIG_DEBUG_RPI5_UART
+
+static inline void debug_ll_init(void)
+{
+	/* Configured by ROM */
+}
+
+#define DEBUG_LL_UART_ADDR BCM2712_PL011_BASE
+#include <debug_ll/pl011.h>
+
 #else
 
 static inline void debug_ll_init(void)
diff --git a/include/mach/bcm283x/platform.h b/include/mach/bcm283x/platform.h
index 54d8b38bd8ed..a25bde84ee16 100644
--- a/include/mach/bcm283x/platform.h
+++ b/include/mach/bcm283x/platform.h
@@ -36,6 +36,7 @@
 #define BCM2835_MINIUART_BASE 0x20215040
 #define BCM2836_MINIUART_BASE 0x3f215040UL
 #define BCM2711_MINIUART_BASE 0xfe215040UL
+#define BCM2712_PL011_BASE 0x107d001000UL
 
 #endif
 

-- 
2.55.0



