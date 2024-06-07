Delivery-date: Fri, 07 Jun 2024 02:13:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE8-001st8-18
	for lore@lore.pengutronix.de;
	Fri, 07 Jun 2024 02:13:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE7-00084Y-Ob
	for lore@pengutronix.de; Fri, 07 Jun 2024 02:13:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLoe67kPB4qRKlurRRxq7xgaPSeOZUSBBV7nmi/CNqY=; b=hSh9+F2QOzoolj
	33EjFskqnOwsXOZPGKMCysbxgIiqOue+fjb1szn6H8z63evOg0RN4P/HGctVrFpLLYORxbfSoLrME
	rEYxleztlwvAU1AjBFn6QpM95Iy1ss7R9itWNzmdhQoDtZUPFgiTsPYzb6DAKcy4dVUkxsRa+/XjN
	8X4cz/7qLiD5+I0xqTZAg4hR7k8aywKAkRtapVkWAy91uIC3Q/Sw/wnoR5J82O5n33IFs+EZLaQGC
	xzu8eJLfGie3BkDHqZBD/lhdW7oHZLxMrwSyH3x2BuepV11cUNX8zIO4PDlilAL5z1K7vRNduKMBy
	4/JOMB6XI76WD+pHImCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDc-0000000Bmqq-37zq;
	Fri, 07 Jun 2024 00:12:32 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDW-0000000BmoU-3ARJ
	for barebox@lists.infradead.org;
	Fri, 07 Jun 2024 00:12:29 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-52b919d1fc0so1315926e87.0
        for <barebox@lists.infradead.org>; Thu, 06 Jun 2024 17:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717719136; x=1718323936; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pLoe67kPB4qRKlurRRxq7xgaPSeOZUSBBV7nmi/CNqY=;
        b=iRKO/Yy4sgFR7iaT8stOhPfGTqAzQUpfa9ZtmWAlJYC2fhjW2sbvGqcr5W2IFXOjGX
         nY0QzccoQ1uQkAYrUoKbtvrBwtRmY2bivETwspQCzynUB6PQcbbZXciDePHxe5vkRm52
         HbfnfUMVDYnHKH9aIJQrEfQHEhZrLZNACEMnllPweBUI8X7slS6R5iEfy0/XpaPxq76G
         pa+3qUbDjyzLXFlyWzXezs0cGwy0XeOAWqmfKirwl7eUdtNnRm8yj3xEsFIZ4jTSjZQX
         2EctNw7hYOVJa7+y0BRw92LogaEgv+NzxvjBC0ZNiCkPECelxLUyHtnD+IS5uVQFWQ4t
         FQPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717719136; x=1718323936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pLoe67kPB4qRKlurRRxq7xgaPSeOZUSBBV7nmi/CNqY=;
        b=mhS4scf3XOqh7o6DdCNf5kl77VC01WG5FIUeQnsvC4Brd+JA1/29kr8qrC+QebD6QG
         l0jChIKN2JiojEv8NoaEiv58QcWnPDjW4oOPU415mxo2jRgvgK5lswSiq55CmEXJO5uR
         uDaIUfirQhOuktr7mt4NYWbDhsOz0Zr+i+PtkmbiRBxPF7fm9b9TLxxXlisbCHycWeOK
         K5F3N3EBOnxoBeJVWRljkzeA1J6BBaQWNrwpoAa5LTbP01VAi+O2ZiVACyBsgxL9Mvu7
         3QoxLiVOo6dQ9mAXJ5UJVaxp7KSUvA7L1WnU4jBMYfWO6YBndMYz9nBzAQ+iygz6ZT2b
         BV0g==
X-Gm-Message-State: AOJu0YzmQLPAjo9xmMz3Rlr/TT1pJ1W6pA3g2xaVpOB7+c49/N3tg8m1
	V7AVnn/KTL3gtBy5BbwzXje1m/RYzhwbPu9Nzl6tO4RPeYabCWS4qu7BTg==
X-Google-Smtp-Source: AGHT+IFFQG5LrzfzgKSqahThzQHzM/yiqvOGNwVnNNQzCIREJu28NddPFgwRp9wPi1CebjC5AlxjoQ==
X-Received: by 2002:a05:6512:3a8a:b0:52b:81de:1119 with SMTP id 2adb3069b0e04-52bb9f07ed4mr378109e87.21.1717719136247;
        Thu, 06 Jun 2024 17:12:16 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41e1db0sm342594e87.18.2024.06.06.17.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 17:12:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 Jun 2024 03:12:57 +0300
Message-Id: <20240607001259.107805-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240607001259.107805-1-antonynpavlov@gmail.com>
References: <20240607001259.107805-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_171226_986102_AEDDA9DE 
X-CRM114-Status: GOOD (  10.49  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] RISC-V: fix crash on start if CONFIG_IMAGE_COMPRESSION_NONE=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the same approach as ARM barebox uses.

See also 6c03bdf8f99 ("kbuild: pbl: use same compression algo for both
barebox and DTB").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/boot/start.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/start.c b/arch/riscv/boot/start.c
index 2e18105bbfb..ab9bb6f320f 100644
--- a/arch/riscv/boot/start.c
+++ b/arch/riscv/boot/start.c
@@ -35,7 +35,7 @@ static unsigned long barebox_boarddata_size;
 void *barebox_riscv_boot_dtb(void)
 {
 	void *dtb;
-	int ret;
+	int ret = 0;
 	struct barebox_boarddata_compressed_dtb *compressed_dtb;
 	static void *boot_dtb;
 
@@ -58,8 +58,13 @@ void *barebox_riscv_boot_dtb(void)
 	if (!dtb)
 		return NULL;
 
-	ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
-			 NULL, NULL, dtb, NULL, NULL);
+	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION_NONE))
+		memcpy(dtb, compressed_dtb->data,
+		       compressed_dtb->datalen_uncompressed);
+	else
+		ret = uncompress(compressed_dtb->data, compressed_dtb->datalen,
+				 NULL, NULL, dtb, NULL, NULL);
+
 	if (ret) {
 		pr_err("uncompressing dtb failed\n");
 		free(dtb);
-- 
2.39.0



