Delivery-date: Tue, 16 Sep 2025 05:55:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn1-003YFQ-2o
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 05:55:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMn1-000735-0r
	for lore@pengutronix.de; Tue, 16 Sep 2025 05:55:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=; b=FWpkrf9QNpnxc/sWDwl/ca+bNR
	kGVqvpwVMe07P2vgWoAgHMAM90ZD9Z9d0gLlLTSeLBKl6Xm1Lj62/VBUShVI1iMqN82+X+e3pdVx+
	Mpew0t92CGqO88c7ao87vwy/ZIaHoB+zqeOZDI4di+JCS+ExxGPWa5VaCub9eC43FbBchgqBHyIdj
	JZJuoH4JGTS8zqAbf+gW80pN2uzhyei6vQPtXCur0CS2Qm4ki4sGZUZ/UTfgE8I0yCx1HwLEHCC5I
	F1Use8eRnPG/1d/5oytl27SDqxGSkLiUD7yUrFlA0XBk8P+XSlk9mKybF5DVGO36VQG1fz3TcUYQT
	ndkJcPSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmY-00000006dJh-1lMP;
	Tue, 16 Sep 2025 03:55:06 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMmV-00000006dHE-09dm
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 03:55:04 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3ebf23c0d27so665768f8f.0
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 20:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757994901; x=1758599701; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=UKWPF8hlOiZu/tQXPQJ3Rvcaif9WU4m5kKi0nDqM8UIr/vT6tmLZoGnwOHgwJnaGCM
         P9mtsXHi6W40a+WdvclLyt8nEcNhkAXBP3wTf6w9LkA0PVcOcnOWe0FJehq6eWH+hnfJ
         cG1MgptXIac9YZuoFpt7Uk0ZAA4BxpdN7eb9kPp+MXGZegQWiYXQL9rYJs9L/2xgPEDi
         0BGtPUW/GePFZAIbLiq9jC+WaHAz8OxJwfQJ/9oHep6OYhbJX1VS/u0itS/IzuLXbSis
         L59hL+/jOVvEsJf/89n0BTBQ9KLD13zF39FouDIzNb7gNNntIwCEQSmy4SBTWchwCRgC
         Dirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757994901; x=1758599701;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=sVozU3COARP52gLOuEyecDT2PNCfGjpkMSGOR9BMdqAkt4e/IbT+9PTyaHxH5crLo9
         /qC5oRHNLt+Y9flO8W/RHyMG6yrCoL5RhSytdRDeS5ftXl/AgPYXPhFww61JzyW4Dcpq
         Eh9Y/2iABrcAwXKaYoktRKxw85bZ1nSJ23tW93n5SFQ7vW6jh1bPC7oneWOSnd4AJ2CX
         gimuhbpn51SfejvriVc89rsPnsSMiYqXhP0swiZKdxuXr2QRGl0k96a80R5NoyyhbD7G
         5RAEuwPkl32rxB9O31+m0RzYX1fraR4K3YK4suXnOO9f6j8xdoN9SHAgEcvpALS2IABR
         qV7A==
X-Gm-Message-State: AOJu0YyEj2AwkVou8UWoiNv3UUqEaO20/nZjrhivh4xycVmmq60o4sxn
	ckjdnDwFnSYjpknmQNTm4+Yu28FKyCM5knech1WHf9+VtMTEWd0XeRNMoBUugnC3
X-Gm-Gg: ASbGncsxkgah0AMSHg1HyUjMiLQTfD2dvqy8nwM7SXtAmOsIdMlY3AJkC/CPFe6iucx
	r7h2LORrDz6RYsCVt0eDieb5QC4jtblXhIXzGyCp0Id/jOWeqeLGKejK+qHW3zSr/vfxp9wWUYL
	K9Sxhojua3ctEfYKQ5F1hp3vsBeKFPjeuvFBpD+sn+Wmz90P7TByGZw2MvuV4nTWUTlm+ykHKtt
	wB/xoXAYYIRlD73/cMeLA4NDn74VmPTKf0ifvHL68cXQVhkwf/qTBg6yzA0e0q3Yo1UltWqrDLl
	yWsxlFSrbJEjdKEb8kds+aUFLpcLC1CGAvPtxr2EnM6YVkMQDSodW9H2pz7sNY3I4mCv63zD74M
	vZQu0C57yqB3KrVvOPKGPZBOktEuWJeSqWjud5wzWtmZpL5TDCEEYgvZTF83b4Wzja2xZSIwx1+
	IXEzjSvI5mEzZs93bjmtNOHg==
X-Google-Smtp-Source: AGHT+IFU1E0j2wI14u35U1ImuObs2GUlXXRBNr2Tjmruq0WFMaU+iKOc1ZbMf4WDOPH0ImtR9LFiZg==
X-Received: by 2002:a05:6000:238a:b0:3e0:2a95:dc90 with SMTP id ffacd0b85a97d-3e7659d3a91mr10193941f8f.35.1757994900958;
        Mon, 15 Sep 2025 20:55:00 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e8237cfdddsm13496580f8f.60.2025.09.15.20.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 20:54:59 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 23:54:32 -0400
Message-Id: <20250916035437.805046-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916035437.805046-1-chalianis1@gmail.com>
References: <20250916035437.805046-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_205503_099939_E57F05BE 
X-CRM114-Status: UNSURE (   9.59  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 05/10] efi: payload: make selectable without COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/Kconfig b/efi/Kconfig
index 5f4c6713d539..5ae7ec92e5f8 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -6,7 +6,7 @@ config HAVE_EFI_PAYLOAD
 	bool
 
 config EFI_PAYLOAD
-	bool "Build as EFI payload" if COMPILE_TEST
+	bool "Build as EFI payload"
 	depends on HAVE_EFI_PAYLOAD
 	select PBL_FULLY_PIC if ARM64
 	select EFI
-- 
2.34.1



