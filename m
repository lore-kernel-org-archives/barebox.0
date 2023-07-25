Delivery-date: Tue, 25 Jul 2023 07:08:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHK-008zvJ-QK
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHG-0004Hz-8J
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TUv1OGu+sP2DE3uZe0/AGcHT28Y9qqix/uZQgFr3UE=; b=28/qRQqVdjtElp
	G+dmvmrwFtoSwMjN+cZ5wPLXPU+Sg90jRDRdBpu57n+6yALB79XvSVMu3mXsWymQy7ADUggZ6SMFc
	E82NsBjb6sYuphfs0N6feMzDlQO9mK10dP7NgfcQ4fHzz4Thv6hlCpDAUuBZjS5Dtt9bdqk+o7J89
	xQRr2+4YdAh2YmYLNLWvRkQhEegUBwdxwcpdi3cHf2VQecZYi6z1gRh/5RDigqPLucPF9ArCoB6Z6
	ZCxpXwqTxzKWIzWyCT/5sGdMA4z3zArC1XL3ad1nIT3BZxb/tiINBRxtKncP7xAke/hl7aY4dtcib
	ufGMMbytDfB+w1wZtDVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFx-006FKQ-1o;
	Tue, 25 Jul 2023 05:06:45 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFs-006FHX-2d
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:42 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5221e487e08so4181290a12.0
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261599; x=1690866399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6TUv1OGu+sP2DE3uZe0/AGcHT28Y9qqix/uZQgFr3UE=;
        b=lj/VC67oQsUyLDHcawc+DGYBcT6B0Ngh9DLugWD08J8xNgQgpV/xOKlHZCX9WVq7+h
         8FL83J4WGE1o4EeFChaS4xeVnHu257SSkEssKvVLtJ6GeB8Vu8rlj6nOzUpiccEMsGWr
         UDy+Vq2pYG4fmLD+2HK7ZaKyKjlSWOmm/CvP6JLnIYSXImO9Iclee65g4MKhdTR+80LN
         hWfZUZl7Sgff2ZwgNXshwB2kzmjFojZsV1oOy/GMn50NbGm2whqq57zS4zJQA01jzC6E
         cweIcp1BZT4uvXiJpjf7fvkjccehhh9yC7Q9WzQmhcTb/6f0GciL4jyfFzEQVRjGAij1
         b32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261599; x=1690866399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6TUv1OGu+sP2DE3uZe0/AGcHT28Y9qqix/uZQgFr3UE=;
        b=aTofD3tVsRydKN4lRrZwCb4WcFbe7fRpDH87Gxo+V5PbM+1Ks1WXYQ3zNaSZK+HUV9
         LRK5qWvgX5mX6+VTFiIQiR+l3DY8SY3UcqvTrjtimMB0faCtyNT2tY/E5wVNSkRsGXWz
         O1J6J6imik5BSSe+2zPFCIS5645mKRKqlEPZBk8+it98EiXYtMItdsR2xNuXxA6MPvms
         BZ3Y6UXBG0kHpz5ZJEj1UCIaItX7V+1eFXWpxDAcQm62DcMwMr9Pa426p4p22u6CD84z
         NC4t3LrMIk67rGCca9Tu7A8s1Ob+mZJn7C/c8c2R8aXXFEnZkm6OvyxEpsBTN9olxuEx
         /XEQ==
X-Gm-Message-State: ABy/qLYnzfOyKUwLlkpLL8WTjfo8tXZE3XGtKvGB4Jl2oK/1cQd2xBZu
	yn0FePSDfCroIlqWJAJpk0dIEZpPbj6be6u+/cE4bw==
X-Google-Smtp-Source: APBJJlHyFZiuQ2Y8PeBu/xL8E/danVDMHh22DE5z0E/A/BW2s6bOke5Z7pkTjiknYjTw7uR40jpU0g==
X-Received: by 2002:a50:ed88:0:b0:51e:253e:1e0c with SMTP id h8-20020a50ed88000000b0051e253e1e0cmr10251582edr.25.1690261599204;
        Mon, 24 Jul 2023 22:06:39 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:38 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:09 +0300
