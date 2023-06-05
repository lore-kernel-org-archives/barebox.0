Delivery-date: Mon, 05 Jun 2023 22:28:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoS-00CCVT-NC
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoP-00014P-Cy
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXsJAAVr5TkiOFnMoMM5amPa2uvBSkHvJ0HVL+Fpfhc=; b=HHRJffvzyBgc4w
	vir2Kjf0DbWxdyyXJpB9wQ5hvTrvO2ZlOc7NTFtmVYudaeAroPMMVhHNRAvGMtT8UhttGwpbqcNSX
	agWyGBLSGoTsBs9sEtAfksObDui2newlJkb+dTnIa+dvsNKmSh9xdqMCY3nJKAwCAkL4okHJ7K8i+
	WwCa1/S6RYFGo7rTKRK4yIhOpt6Raw6Udcp1xSrxqV5rfT9we/pFV/ieI20spjXq9n8CIOYOshDV0
	7u8JDUNOWWUqkUP4iSP/kAQod7pbyA8zl9b8cObZrL8fM3SX/FGHWysA5oFq7El9LGUuUW9enhO3l
	tGlzGn+3ULpQFCDqbKxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gn3-00Gh7l-2G;
	Mon, 05 Jun 2023 20:26:57 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Gmz-00Gh4w-1a
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:26:54 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b1ba386cdbso35673871fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996810; x=1688588810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MXsJAAVr5TkiOFnMoMM5amPa2uvBSkHvJ0HVL+Fpfhc=;
        b=eXNd3ecSbCOJ26/s3N9KNopiLtk7wgTCFraM4T8htwT3IYwqIV5sZhAU/9NI8SeJCj
         uj0VHRl9kFlVHe6hscjqWhznfc9y6BfuYOsjGkAUCzhwxvdsZz3XC4G2QRjlYry0zPC7
         ACdlgb1933Zyn7ZNwSN85kM5kQnvAHpkp8+6Ci43uYbb66iKf0a2npPCjzer3ALZ4PmJ
         b7A6k2A1ueccsdSd9hS8Baf6xXmAbYbZ0KR88byAm4RFCNYJ1ASXOzZfHSr0pMvLkxP0
         kLFE0bAXSaJ4Eq8C+oOZJ0+QA9arPDrL/Is+fapkf2hMxCHjJRQghTZB5AiAEVbabpcx
         CdDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996810; x=1688588810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MXsJAAVr5TkiOFnMoMM5amPa2uvBSkHvJ0HVL+Fpfhc=;
        b=GVjNBjbgkgtGdGCtk8r5FBBiakyGnozFSREazMxrltn9hB9tjpMaCIxcmJ5D6f4EB9
         GwrKA8rhqO8/OBfVeZLxFlfZUMFuVisIydeKgC+jfaWj3iTKxvhr0/9bsjpj0aowhDlH
         Yo3/r3gUfiIrGMzYC+12Fz/MDC/t6mVgnbMnBrPUzQ4YGj1yoPkQClJnf4djif6nNBjb
         3b79HAXFlW9JSWzhRe4vycIXQuUJcfZS9HdfGO2fEzd/MyCQl0k9lYNKOL62RnjxqkgX
         hU9mGYKxXUUV/YpT8Nv51rsp181W3MxPQLSLjtDlLJnPIpbFHE2BELJpe1bserWvEqwA
         1HWA==
X-Gm-Message-State: AC+VfDzJaJegPlO1I/ccN3lAqN31vk9dg1JFA7Yf3p6T5yx9AdnvcPRV
	ta3/dprAdnak2y6rx/WMafqKk8gCyKtA3A==
X-Google-Smtp-Source: ACHHUZ5otI3W0BuoUI5UXKG1G59c/0UBtgLCo+38nSsMma21KLCOhR3gGzY56fntXOzkfpxiysNr5A==
X-Received: by 2002:a2e:9616:0:b0:2b1:e5d8:d008 with SMTP id v22-20020a2e9616000000b002b1e5d8d008mr162633ljh.37.1685996810026;
        Mon, 05 Jun 2023 13:26:50 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:26:49 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:34 +0300
Message-ID: <20230605202634.42175-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132653_530212_68B7964E 
X-CRM114-Status: GOOD (  10.19  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 03/17] MIPS: reloc: fix relocation with CONFIG_64BIT enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use CKSEG instead of KSEG, allowing it to compile on 64BIT
configurations. Also make sure that we do not truncate target
relocation address by writing it into a 32-bit wide variable.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/reloc.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index b084a88be7..3c845a9663 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -108,8 +108,7 @@ static void apply_reloc(unsigned int type, void *addr, long off)
 
 void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 {
-	unsigned long addr, length, bss_len;
-	u32 relocaddr, new_stack;
+	unsigned long addr, length, bss_len, relocaddr, new_stack;
 	uint8_t *buf;
 	unsigned int type;
 	long off;
@@ -121,9 +120,9 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 	length = __bss_stop - __image_start;
 	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
 	if (IS_ENABLED(CONFIG_MMU)) {
-		relocaddr = KSEG0ADDR(relocaddr);
+		relocaddr = CKSEG0ADDR(relocaddr);
 	} else {
-		relocaddr = KSEG1ADDR(relocaddr);
+		relocaddr = CKSEG1ADDR(relocaddr);
 	}
 	new_stack = relocaddr - MALLOC_SIZE - 16;
 
-- 
2.41.0



