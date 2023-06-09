Delivery-date: Fri, 09 Jun 2023 07:00:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEN-00Gjcj-Ro
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 07:00:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEK-0008OD-Eb
	for lore@pengutronix.de; Fri, 09 Jun 2023 07:00:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9mEa+egpXOgrVW9Wd/Z90/yEBoVfeii0svzPoropvQ=; b=ddR7XKAx5tf+El
	Uk5SEaqTLSCQ/BwFEiHlFGNKMk+lvzLjJCFWR3tXgq3A921vOZ0I7eBqURHeZ4kbfj5oajdnOL986
	S1akb1f1joP9XS2f7dJHskSpcGFTzTJkq6r2CCFxGd4LOsk0Pb5r1nubW7aSHwCdO64iSd9sNzozH
	DwIYpwLK+MSspG7aC1VwH1HWL/sxSI34x7AFGHlUvkmwbWa8sxkcjdZkW+IsoFQIW/OoAWESsFdDK
	Q7CgWv6jnfXENTQ4Hp4xpjrcoF8WBCdm3bHr+oPs5WNhdjgw01sLBv7aLO04n4c1K9j82ir7IQwB/
	LgPH9/G/24nS7eVCu/5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UD2-00Bf59-1E;
	Fri, 09 Jun 2023 04:58:48 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UCy-00Bf3d-3C
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 04:58:46 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f658a17aa4so623704e87.0
        for <barebox@lists.infradead.org>; Thu, 08 Jun 2023 21:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686286722; x=1688878722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9mEa+egpXOgrVW9Wd/Z90/yEBoVfeii0svzPoropvQ=;
        b=Z8gWCJI90DbFIg8vtq517wau0E0ov571oig+TFbnjwCiU8qYw+2bHXbp3GH8yRiz/X
         lOxpbGykR4ZVrKLEZZWUyzGZPF3ssSj82KCAHDEngwhG/AkJncy7xIbppA/szttKVRB7
         9u+wMZkjekcmdLN5SJnws3uQA4VvvbxUxN/DaL6SmLqs+AtvYRpTfey5tRhLBMf9CJ7u
         hfTYqMefargPBq1V0y/tcMsuupvkb41z2lwHw/22lrmqEnSzTWEdsVm6/L4N/1EtTKT0
         7tQC9TExaXCIIUJ3j4TvzAsAzRVLqIWUZMFNpOmI0j5iK7ZKkflmhACTPC8IhMTghT3C
         viuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686286722; x=1688878722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9mEa+egpXOgrVW9Wd/Z90/yEBoVfeii0svzPoropvQ=;
        b=cuoMmxCecI/AN451mufpLq1PkE4FFTYzwGyKCvIhHKwJgPgIzv6L06fUBW0aPuDAN9
         Yv/AbXbSu5rLdWsuDvwr75wTa4cDSP1xWyqYU/7vZJhPZT0ldttDfeauRnl5gQG0Jlq1
         gthYiTBo1Jk7w2UYhOPsq2NuFaVZAXYO6J/hmsOO+pZVgn+DFe/uh/GEZd2wgewJTA/i
         SHbE10k85r9cSn7aVj+G1HbqPmi7RyT4sJILcExP+v9zINdzdkcfzqOttkZXxe6bjtGg
         wGsuEIJJ5JXkvn0R37XusA9341nQyZfqtE71pV9pwNXw+chLL6AD3MYaN3fcLw5r7aEk
         z+mA==
X-Gm-Message-State: AC+VfDwUhGBibjjyR5YtblJIxbP7r1eXGC0wYWCQuGkbcVFaQMjgcnmb
	oBgTwUoVL78PupbDgOC3wt9Sedk0nJUE+A==
X-Google-Smtp-Source: ACHHUZ6D6NC3beLqgSbUhEKdbB4RpCNwczz6946Cd8aB4XfgvE3PPqUWEUcqfLLrgslbcgZ+wB3hqg==
X-Received: by 2002:a05:6512:539:b0:4f6:258c:4660 with SMTP id o25-20020a056512053900b004f6258c4660mr147551lfc.48.1686286722595;
        Thu, 08 Jun 2023 21:58:42 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.230])
        by smtp.gmail.com with ESMTPSA id y22-20020a197516000000b004e843d6244csm404325lfe.99.2023.06.08.21.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 21:58:41 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  9 Jun 2023 07:54:07 +0300
Message-ID: <20230609045829.2225-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230609045829.2225-1-denorl2009@gmail.com>
References: <20230609045829.2225-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_215845_031091_E61F9BD8 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 1/3] include: const: make UL/ULL() macros commonly available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import the definitions from Linux. Some code actually used those
already, defining them locally. As these are not needed now that there
are common ones available, remove the duplicate definitions.

While at it, also update _BITUL/_BITULL() definitions to align more with
the latest Linux sources.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/arm/include/asm/memory.h    |  5 -----
 arch/arm/include/asm/pgtable64.h |  2 --
 arch/kvx/include/asm/sfr_defs.h  |  2 --
 include/linux/const.h            | 10 ++++++++--
 4 files changed, 8 insertions(+), 11 deletions(-)

diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 2b454fa673..23fbbd8438 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -6,11 +6,6 @@
 #include <memory.h>
 
 #include <linux/const.h>
-/*
- * Allow for constants defined here to be used from assembly code
- * by prepending the UL suffix only with actual C code compilation.
- */
-#define UL(x) _AC(x, UL)
 
 static inline int arm_add_mem_device(const char* name, resource_size_t start,
 				     resource_size_t size)
diff --git a/arch/arm/include/asm/pgtable64.h b/arch/arm/include/asm/pgtable64.h
index dbec61753b..21dac30cfe 100644
--- a/arch/arm/include/asm/pgtable64.h
+++ b/arch/arm/include/asm/pgtable64.h
@@ -4,8 +4,6 @@
 #ifndef __ASM_PGTABLE64_H
 #define __ASM_PGTABLE64_H
 
-#define UL(x)		_AC(x, UL)
-
 #define UNUSED_DESC                0x6EbAAD0BBADbA6E0
 
 #define VA_START                   0x0
diff --git a/arch/kvx/include/asm/sfr_defs.h b/arch/kvx/include/asm/sfr_defs.h
index 2b7598e0aa..7f6fbd206b 100644
--- a/arch/kvx/include/asm/sfr_defs.h
+++ b/arch/kvx/include/asm/sfr_defs.h
@@ -8,8 +8,6 @@
 
 #include <linux/const.h>
 
-#define _ULL(X) _AC(X, ULL)
-
 /* Register file indices */
 #define KVX_SFR_PC 0 /* Program Counter $pc $s0 */
 #define KVX_SFR_PS 1 /* Processor State $ps $s1 */
diff --git a/include/linux/const.h b/include/linux/const.h
index 07f886d271..07414f95de 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -23,7 +23,13 @@
 #define _AT(T,X)	((T)(X))
 #endif
 
-#define _BITUL(x)	(_AC(1,UL) << (x))
-#define _BITULL(x)	(_AC(1,ULL) << (x))
+#define _UL(x)		(_AC(x, UL))
+#define _ULL(x)		(_AC(x, ULL))
+
+#define _BITUL(x)	(_UL(1) << (x))
+#define _BITULL(x)	(_ULL(1) << (x))
+
+#define UL(x)		(_UL(x))
+#define ULL(x)		(_ULL(x))
 
 #endif /* !(_LINUX_CONST_H) */
-- 
2.41.0



