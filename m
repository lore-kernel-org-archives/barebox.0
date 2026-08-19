Delivery-date: Wed, 19 Aug 2026 16:14:29 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wwh3l-004t9z-01
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 16:14:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7B493202411
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 16:14:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yMtTYhKd;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ioHgNGnP8xLALP52aqBM/ilXvrQiOqA5ch5jiYkh/g=; b=yMtTYhKdWj/8qzE2SdmAtA/jTB
	u0w4OLMFdfyHM0N2OfLwl7vnuPiCRPS8+Wj1CgTEXzjmpVdBMon7XhwWWXAcjduoOvgWLOjxle0mz
	HwPI+wOfhab4TMuINyn4psBJFXH4A+lQBfVOCpQR/ZRGKptJibX1XwbvX96EEI2F9uRc+0nrFuFiq
	CaYn2AOyNRlNDYQp79Gfq+MsDQR0E7xPHb1V1ML86IL8UxJZeBRh52GNln4FQ5usO28hFn8cTw+at
	FRC5dLp1vYK761xvvKq5CjpeTjDNLvrWsV5+RC2coXOdaKD5f0LmldUJ6yPiAQh5zHYhi2EKf5FIC
	RSO+nLXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh2Q-00000009wwQ-3L5R;
	Wed, 19 Aug 2026 14:13:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwh2N-00000009wtJ-1c5T
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 14:13:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EA5E220240D;
	Wed, 19 Aug 2026 16:12:55 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wwh2F-002JDu-2n;
	Wed, 19 Aug 2026 16:12:55 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wwh2F-00000007Ree-3Kc2;
	Wed, 19 Aug 2026 16:12:55 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 19 Aug 2026 16:12:50 +0200
Subject: [PATCH 1/2] ARM/ARM64/RISC-V: pbl: guard constructor support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260819-next-v1-1-c1a1a8b44d02@pengutronix.de>
References: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
In-Reply-To: <20260819-next-v1-0-c1a1a8b44d02@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_071303_585068_BE19F95E 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PBL ctors source file was compiled and linked for all
   arches. This broke compilation for unsupported arches as the references to
    the external symbols `__ctors_start` and `__ctors_end` couldn't be [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Stat-Signature: rniqnm49ft3pumnkd3hq7kgapirda47m
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 7B493202411

The PBL ctors source file was compiled and linked for all arches. This
broke compilation for unsupported arches as the references to the
external symbols `__ctors_start` and `__ctors_end` couldn't be resolved
as they are only defined in the PBL linker scripts for ARM/ARM64/RISC-V.

Guard the ctors compilation behind CONFIG_PBL_CONSTRUCTORS and only
enable them for supported arches.

Fixes: bb07ef11d6 ("ARM/ARM64/RISC-V: pbl: add constructor support")
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/Kconfig   | 1 +
 arch/riscv/Kconfig | 1 +
 pbl/Kconfig        | 3 +++
 pbl/Makefile       | 2 +-
 4 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fe4fd3f471..ac68f07aa7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -13,6 +13,7 @@ config ARM
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
 	select RELOCATABLE
+	select PBL_CONSTRUCTORS
 	select PBL_RELOCATABLE
 	select USE_COMPRESSED_DTB
 	select HAVE_ARCH_BOARD_GENERIC_DT if OFDEVICE
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 452e3d6cfc..40a79b6834 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -19,6 +19,7 @@ config RISCV
 	select HAS_KALLSYMS
 	select RISCV_TIMER if RISCV_SBI
 	select HW_HAS_PCI
+	select PBL_CONSTRUCTORS
 	select PBL_IMAGE_ELF
 	select HAVE_ARCH_BOARD_GENERIC_DT
 	select HAVE_ARCH_BOOTM_OFTREE
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 63f29cd613..e6b168c4de 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -74,6 +74,9 @@ config PBL_VERIFY_PIGGY
 	depends on ARM || MIPS || RISCV
 	bool "Verify barebox proper hash before decompression" if COMPILE_TEST
 
+config PBL_CONSTRUCTORS
+	bool
+
 config PBL_CLOCKSOURCE
 	bool
 
diff --git a/pbl/Makefile b/pbl/Makefile
index 7ce8cee077..9cbd481640 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -3,7 +3,7 @@
 #
 # only unsed by the pbl
 #
-pbl-y += ctors.o
+pbl-$(CONFIG_PBL_CONSTRUCTORS) += ctors.o
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += malloc.o

-- 
2.47.3



