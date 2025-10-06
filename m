Delivery-date: Mon, 06 Oct 2025 06:16:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdy-004lsP-0w
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 06:16:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5cdx-0002tO-IH
	for lore@pengutronix.de; Mon, 06 Oct 2025 06:16:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pOoNCnJp03DRuTs0zMoSll2ZDSNcJz00dgG0AbiGpEs=; b=VdICbQ5jgPw/SRy29rSxdDXWw0
	fIta8HAfVtgZdlmusrXJOPFQQVQ7Xnw+1S9c4BkaOzTkIrzMEyJ2MKtJnET3sl20S+tL5wD64tskq
	LQ/xZZZJ14XKUn7tPwpOufOkVEwkvmgHMCvAZbiQYRKyjnnBv3Z7Ion53XC0jPJ77zfLHDSIDe0wJ
	L1mZ9A0uzP8NDKuHWnQ9ooPECyZZOi8fwkD+W81eQwBICtyDsUmzW3+NwBpd1ySdIUBmuJdR0zE73
	5C0ObfBCM0SOP/Vr3J4x0lrBYarVrbw050xoh+bAOWxkKqgDr9iVKHrxhjtqGjDDnmnYUkQZ7wmsy
	Yuzn8ejg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cdB-0000000GuII-2wua;
	Mon, 06 Oct 2025 04:15:25 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5cd9-0000000GuGn-0ZYQ
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 04:15:24 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-4dfb1f481ecso59720191cf.1
        for <barebox@lists.infradead.org>; Sun, 05 Oct 2025 21:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759724122; x=1760328922; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pOoNCnJp03DRuTs0zMoSll2ZDSNcJz00dgG0AbiGpEs=;
        b=c8TWEm+k4uXTilr4twKcDucXaOo7IA2x2tXKvf8p9JhOFqxdOqyHcBcgq09AMNbx10
         wG7FOZmG+sjMAvj/iJsnHKpszzavE3/kEj6Im5Zxz8lDRIrs03E/knmtXBgayNl1F75q
         1et0hKk7JayGNvU5Bk/+bU3ckPeyZ7M52Nn6lLgfkQ4APiaUWKjIsMFUYD+2DH5lB9T/
         cWlbLTJzVE1IzVTUt8LGusN4Qh/qq+EybB/PKA+YMHj63OnSnzK7AcSkQO21vuhQPoRT
         RGmkjbvGDq1cz+IbKzx7hZfwN10JnPZs1/N4uL9N27JhKt5rcESRngxf/+GhvgjEKN/+
         eALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759724122; x=1760328922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pOoNCnJp03DRuTs0zMoSll2ZDSNcJz00dgG0AbiGpEs=;
        b=Og43qdi6N+sZhRPpSE+W3dU5CuJC8bkBnW71zWSYpv/4gA5YFHE0zD5NxPlnSBMRDb
         Aat+MmiJvmBtT+/SQ68uKSPTgUmzaBhPOKkL7TnfUGbLHEmARh5xdjRVsWMn8Gx6WUbn
         X3RO5xUghD0JSEXtol9A4yKoRU2gKZ8IydqDmYt4d/tY6/nNzhFw2bw88InwipLIaiQo
         cE5O0n8xtGtQbK9AM8Jfs5CIgP/+MQEM4Abu73HjKEqLFxjI5+A1ssvjW/0dyyhn5xg1
         kwpTWd1pA9FyLZIZdxU8BgBrCpYtXtBM6xHgLwH8ooSvbBzfMGpdfuFLuoqGZ1vsCEcg
         Q1GQ==
X-Gm-Message-State: AOJu0Yy7U5oyNzUybuCoW2/d1uVii1jnur7US02QYv9M36hrpSbtcDze
	QvG5iJsqJSwlZTwIiZ189bPuqc8NbkNdoemUtL486TrtLZuwHrrTEaQ0OtnPNQ==
X-Gm-Gg: ASbGncvSBydi65QofCB3F5LHck9q1T6DRHFRpPxKz7Vgj1O1iFTgjpQVnDWagE+7bml
	zD71R3EA6uc0itpJDez3bcoopjFLkwi0hVcODLHmFtzx6Na+A69blx0NVlsQBya1PM/UQ9Ciz7F
	qYHuPv9Za/ebMBpxqmRj73AvwX2vvqQ/9NYqm3BQ9OJB8sYnRiIMVVkxtl3u8dCNUrDRS2C8alI
	U/SFTP29c5Hz9Sf6mzElGnUOA8wY7FulkvilxLQBnx2ici4nx4OBrFMlEj6psJBaAXTedsvjI9h
	ps3CQlH85kP59aSj5gJm9JYWp9OsByW3eY/ZVL82y39Ds2EPY3MztW1tulIAy8ZNWXvKDJfcfgQ
	1uod8AxsrbiOVKFrEfyWuyvaAFFX4ktBSOheNMw4c90ndTyXOweTjE6kTeyuS1isLtFFoPyDGwG
	g=
