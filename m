Delivery-date: Tue, 21 Jan 2025 17:50:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSH-002igX-1N
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 17:50:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1taHSH-0003YH-Gn
	for lore@pengutronix.de; Tue, 21 Jan 2025 17:50:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PyXl++KEnZboBKu3eUF4GK7OHccBZSr4uFfyeg9FOtE=; b=lN2gEk3fUNmr/HwAzZJrdR33K6
	xcP6+E5MS7a3WnlXFqJo/mmZGfoSm0db50e8bFypPOOiw+cRRr6BP/gM8Kbxgejbr/pYMXhu51l3N
	VX3jqNfZkLJd13hfrm5d29/mal9RKVcnGVMH/wz8wLSgkGxQq8rvCfcX0lxIyFb4brwV92V1c6Z7w
	MxOUABWOMo9sNFgQYuSbhP7aVSVfzkM09VCBdRA6jQpGhLDv5INbVPg+wZ+GsK9uB9x8cuQ97nM1B
	dmv1i9Xs8MZ6QKLUoHpm1Tly68FlxG5qzOztdjzCQJtLLFVQCgz3WhDuSn6JufC05FYY7lOpphmQm
	ZHLeyQGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRj-00000008Oew-2KxQ;
	Tue, 21 Jan 2025 16:49:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taHRh-00000008Ocm-0DlD
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 16:49:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0003EW-Sd; Tue, 21 Jan 2025 17:49:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRX-0018z5-2B;
	Tue, 21 Jan 2025 17:49:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1taHRY-008WS6-16;
	Tue, 21 Jan 2025 17:49:35 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Tue, 21 Jan 2025 17:49:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250121-feature-pbl-get-time-ns-v1-3-c3d493397846@pengutronix.de>
References: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
In-Reply-To: <20250121-feature-pbl-get-time-ns-v1-0-c3d493397846@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_084945_102855_12933E36 
X-CRM114-Status: GOOD (  14.60  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] pbl: introduce HAS_PBL_CLOCKSOURCE marker
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This finally enables the usage of the polled timeout functions in the
barebox pbl with real timeouts for supported architectures. Currently
only ARMv7 and ARMv8 are enabled.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/cpu/Kconfig    | 2 ++
 arch/arm/lib32/Makefile | 2 +-
 include/linux/iopoll.h  | 8 ++++----
 pbl/Kconfig             | 3 +++
 4 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 84fe770b6da892723528eeea89ae2b0eda122d07..3569f3d3483a6289d7a6eca3d1715e06144df8d4 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -84,6 +84,7 @@ config CPU_V6
 config CPU_V7
 	bool
 	select CPU_32v7
+	select HAS_PBL_CLOCKSOURCE
 
 # ARMv8
 config CPU_V8
@@ -125,6 +126,7 @@ config CPU_32v7
 config CPU_64v8
 	bool
 	select CPU_64
+	select HAS_PBL_CLOCKSOURCE
 
 comment "processor features"
 
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index a139a80fb84973e01e24b063eb6b1d774a60a056..4509d483b27ec7da038b17729f552d6f09fd39ec 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -31,7 +31,7 @@ extra-y += barebox.lds
 pbl-y	+= lib1funcs.o
 pbl-y	+= ashldi3.o
 pbl-y	+= div0.o
-pbl-$(CONFIG_CPU_32v7)	+= arm_architected_timer.o
+pbl-$(CONFIG_HAS_PBL_CLOCKSOURCE)	+= arm_architected_timer.o
 CFLAGS_arm_architected_timer.o := -march=armv7-a
 
 obj-pbl-y	+= setjmp.o
diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 9350a3d05007fbf760e2dea2a981cb86641343fd..df7fdbfa4ae0aec825cc02afa8f14d1ea1f1e535 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -26,19 +26,19 @@
  * When available, you'll probably want to use one of the specialized
  * macros defined below rather than this macro directly.
  *
- * We do not have timing functions in the PBL, so ignore the timeout value and
- * loop infinitely here.
+ * In the PBL the timeout is ignored if timing functions are not implemented.
+ * This potentially means looping infinitely!
  */
 #define read_poll_timeout(op, val, cond, timeout_us, args...)	\
 ({ \
 	uint64_t start = 0; \
-	if (IN_PROPER && (timeout_us) != 0) \
+	if ((IN_PROPER || IS_ENABLED(CONFIG_HAS_PBL_CLOCKSOURCE)) && (timeout_us) != 0) \
 		start = get_time_ns(); \
 	for (;;) { \
 		(val) = op(args); \
 		if (cond) \
 			break; \
-		if (IN_PROPER && (timeout_us) != 0 && \
+		if ((IN_PROPER || IS_ENABLED(CONFIG_HAS_PBL_CLOCKSOURCE)) && (timeout_us) != 0 && \
 		    is_timeout(start, ((timeout_us) * USECOND))) { \
 			(val) = op(args); \
 			break; \
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 98d71791454b1a31f315ca3fdffa675e6d3dcb50..c2697a2bd00d807a78ac6bc9f0bcf7b28d150c59 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -26,6 +26,9 @@ config PBL_SINGLE_IMAGE
 	depends on !HAVE_PBL_MULTI_IMAGES
 	default y
 
+config HAS_PBL_CLOCKSOURCE
+	bool
+
 if PBL_IMAGE
 
 config USE_COMPRESSED_DTB

-- 
2.39.5



