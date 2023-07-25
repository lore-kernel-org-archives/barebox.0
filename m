Delivery-date: Tue, 25 Jul 2023 07:08:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHK-008ztx-9K
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHF-0004HF-IN
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cQEtDLuUtXZ/JXBLsYig2jLsXI92GJHmkJJaK7IhlY=; b=1RrHIlCmJvvyqV
	hNfpdmghEXLMgM+zT526Eppgc1//ng0JJJEOQwxJn6uzNtC+1WqZAtSQI0axOfqfYNGtP8xoSVIpB
	4hYNg9jWDMf81r4m3KnVeglvEQHR6rZ4no14l+dY6EAXn0y22Z2N8nwrizl71Oz7omFpPAJLw03Ur
	RmjjuI2R87nUnB0z2d4yx4KjQCet02XPnTkPTE20+XbfIbjfsvOhg+onx47c4XRS3QUH2cLeN/jBk
	IMlBbe0PzwJDVL0OJ60ql7/FcceK67OdvNuM/QpVE4D1WgIQRc1tgsdfK70uynpJUH66o2CbxPDce
	TUUZ3O5W22IAU4tVREEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFs-006FH2-0s;
	Tue, 25 Jul 2023 05:06:40 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFn-006FEw-2j
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:37 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5221b90f763so4245763a12.0
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261592; x=1690866392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+cQEtDLuUtXZ/JXBLsYig2jLsXI92GJHmkJJaK7IhlY=;
        b=XJfIDa0991Nr15vUdYFGf2P8bRFtxxGMhwxgjYUTEgyhtn+GGOKgpOnP4uFg2oDD1q
         aFZ6WC4I5sgoK6jB/I7pmn+pzMmQRTAfj7P8L216oLA2a4I8dbROZnYntdHlXrm1UqEe
         g569VC3ZQBp1xraa8gBP9TBrCqi7PkxtwNZTyfOT5Z6YWzU5TdELmZv8Ueo8qIrgqmNB
         XnYnlEJyZaPCqYyEgs9Wh8O+WGhGImSdaJSTa3zwNyvYyk52JCLEKwNz2p1XgSMR/wch
         cL91EPX5AmAJ6R4a/SddDbwjwfg+ZXx8TvMOSARbPtL8NveThlBV34Jv1OpwZwy5GOwk
         rVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261592; x=1690866392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+cQEtDLuUtXZ/JXBLsYig2jLsXI92GJHmkJJaK7IhlY=;
        b=dyHooCSFwy8NVlGEJj9R9Wge7tJTm8y9n5c4QlxkG3nBxRl0jY9VTCN5JJeDtlN0Cz
         SYskOfVMCRYGNGiYLwBjKY4BhIy2vUTum3CnQGVwlcwooKBhhBqOBGYOAkexVQkvTKcE
         DRlNMs8HYcAucahsk1Ea2ttvXpGauflgh0XSlheGKtLlF7Hcl/q6ZYqwW/dZ6VeTBkhS
         94z7MoYvsq1eZKZiND9Hu2fcNcnHjTwMLW9fqthljn3UErzQrTcHEPSi9eN/okM2Qya7
         kq+HEfMS7FqUKgsgyeCcUNYBrAV7Xe2WedtiSjy2+I72cahdnv7vxtI4oJgux2gqr4qp
         UDYw==
X-Gm-Message-State: ABy/qLaRIO//amLQ2bdrt8puJ23yTolKZd9rNxqn0ZMsXjZaXF1nOzHU
	xY+do2WJZXks4DyB9ERML/g0IlN6TY5035YS0Vlvow==
X-Google-Smtp-Source: APBJJlFYusElVtPOYOFxd0E6RFPkxPGZKCNvZmq23IFkDXLv2vpfF9NOFD3GF2Ao+Ncbua2dhSdBzw==
X-Received: by 2002:aa7:c98e:0:b0:522:4697:8102 with SMTP id c14-20020aa7c98e000000b0052246978102mr918333edt.38.1690261592162;
        Mon, 24 Jul 2023 22:06:32 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:31 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:03 +0300
