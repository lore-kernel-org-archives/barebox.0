Delivery-date: Tue, 25 Jul 2023 07:08:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHI-008ztY-Cy
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHE-0004Fu-6w
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INFwiJRd1rSXKzgRhwGwdc4bARIAetFE/T1YoCc8K6I=; b=Lj38/Zwvi2rNGA
	sFuhAkwCcYZJc5GozYq6k4Byu8wU4reKra69PK4B9a9P5GfBja3WuLSTJUSXRDF4TEMLgM8UG2qnx
	EQ9oQjha0mqvOUOI3Vzn1X7Qj9rDm+cBGfuk16BQoGjJjYFz/vW/X1kPzXVZ6ZANQPQmHX3sJaM9t
	yuRmrbn4hWtMiK8N/2z6nqLkgi/BmBaWP4v/9fsW24t5QlfI1OpYa/BbN/IFy1ieJKv21JpRhFj2X
	40v0+5mQjjItoryFCNhXZ7skxA+cdU8HqwSsQngjMiddFQxIhsW5WS1vGKb7qUMlpS59HRszzEoH8
	6VLcs2UaHw8/UxW8pqCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAGA-006FYx-0a;
	Tue, 25 Jul 2023 05:06:58 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG2-006FMa-1H
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:52 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so7715394e87.2
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261606; x=1690866406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=INFwiJRd1rSXKzgRhwGwdc4bARIAetFE/T1YoCc8K6I=;
        b=YQDnv8mboA3FswHxKPRqKJsAfYg4cnIoLaHGHG1mmPeIYDyg96gYIzdYQ/KEbOfInc
         IAwUw0HAt1t6tAcJrGuxF/QekhX7w451YzW2Wfff3QtCpFP5a8cTx8vPtiUsFtrnyw0y
         zzQWPkdtACl9Szq9EEyrPpKJySwDC5meV0WwbZkkd/MkaFiXFJ3G4zy68mXiltt48l7t
         VDRMXgzV4lr/9c2EKSi4xgkW0M5RddtPZZ3glhlGOEKxgowx1Zo9eD1hvatYKdhHF7nt
         dXOO+EUcHGljeHExAWgWgWYU0dS1o5PvDZc//74iyGEVhKkRM/FwJs9eVvKIKd5oMBKC
         mOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261606; x=1690866406;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=INFwiJRd1rSXKzgRhwGwdc4bARIAetFE/T1YoCc8K6I=;
        b=MpMGL5xfNrf6hu5lfUt38yonYk3qTyFza0Erlx5WEKnk3LhJs+vDQU5fgGj37VyjYx
         Yj4bZc3fgFRpy+fIcADvMq5xaK4+m5frXbCjdQVzrHBSDgdhMgUeDZdx4nAdttrQDQSb
         WKCgogDhrf8fYUSMGsUDPMttnnYldSqdja3IDuxTEHegJvfnmHpnqw3VLLhJ+De5+RKW
         7SNlTe3gMEDknUC3r8NjdF3G7o8y3GYmEnOaFoaFjyQu9+Uwtpomm7LXmc2Ju0BkVcO0
         2KP8RbJiD0NfCNuW9tuLQ+qjdUpT5RY0RCD7KpEJR1d4SdYbVDtTpSaMerI0JdaymCU9
         Zutw==
X-Gm-Message-State: ABy/qLax/IG8/rcD41Bw5T2C/nPNbLKaDVd0sEQC1QVNVRz43lLZPgjL
	SwkU16H4J9Y2f8PKjrjFUrM4p2rlP5fPlwMN7KRK7w==
X-Google-Smtp-Source: APBJJlHZS7Jx5Qz3Mm5Fkr4X08hVwItM0OonhBwM6JXJhmMseA1KTqsdTVMrqjuCSIVdaFV3ciov2A==
X-Received: by 2002:a05:6512:3d02:b0:4f8:680a:68f8 with SMTP id d2-20020a0565123d0200b004f8680a68f8mr8739640lfv.41.1690261605876;
        Mon, 24 Jul 2023 22:06:45 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:45 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:15 +0300
Message-ID: <20230725050618.3451-15-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220650_520280_3DFD0439 
X-CRM114-Status: GOOD (  15.74  )
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
Subject: [PATCH 14/21] MIPS: clean up barebox proper entry point
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For MIPS, we don't actually have boards which lack PBL in the resulting
image. As such, the code in _start() is mostly redundant: the stack was
setup in ENTRY_FUNCTION_END, while copying the code to the link location
is not needed - it should already be executing at TEXT_BASE, where we
have decompressed it. Other than that, disabling interrupts with
watchpoints and enabling 64-bit addressing was already moved into PBL,
so we don't really need to repeat it there.

Replace the assembly implementation of _start() with the C one, as the
only thing it now does is jump straight into 'relocate_code()'.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/start.S | 46 ------------------------------------------
 arch/mips/boot/start.c | 17 ++++++++++++++++
 2 files changed, 17 insertions(+), 46 deletions(-)
 delete mode 100644 arch/mips/boot/start.S
 create mode 100644 arch/mips/boot/start.c

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
deleted file mode 100644
index 30828ad9ef..0000000000
--- a/arch/mips/boot/start.S
+++ /dev/null
@@ -1,46 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Startup Code for MIPS CPU
- *
- * Copyright (C) 2011, 2015 Antony Pavlov <antonynpavlov@gmail.com>
- */
-
-#include <asm/pbl_macros.h>
-
-	.set noreorder
-	.section ".text_entry"
-	.align 4
-
-EXPORT(_start)
-
-	mips_barebox_10h
-
-	/* save dtb pointer */
-	move	s0, a0
-	move	s1, a1
-	move	s2, a2
-
-	/* disable watchpoints */
-	mtc0	zero, CP0_WATCHLO
-	mtc0	zero, CP0_WATCHHI
-
-	mips_disable_interrupts
-
-	mips64_enable_64bit_addressing
-
-	copy_to_link_location _start
-
-	stack_setup
-
-	/* restore dtb pointer */
-	move	a0, s0
-	move	a1, s1
-	move	a2, s2
-	PTR_LA	v0, relocate_code
-	jal	v0
-	 nop
-
-	/* No return */
-__error:
-	b __error
-	 nop
diff --git a/arch/mips/boot/start.c b/arch/mips/boot/start.c
new file mode 100644
index 0000000000..81603c8d7a
--- /dev/null
+++ b/arch/mips/boot/start.c
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Startup Code for MIPS CPU
+ *
+ * Copyright (C) 2011, 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ */
+
+#include <linux/kernel.h>
+
+void __noreturn _start(void *fdt, u32 fdt_size, u32 relocaddr);
+void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
+
+void __noreturn __section(.text_entry) _start(void *fdt, u32 fdt_size,
+					      u32 relocaddr)
+{
+	relocate_code(fdt, fdt_size, relocaddr);
+}
-- 
2.41.0



