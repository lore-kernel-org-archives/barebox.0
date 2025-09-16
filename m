Delivery-date: Tue, 16 Sep 2025 06:02:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMu5-003YaR-1M
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:02:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyMu4-0000O0-5B
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:02:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=; b=uAAla9JsZQg5rSWCn7Cp8SxVox
	xfST1FykslOW39x9PMoJu0i38ccXkqJsV1MRLYHZtHP/Ydc0yarfB/au9vgnuMYV7HilCS5VMeU5s
	A6mDt92POSxvVy0aJP4AWORGwo2+vIC4udIXJYzHdLfYbthadkK6cJRNy+0uDe9l8hbD6g87tkUZV
	gpzYjMRDulDAPearEPS0yx5Q3Ms8AAkYiTaFMj7UZnmz0WC4B4h6ngskUbGmFtHqkb+DJXTcz8s8u
	55pVl/ZUupE/HYNPUmJVwpsXcVY66Zfz/ESIaIxI3cuqgY5y5F67Q/gEB6PEPiGKRM06AZnc/O2+Z
	Dxllx4oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtX-00000006eX9-33rc;
	Tue, 16 Sep 2025 04:02:19 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMtU-00000006eU6-1G0d
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:02:17 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-3c46686d1e6so3411332f8f.3
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757995334; x=1758600134; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=D3B9PUN1rM0Luw0oQz++58jRtGp91aAkwazvnJ2vEqeecjzXzBZkvsXTkpOMIAwY9g
         Jw1hOjlTV0l98MGBTsO/ypPVFgZgUtPbekKdGODNhPUoJayvcCIZi2JDw5QgxG2sG3YG
         qSZ4FExyD+OINsUn2uJxUsXpDGxzJneK5Ew0UdtYBKQyZvzuUCuZm354QEE5OfbAZNz6
         t6Xq4wIc6HNQ/3ucfAcvZT5w8SZr1WfNgA3vjLOZ+q0Q4p6PvsSZkfXIiA1rPstkc9KH
         qWsrG2HlSr5je997ojc0cGTC4GRQ2+iPi2T2qT3QRBL+6PAq9mbrPjk/9Ym6WUgdhyq2
         aL8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757995334; x=1758600134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1FygsttnRWIE4FBCHr8s5JZodXE02z/kKyPzeoTjqE=;
        b=i+aB66udnlUDjy0vN/OJlI7Zl1srPj2tIPgto5kXc+CbhwY1m8/btAjBfUzrPNVSyC
         jSN/4ySFkR2bARRwvpNODrLV/Xc0KlemLO6HitcYG5BS0CF9IM2oPEDDTEuEghjp0rXd
         tI84hVATZ7RYAg7xl2vwZ6v2RYRLIPsW0sytM+zk2Otpo4Jkdu8i4gcIkTkpwHi6+gTB
         QQPI1HIupNScqR5FgkkpQSPm+hanTBbGyi2c+7Synx6nVhkobZe8HIUjHH9WtoIqszO+
         W6Hec1u9fIhBvNcHvzJZ9mIgJJpCwLjzDziYAzcqTj6AdHVenI7rNOS42sKdzOTDF3NF
         uOAA==
X-Gm-Message-State: AOJu0YyQYhKzXJT8X5DensPgOmabHb4xf0mVSdCGYDWpXR9FDuhsKgiA
	O5pLNEKOvbcRkRFBhczY1IJjFy/x/JJVxuFdU5NqgSTDmjXju3daVr6ShBQY5pUv
X-Gm-Gg: ASbGncuRPqVVb8ADQE+A8PDa/8CpMT8lOQkVeBcHzg7xr0Xpn7AdJsRtrqHbKJ+/hPk
	DEdBPls9CtdDhc5wuOvgxsuWVyNSWsPmhQBFiA5YLiJsow+rL+w5YR+kOVYp5znRaGxh30y9HlZ
	jFMrUa5CeWxqYnrxauOPKOeojAwJcz4dV+4Q0tr26crXjQJ/TuV6yA3jqBjL7jiKqs0eZqfQLki
	jgMkvFW9H82gBtjco8jImqtF07t0p3OfV5WwZtgG3s1U55q8uv1jkZW5HJNk1qHXToye0hYV4kE
	0ldoW9MAU4FTisUyjRV8kQgbd1km6JTgJl+5Ah2BF1H4mASyeIc3Jxf/TSSwH+RMwdbhVvy8r56
	uaS1fLW/nXyJq6DCB1w0mooVNUZJ9tr2JigS9nXC+z3BFamlxFW9i0e6J1/pMLgBWmPVTP9/vwF
	fmibg1C4tcDAlZbGZHUeuclQ==
X-Google-Smtp-Source: AGHT+IHz3B42f1cv8Mp/5Zmz2HfPie2Q82DoFK0dBUiRmcWUSOJ9Ree6GmNym9viWYWe5ld+iggT/g==
X-Received: by 2002:a05:6000:1869:b0:3eb:c276:a359 with SMTP id ffacd0b85a97d-3ebc276a58dmr2101483f8f.9.1757995334376;
        Mon, 15 Sep 2025 21:02:14 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e813eb46f3sm13594706f8f.23.2025.09.15.21.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:02:13 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:01:49 -0400
Message-Id: <20250916040155.814159-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250916040155.814159-1-chalianis1@gmail.com>
References: <20250916040155.814159-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_210216_870726_374879FC 
X-CRM114-Status: UNSURE (   9.53  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 05/11] efi: payload: make selectable without COMPILE_TEST
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