Message-ID: <20230725050618.3451-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220635_883859_5A319C63 
X-CRM114-Status: GOOD (  11.15  )
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
Subject: [PATCH 02/21] MIPS: addrspace: simplify the header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Deduplicate some of the definitions for 32/64-bit targets and make KSEG*
32-bit defines available for 64-bit builds, as those might still be
useful in certain cases.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/addrspace.h | 45 ++++++++++++++-----------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
index 7a2006a8d1..dd3b5570dd 100644
--- a/arch/mips/include/asm/addrspace.h
+++ b/arch/mips/include/asm/addrspace.h
@@ -49,6 +49,16 @@
 #define XPHYSADDR(a)            ((_ACAST64_(a)) &			\
 				 _CONST64_(0x000000ffffffffff))
 
+/*
+ * Memory segments (32bit kernel mode addresses)
+ * These are the traditional names used in the 32-bit universe.
+ */
+#define KUSEG			0x00000000
+#define KSEG0			0x80000000
+#define KSEG1			0xa0000000
+#define KSSEG			0xc0000000
+#define KSEG3			0xe0000000
+
 #ifdef CONFIG_64BIT
 
 /*
@@ -65,11 +75,6 @@
 #define CKSSEG			_CONST64_(0xffffffffc0000000)
 #define CKSEG3			_CONST64_(0xffffffffe0000000)
 
-#define CKSEG0ADDR(a)		(CPHYSADDR(a) | CKSEG0)
-#define CKSEG1ADDR(a)		(CPHYSADDR(a) | CKSEG1)
-#define CKSSEGADDR(a)		(CPHYSADDR(a) | CKSSEG)
-#define CKSEG3ADDR(a)		(CPHYSADDR(a) | CKSEG3)
-
 /*
  * Cache modes for XKPHYS address conversion macros
  */
@@ -92,11 +97,6 @@
 
 #else
 
-#define CKSEG0ADDR(a)		(CPHYSADDR(a) | KSEG0)
-#define CKSEG1ADDR(a)		(CPHYSADDR(a) | KSEG1)
-#define CKSSEGADDR(a)		(CPHYSADDR(a) | KSSEG)
-#define CKSEG3ADDR(a)		(CPHYSADDR(a) | KSEG3)
-
 /*
  * Map an address to a certain kernel segment
  */
@@ -105,22 +105,17 @@
 #define KSSEGADDR(a)		(CPHYSADDR(a) | KSSEG)
 #define KSEG3ADDR(a)		(CPHYSADDR(a) | KSEG3)
 
-/*
- * Memory segments (32bit kernel mode addresses)
- * These are the traditional names used in the 32-bit universe.
- */
-#define KUSEG			0x00000000
-#define KSEG0			0x80000000
-#define KSEG1			0xa0000000
-#define KSSEG			0xc0000000
-#define KSEG3			0xe0000000
-
-#define CKUSEG			0x00000000
-#define CKSEG0			0x80000000
-#define CKSEG1			0xa0000000
-#define CKSSEG			0xc0000000
-#define CKSEG3			0xe0000000
+#define CKUSEG			KUSEG
+#define CKSEG0			KSEG0
+#define CKSEG1			KSEG1
+#define CKSSEG			KSSEG
+#define CKSEG3			KSEG3
 
 #endif
 
+#define CKSEG0ADDR(a)		(CPHYSADDR(a) | CKSEG0)
+#define CKSEG1ADDR(a)		(CPHYSADDR(a) | CKSEG1)
+#define CKSSEGADDR(a)		(CPHYSADDR(a) | CKSSEG)
+#define CKSEG3ADDR(a)		(CPHYSADDR(a) | CKSEG3)
+
 #endif /* _ASM_ADDRSPACE_H */
-- 
2.41.0



