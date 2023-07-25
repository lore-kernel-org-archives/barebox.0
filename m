Delivery-date: Tue, 25 Jul 2023 07:08:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHM-008zwj-5o
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHI-0004KJ-MG
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvIkgsjvB2lk+RKed2ajgGklHt+7gJyNk6hXeEOjbAo=; b=ZdYI0fbOSzz1gd
	os2Yy/lWXNiGn/vVavj94I+Au0J7bAebAwHbO1OnPKY9JbFFsbe3I4yJMUVXYx15d4rhuQlJvpRnI
	nGFeIJD1DOhHTThy5RRb7EK/Z3YZcc1AuxhokKf0l3WEGIGikP+IfdkZZTyU5cuk4/BpVHJoXG+T1
	9hOoRrxvQwV8DLLo0E1oz/aebaYYR7r7nC/u469Oi74OQobdT6MO/SYYfYs4ZoOwKuGS77BInt9ZF
	mjhEbGBd92s3CK1S+S7AeRKxvfyHszyMDJTWSRgJwoVTaCAnJMHriAjn43GOfNceFTt3ClgPAKG5a
	e01ZMCBmMESKBKDkrD0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFs-006FHi-2w;
	Tue, 25 Jul 2023 05:06:40 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFn-006FF3-2k
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:37 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51e619bcbf9so6706478a12.3
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261593; x=1690866393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JvIkgsjvB2lk+RKed2ajgGklHt+7gJyNk6hXeEOjbAo=;
        b=bQsJd+KTrMw0FSdUpLI78DYnwQtE9viVOPo/8p4lxx7w2qfT7x39qlN85hCv64zHpd
         iWvukvXa9kr88XcfamO2bkbWDo8h8vN5Tmj6RwntyAVxWJgZO60S3S3sjLmOyfDza+ym
         ZOryXXSI+6B9a9hi9Jk9Bj+upSdlTQYwdbCccGOeYp8wvEsecOXh//X9SgeOtar0ni8+
         GAobfAduRP+PVHrtgxWUrC/dOijY6FTOOkVy6oulqgbdPEcnv2+eCJDEAI4TUiBC2A0g
         02alknHQHWdpHV0bdeWIYQQ23BfpZvOuxAIyCsy1s0cxwSvzmSKTJ6kjPMOqltDwa3Yq
         yqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261593; x=1690866393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JvIkgsjvB2lk+RKed2ajgGklHt+7gJyNk6hXeEOjbAo=;
        b=hN9hUeBys8SMKiRXrehsk7c+zpEAPqzryOmbRhr0Giun3YEnp0k0lU6/PoGQU5bj9V
         p7Ymjw74CsGWb6hwdm2Q1Vmdru2+Zfu3dZSA/6SXgxDNcayg5+eyCUPeZwRu3+vvHNnh
         E1A4QyzwLkPRrkfLgw5933cwltMNUMhQv8HUfEGr+trD1ykAFb1+jOr8bNegM+I6wupl
         orU/OkAZwW95SSqt5260bSGvfTNhnDflptTSUQzkhW7ULGzrzEQA5a+NNSXGg9t4OgQA
         VhxoBD815K10lhZWnHqkVvt4hna3wKYpJ14tArKaA/HUd0nezwpczPGavsYivxMB/5xk
         EO1g==
X-Gm-Message-State: ABy/qLZjA8WbUZ+9Ub1jO0Xi+0v2X3FYv3v7dEHAf8QXaaXjDN8IjO+z
	Vu4bl7U0XGyWlf7TMLWOJz4x6QwGeQ3E2LAuKXM7Tg==
X-Google-Smtp-Source: APBJJlGFflq5TdAgvvCYDCKD6UtN5HbFV0sc48V5Yrc7IHL2BP/IOdRHxo7dFiYX4Yo0UJrZcAFMTA==
X-Received: by 2002:aa7:d34d:0:b0:522:2aba:bb32 with SMTP id m13-20020aa7d34d000000b005222ababb32mr3902346edr.13.1690261593310;
        Mon, 24 Jul 2023 22:06:33 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:32 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:04 +0300
Message-ID: <20230725050618.3451-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220635_886472_F7A6908C 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 03/21] MIPS: main_entry-pbl: remove unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For some reason we do set 'ttb' global variable, however we never end up
using it.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/main_entry-pbl.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index f75ec03851..78982fd995 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -20,16 +20,12 @@ unsigned long free_mem_end_ptr;
 
 void pbl_main_entry(void *fdt, void *fdt_end, u32 ram_size);
 
-static unsigned long *ttb;
-
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
 	free_mem_ptr = TEXT_BASE - SZ_128K;
 	free_mem_end_ptr = free_mem_ptr + SZ_128K;
 
-	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
-
 	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
 }
 
-- 
2.41.0



