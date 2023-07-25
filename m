Delivery-date: Tue, 25 Jul 2023 07:08:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHM-008zwA-DD
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHI-0004Jm-A1
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1EZZt19ZMCEs3kTWZp5UXSvf/DpfGwOsUTylhITy2o=; b=gm/j/TPkKX3uwg
	WZmJLuOsS1ZzUd97l95d3mqjFiGEtiFiW8YFTOlCMWsOiXssJZT42B8rqFMmuxkyaAed3A57qPMv7
	tZ9/cdWTwPiEJh2eGMOStIMPTEk1bYbw3RAtUiCms0Sf6zDtXnW3P3SUJRIDppkM/HmXaRI7CEq6P
	H3JqnySRoB3sTJS8lf5tZKM35yYizWamG2tLKn+4n/rhdbvOqsq5gXjfKKYTO+9a8pSkYmydDVn/i
	F4rXbchbxAc010lsnqaT0gBVv6c5gBCmVOFaymWtxNEnHwqjuz6nofTV/UpGGqBz6Qq1RZeIRZKd1
	OnVqrcZm6XA/eSSbphHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFw-006FJr-2u;
	Tue, 25 Jul 2023 05:06:44 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFr-006FGB-2Z
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:41 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-991ef0b464cso1310944066b.0
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261595; x=1690866395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a1EZZt19ZMCEs3kTWZp5UXSvf/DpfGwOsUTylhITy2o=;
        b=rdnTLRq5bMCTxEV7YBa62f0cJWP2C/YewLRnLFCOaNgB3MIpg6NIiJF6Zm1/N49Gbq
         vDuG2Nbm5PK3P61VQtbKBCQZ0AoStQIp4Qom5hYnQY8sj6W//R78leNcqH7GMKVrLpwM
         TU6ZhCRvkLlSIjJSPZfWZS5Gn243aBOEPrhZvSVHwJ+XvUTZJ/dJIFGwbm1HKumC/dgo
         XFx6zVpAciTbIBXl71rYM974jEtY61HAYEWbPByUTpYS20PIP+uodzBfMPfyt7JFpsfg
         ACMa3fHZBJTq7BeEO+7bpsBEC0prR8I7043jYmMZMYjc8Zz/2v3LCVaDZdcEFgeZAtfU
         8kEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261595; x=1690866395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a1EZZt19ZMCEs3kTWZp5UXSvf/DpfGwOsUTylhITy2o=;
        b=hsdeGraWgp5L6gIr892nluY0DQyH4+S+zNrOS3KDIu2v5RS62JgZc3t/LMsp96prZK
         yL0QdA7zd0SjSmC6+oRQ6XWDY2qng9pdhLHp1UURdaNjYPsO6ebdTTcL/z1/F0K7mxT+
         DDkI2LrItb7EXRuWNsc8AxzwhF+Q2acyUeg+TjlvwNAfraF1IqZDOOsnh1K7R4UlPQ1P
         /47L5NKvHFCFU2q0Xit9E2eyoEiuoS5eoPlbGcKeWiyY74VLdtxNnF3gHK+otw94FB98
         JpEbccZHjsaFHcPA23/buZQpFMTnjdsUv6IeHZKRABxTq8FsVcP10fmvjWhu8DjPjGKu
         COfA==
X-Gm-Message-State: ABy/qLa4BO3Oggd8n86BS+NmDuvDwWjvujx/OfV3TiVgcH2VOifT6t0M
	xE7Gg8X01exgGEuNGr3QvUbjCgTIu0J3nVOCwj4s8Q==
X-Google-Smtp-Source: APBJJlFv4ch1iNdY2kTjPQ/OtAYbhGiG3DzYo0XpKhmT++EXahFi4PMlZ+mQuCrFjX3hDKPY03PlFQ==
X-Received: by 2002:a17:906:ef0e:b0:974:fb94:8067 with SMTP id f14-20020a170906ef0e00b00974fb948067mr1187856ejs.23.1690261595736;
        Mon, 24 Jul 2023 22:06:35 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:35 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:06 +0300
Message-ID: <20230725050618.3451-6-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220639_837362_C933B38B 
X-CRM114-Status: GOOD (  11.09  )
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
Subject: [PATCH 05/21] MIPS: reloc: mark relocate_code() as noreturn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

After relocating the code we jump straight to it, with the function
having an 'unreachable()' call at the end. So add an appropriate
attribute.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/reloc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 3c845a9663..83b4040d95 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -41,7 +41,7 @@
 #include <asm-generic/memory_layout.h>
 
 void main_entry(void *fdt, u32 fdt_size);
-void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
+void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
 
 /**
  * read_uint() - Read an unsigned integer from the buffer
@@ -106,7 +106,7 @@ static void apply_reloc(unsigned int type, void *addr, long off)
 	}
 }
 
-void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
+void __noreturn relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 {
 	unsigned long addr, length, bss_len, relocaddr, new_stack;
 	uint8_t *buf;
-- 
2.41.0