Message-ID: <20230725050618.3451-9-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220640_856125_5D1F32BC 
X-CRM114-Status: GOOD (  14.51  )
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
Subject: [PATCH 08/21] MIPS: malta: merge GT64120 headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The various definitions related to GT64120 system controller were split
between two headers: 'asm/gt64120.h' and 'mach/mach-gt64120.h'. It seems
that they were taken from Linux in this form. No reason to keep it like
that though, so unify them into 'mach/gt64120.h'.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boards/qemu-malta/lowlevel.S          |  5 ++---
 .../asm => mach-malta/include/mach}/gt64120.h   | 13 ++++++++-----
 .../mips/mach-malta/include/mach/mach-gt64120.h | 17 -----------------
 arch/mips/mach-malta/pci.c                      |  4 +---
 4 files changed, 11 insertions(+), 28 deletions(-)
 rename arch/mips/{include/asm => mach-malta/include/mach}/gt64120.h (92%)
 delete mode 100644 arch/mips/mach-malta/include/mach/mach-gt64120.h

diff --git a/arch/mips/boards/qemu-malta/lowlevel.S b/arch/mips/boards/qemu-malta/lowlevel.S
index 541d62fc2a..09087ad916 100644
--- a/arch/mips/boards/qemu-malta/lowlevel.S
+++ b/arch/mips/boards/qemu-malta/lowlevel.S
@@ -11,10 +11,9 @@
 #include <asm/pbl_macros.h>
 #include <asm/pbl_nmon.h>
 #include <linux/sizes.h>
-
 #include <asm/addrspace.h>
-#include <asm/gt64120.h>
-#include <mach/mach-gt64120.h>
+
+#include <mach/gt64120.h>
 
 #ifdef CONFIG_CPU_LITTLE_ENDIAN
 #define GT_CPU_TO_LE32(x) (x)
diff --git a/arch/mips/include/asm/gt64120.h b/arch/mips/mach-malta/include/mach/gt64120.h
similarity index 92%
rename from arch/mips/include/asm/gt64120.h
rename to arch/mips/mach-malta/include/mach/gt64120.h
index 34d2382593..f8a257acb7 100644
--- a/arch/mips/include/asm/gt64120.h
+++ b/arch/mips/mach-malta/include/mach/gt64120.h
@@ -6,12 +6,15 @@
  *		 Maciej W. Rozycki <macro@mips.com>
  * Copyright (C) 2005 Ralf Baechle (ralf@linux-mips.org)
  */
-#ifndef _ASM_GT64120_H
-#define _ASM_GT64120_H
 
-#define MSK(n)			((1 << (n)) - 1)
+#ifndef _MALTA_GT64120_H
+#define _MALTA_GT64120_H
 
-#define GT_DEF_BASE		0x14000000
+#define GT_DEF_BASE	0x14000000
+#define MIPS_GT_BASE	0x1be00000
+#define GT64120_BASE	CKSEG1ADDR(MIPS_GT_BASE)
+
+#define MSK(n)		((1 << (n)) - 1)
 
 /*
  *  Register offset addresses
@@ -85,4 +88,4 @@
 #define GT_READ(ofs)		le32_to_cpu(__GT_READ(ofs))
 #define GT_WRITE(ofs, data)	__GT_WRITE(ofs, cpu_to_le32(data))
 
-#endif /* _ASM_GT64120_H */
+#endif /* _MALTA_GT64120_H */
diff --git a/arch/mips/mach-malta/include/mach/mach-gt64120.h b/arch/mips/mach-malta/include/mach/mach-gt64120.h
deleted file mode 100644
index 20ac4d94d6..0000000000
--- a/arch/mips/mach-malta/include/mach/mach-gt64120.h
+++ /dev/null
@@ -1,17 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-/*
- *  This is a direct copy of the ev96100.h file, with a global
- * search and replace.	The numbers are the same.
- *
- *  The reason I'm duplicating this is so that the 64120/96100
- * defines won't be confusing in the source code.
- */
-#ifndef _ASM_MACH_MIPS_MACH_GT64120_DEP_H
-#define _ASM_MACH_MIPS_MACH_GT64120_DEP_H
-
-#define MIPS_GT_BASE	0x1be00000
-
-#define GT64120_BASE    CKSEG1ADDR(MIPS_GT_BASE)
-
-#endif /* _ASM_MACH_MIPS_MACH_GT64120_DEP_H */
diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
index 0ab239f509..c9c1c7790b 100644
--- a/arch/mips/mach-malta/pci.c
+++ b/arch/mips/mach-malta/pci.c
@@ -7,11 +7,9 @@
 #include <mach/hardware.h>
 #include <asm/io.h>
 #include <asm/addrspace.h>
-
 #include <linux/pci.h>
-#include <asm/gt64120.h>
 
-#include <mach/mach-gt64120.h>
+#include <mach/gt64120.h>
 
 #define PCI_ACCESS_READ  0
 #define PCI_ACCESS_WRITE 1
-- 
2.41.0