X-Google-Smtp-Source: AGHT+IGdWwkANE99E6cCdyPdqUDo4QnCIbF+zQXUmtMRYSIFjJkccCZavudzRtpUtnNp0MQO+CkODQ==
X-Received: by 2002:a05:622a:4ccf:b0:4d8:67fb:4180 with SMTP id d75a77b69052e-4e576a5c2fcmr148763421cf.8.1759724121923;
        Sun, 05 Oct 2025 21:15:21 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1608:a712:ade2:2b30])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55cadcecdsm119506221cf.23.2025.10.05.21.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 21:15:21 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  6 Oct 2025 00:15:06 -0400
Message-Id: <20251006041512.1360284-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006041512.1360284-1-chalianis1@gmail.com>
References: <20251006041512.1360284-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251005_211523_187583_3421CED2 
X-CRM114-Status: GOOD (  13.02  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/11] tlsf: support on-demand requesting memory from external store
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

barebox running under an operating system (or nearly one like UEFI) does
not have control over all the memory and should not hog too much memory
upfront as that can interfere with other applications, e.g. EFI drivers
or the EFI firmware itself.

To accommodate this use case, allow TLSF to dynamically request more
memory from an external store via tlsf_register_store().

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/tlsf.c  | 29 ++++++++++++++++++++++++++++-
 include/tlsf.h |  1 +
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 4ee53a9b2f20..636b57b1c642 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -159,6 +159,9 @@ typedef struct control_t
 	/* Empty lists point at this block to indicate they are free. */
 	block_header_t block_null;
 
+	void (*request_store)(tlsf_t, size_t);
+
+
 	/* Bitmaps for free lists. */
 	unsigned int fl_bitmap;
 	unsigned int sl_bitmap[FL_INDEX_COUNT];
@@ -568,7 +571,7 @@ static block_header_t* block_trim_free_leading(control_t* control, block_header_
 	return remaining_block;
 }
 
-static block_header_t* block_locate_free(control_t* control, size_t size)
+static block_header_t* __block_locate_free(control_t* control, size_t size)
 {
 	int fl = 0, sl = 0;
 	block_header_t* block = 0;
@@ -598,6 +601,23 @@ static block_header_t* block_locate_free(control_t* control, size_t size)
 	return block;
 }
 
+static block_header_t* block_locate_free(control_t* control, size_t size)
+{
+	block_header_t *block;
+
+	block = __block_locate_free(control, size);
+	if (block)
+		return block;
+
+	if (!control->request_store || !size)
+		return NULL;
+
+	control->request_store(tlsf_cast(tlsf_t, control),
+			       size + tlsf_pool_overhead());
+
+	return __block_locate_free(control, size);
+}
+
 static void* block_prepare_used(control_t* control, block_header_t* block,
 				size_t size, size_t used)
 {
@@ -934,6 +954,13 @@ tlsf_t tlsf_create_with_pool(void* mem, size_t bytes)
 	return tlsf;
 }
 
+void tlsf_register_store(tlsf_t tlsf, void (*cb)(tlsf_t tlsf, size_t bytes))
+{
+	control_t* control = tlsf_cast(control_t*, tlsf);
+
+	control->request_store = cb;
+}
+
 void tlsf_destroy(tlsf_t tlsf)
 {
 	/* Nothing to do. */
diff --git a/include/tlsf.h b/include/tlsf.h
index e0dcdac1e7ab..ea86b0600c49 100644
--- a/include/tlsf.h
+++ b/include/tlsf.h
@@ -63,6 +63,7 @@ tlsf_t tlsf_create(void* mem);
 tlsf_t tlsf_create_with_pool(void* mem, size_t bytes);
 void tlsf_destroy(tlsf_t tlsf);
 pool_t tlsf_get_pool(tlsf_t tlsf);
+void tlsf_register_store(tlsf_t tlsf, void (*cb)(tlsf_t tlsf, size_t bytes));
 
 /* Add/remove memory pools. */
 pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes);
-- 
2.34.1



