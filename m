Delivery-date: Mon, 25 Nov 2024 16:10:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajK-000FLE-0x
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:10:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFajK-0006xq-5F
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:10:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Q7V5Td4Xs4WB/wZ5QbNPH91kYoCJq3Br6O3sPPIhto=; b=MPwsPczjIvCs7V4nhWKasNb/3g
	hz6O43zyDDYqfieHtJNHGs/0z3AhTpWYBGVM82Jo40i7f9pHU1qulwwAIDOsLY5gcOoQwzn96Fav4
	TDBH5Y5yPcDLDhi1EDNnMW3dhYI8ns7Rr097DzjAUqc4D8WTtnyK01SBm/hpExAtM8c2FWVmgx9MK
	JVEOkWXG+zbjPZhtpDkOMNbviDlGqiAhhALyqtAUvVbNfQTJgW03n+mj24vfwC3xuxtd4sXWMX7tn
	xgBCIfucVbAdvnkEk69djywUW3WmYwDOFUxq+luYRE0NBjCzhS5EnO+vlUHFu+VOOeo3Ok8ZKJ34y
	myiErPSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFais-00000008P5C-0Khd;
	Mon, 25 Nov 2024 15:09:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaiq-00000008P2z-0UBz
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:09:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaig-0006cr-GN; Mon, 25 Nov 2024 16:09:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-00069l-1P;
	Mon, 25 Nov 2024 16:09:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFaif-001HUO-1a;
	Mon, 25 Nov 2024 16:09:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:09:42 +0100
Message-Id: <20241125150945.166979-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125150945.166979-1-a.fatoum@pengutronix.de>
References: <20241125150945.166979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_070956_160842_FE6B191E 
X-CRM114-Status: GOOD (  12.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] sandbox: use host system's UBSan library
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The host system's libubsan is more extensive than what we have and when
building with libfuzzer later, having the functions defined again leads
to linker error due to repeated definitions.

Therefore, let's only use our ubsan functions when we are outside
sandbox.

While at it, we restructure the Makefile a bit to look more like Linux'
and to allow easier extension in future.  CFLAGS_UBSAN will now
unconditionally have the enabled options, but this is ok as we only
make use of it when UBSAN is actually enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/Kconfig.ubsan      |  3 +++
 lib/Makefile           |  2 +-
 scripts/Makefile.ubsan | 33 ++++++++++++++++++---------------
 3 files changed, 22 insertions(+), 16 deletions(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 22958f48011e..c04ff3cbb6fd 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -31,6 +31,9 @@ config UBSAN_NO_ALIGNMENT
 	  Disabling this option on architectures that support unaligned
 	  accesses may produce a lot of false positives.
 
+config UBSAN_STANDALONE
+	def_bool !SANDBOX
+
 config UBSAN_ALIGNMENT
 	def_bool !UBSAN_NO_ALIGNMENT
 
diff --git a/lib/Makefile b/lib/Makefile
index 41aed121267c..1cf311ebcdb8 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -82,7 +82,7 @@ obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
 obj-$(CONFIG_CRC8)	+= crc8.o
 obj-$(CONFIG_NLS)	+= nls_base.o
 obj-$(CONFIG_FSL_QE_FIRMWARE) += fsl-qe-firmware.o
-obj-$(CONFIG_UBSAN)	+= ubsan.o
+obj-$(CONFIG_UBSAN_STANDALONE)	+= ubsan.o
 obj-$(CONFIG_GENERIC_ALLOCATOR) += genalloc.o
 
 # GCC library routines
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index 019771b845c5..4fb30a6c3768 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -1,19 +1,22 @@
 # SPDX-License-Identifier: GPL-2.0
-ifdef CONFIG_UBSAN
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=shift)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=integer-divide-by-zero)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=unreachable)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=signed-integer-overflow)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=object-size)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bool)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=enum)
+ifdef CONFIG_UBSAN_STANDALONE
+      ubsan-cflags-y += $(call cc-option, -fsanitize=shift)
+      ubsan-cflags-y += $(call cc-option, -fsanitize=integer-divide-by-zero)
+      ubsan-cflags-y += $(call cc-option, -fsanitize=unreachable)
+      ubsan-cflags-y += $(call cc-option, -fsanitize=signed-integer-overflow)
+      ubsan-cflags-y += $(call cc-option, -fsanitize=bounds)
+      ubsan-cflags-y += $(call cc-option, -fsanitize=object-size)
+      ubsan-cflags-y += $(call cc-option, -fsanitize=bool)
+      ubsan-cflags-y += $(call cc-option, -fsanitize=enum)
 
-ifdef CONFIG_UBSAN_ALIGNMENT
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=alignment)
+      ubsan-cflags-$(CONFIG_UBSAN_ALIGNMENT) += $(call cc-option, -fsanitize=alignment)
+else
+      ubsan-cflags-y += -fsanitize=undefined
+      ubsan-cflags-$(if $(CONFIG_UBSAN_ALIGNMENT),,y) += $(call cc-option, -fno-sanitize=alignment)
 endif
 
-      # -fsanitize=* options makes GCC less smart than usual and
-      # increase number of 'maybe-uninitialized false-positives
-      CFLAGS_UBSAN += $(call cc-option, -Wno-maybe-uninitialized)
-endif
+# -fsanitize=* options makes GCC less smart than usual and
+# increase number of 'maybe-uninitialized false-positives
+ubsan-cflags-y += $(call cc-option, -Wno-maybe-uninitialized)
+
+export CFLAGS_UBSAN := $(ubsan-cflags-y)
-- 
2.39.5



