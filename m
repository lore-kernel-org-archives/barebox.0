Delivery-date: Thu, 18 Dec 2025 12:39:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMC-00CoRS-1F
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:39:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLN-0001KZ-24
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:39:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qOaTtVk3BpTauoW9IqyC1YkHtwlFkJs0/jw479jfPH0=; b=fMF4dHBdAYVkchiRPX9BbicV3l
	qdrmVYgq1G9WsHqsTLz6WfcVju6iymqCp55VB2WxMBGNThzQ/zeDIkE2/W5Hx4YDSgCQaCvQuaZVA
	bn51GK7n5XQM5Z3FZLVXd3Jjg5gvvFZyv+zYqGzMbI+l07CCWY1aXX3YFbBbbp7MajW9pgQaGWMUZ
	kSgLDLqSE5dqlrApH2VOdXy89ImMWjFpoh6NjVXnLzVpm6FBWMW8gNcqsGvH2s7UjcX70EMkTcujW
	RFYnwcAavqeXj+kU72btYDK5JiR1HuVS+FlcXV7QFauIhyZ1OxaLgtd4+olTFhvtW87ysFxBHRzrQ
	udWL+Ndw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJr-00000008Kij-05FD;
	Thu, 18 Dec 2025 11:37:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJO-00000008KBK-0rKZ
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-0008AN-NL; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006GvC-1g;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-1yuF;
	Thu, 18 Dec 2025 12:12:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:30 +0100
Message-ID: <20251218111242.1527495-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033650_750478_F329AE5F 
X-CRM114-Status: GOOD (  12.06  )
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
Subject: [PATCH v1 10/54] ARM: move needed assembly routines into EFI runtime section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We want the usual string operation to be available normally in the
runtime services code, so mark them appropriately.

To implement the runtime services for rebooting and shutting down the
system, move the smccc trampolines into the EFI runtime section as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/smccc-call_32.S | 4 +++-
 arch/arm/cpu/smccc-call_64.S | 5 ++++-
 arch/arm/lib32/memcpy.S      | 3 ++-
 arch/arm/lib32/memmove.S     | 3 ++-
 arch/arm/lib32/memset.S      | 3 ++-
 arch/arm/lib64/memcpy.S      | 3 +++
 arch/arm/lib64/memset.S      | 3 +++
 7 files changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/smccc-call_32.S b/arch/arm/cpu/smccc-call_32.S
index 9875e1f94755..02e892be5d8d 100644
--- a/arch/arm/cpu/smccc-call_32.S
+++ b/arch/arm/cpu/smccc-call_32.S
@@ -2,9 +2,11 @@
 /* SPDX-FileCopyrightText: 2015 Linaro Limited */
 
 #include <linux/linkage.h>
-
+#include <efi/attributes.h>
 #include <asm/unwind.h>
 
+.section EFI_RUNTIME_SECTION(.text.smccc)
+
     .arch_extension sec
     .arch_extension virt
 	.arm
diff --git a/arch/arm/cpu/smccc-call_64.S b/arch/arm/cpu/smccc-call_64.S
index c2959050d2ef..45e334cfbe2c 100644
--- a/arch/arm/cpu/smccc-call_64.S
+++ b/arch/arm/cpu/smccc-call_64.S
@@ -2,9 +2,12 @@
 /* SPDX-FileCopyrightText: 2015 Linaro Limited */
 
 #include <linux/linkage.h>
+#include <efi/attributes.h>
 #include <linux/arm-smccc.h>
 #include <asm/asm-offsets.h>
 
+.section EFI_RUNTIME_SECTION(.text.smccc)
+
 	.macro SMCCC instr
 	.cfi_startproc
 	\instr	#0
@@ -39,4 +42,4 @@ ENDPROC(__arm_smccc_smc)
  */
 ENTRY(__arm_smccc_hvc)
 	SMCCC	hvc
-ENDPROC(__arm_smccc_hvc)
\ No newline at end of file
+ENDPROC(__arm_smccc_hvc)
diff --git a/arch/arm/lib32/memcpy.S b/arch/arm/lib32/memcpy.S
index e48e077c5941..a5cc1a6c2f46 100644
--- a/arch/arm/lib32/memcpy.S
+++ b/arch/arm/lib32/memcpy.S
@@ -10,6 +10,7 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 #include <asm/unwind.h>
+#include <efi/attributes.h>
 
 #define LDR1W_SHIFT	0
 #define STR1W_SHIFT	0
@@ -51,7 +52,7 @@ UNWIND( .save	{r0, \regs}		)
 	ldmfd sp!, {r0, \regs}
 	.endm
 
-	.text
+.section EFI_RUNTIME_SECTION(.text)
 
 /* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
 
diff --git a/arch/arm/lib32/memmove.S b/arch/arm/lib32/memmove.S
index 836286bc990f..59b4031b0797 100644
--- a/arch/arm/lib32/memmove.S
+++ b/arch/arm/lib32/memmove.S
@@ -10,8 +10,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 #include <asm/unwind.h>
+#include <efi/attributes.h>
 
-		.text
+		.section EFI_RUNTIME_SECTION(.text)
 
 /*
  * Prototype: void *memmove(void *dest, const void *src, size_t n);
diff --git a/arch/arm/lib32/memset.S b/arch/arm/lib32/memset.S
index 57dd1aa6daad..f3b0a683157b 100644
--- a/arch/arm/lib32/memset.S
+++ b/arch/arm/lib32/memset.S
@@ -9,8 +9,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 #include <asm/unwind.h>
+#include <efi/attributes.h>
 
-	.text
+	.section EFI_RUNTIME_SECTION(.text)
 	.align	5
 
 ENTRY(__memset)
diff --git a/arch/arm/lib64/memcpy.S b/arch/arm/lib64/memcpy.S
index 98b453d3fd79..a57ebee61aba 100644
--- a/arch/arm/lib64/memcpy.S
+++ b/arch/arm/lib64/memcpy.S
@@ -8,6 +8,7 @@
 
 #include <linux/linkage.h>
 #include <asm/assembler.h>
+#include <efi/attributes.h>
 
 /* Assumptions:
  *
@@ -15,6 +16,8 @@
  *
  */
 
+.section EFI_RUNTIME_SECTION(.text)
+
 #define L(label) .L ## label
 
 #define dstin	x0
diff --git a/arch/arm/lib64/memset.S b/arch/arm/lib64/memset.S
index f059203983a2..d0659b424333 100644
--- a/arch/arm/lib64/memset.S
+++ b/arch/arm/lib64/memset.S
@@ -13,6 +13,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 #include <asm/cache.h>
+#include <efi/attributes.h>
+
+.section EFI_RUNTIME_SECTION(.text)
 
 /*
  * Fill in the buffer with character c (alignment handled by the hardware)
-- 
2.47.3



