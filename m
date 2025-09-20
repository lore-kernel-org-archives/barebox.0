Delivery-date: Sat, 20 Sep 2025 05:04:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntd-0054wc-1j
	for lore@lore.pengutronix.de;
	Sat, 20 Sep 2025 05:04:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzntZ-00050a-Vj
	for lore@pengutronix.de; Sat, 20 Sep 2025 05:04:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iHa78pLPiWv1YrZkVYDDmcAAHaVodDtZPHGlaw4D24E=; b=QfISwgKdt0ILD2PlnaF1kQgU4d
	uhOxQcCq1YONVBMMtXV4zsJD8kaY7MB+Z3unYzPakGn1BpiooUFj7LPYVZ9fZGy/HoCHEdW1lKqUO
	Kldy1vWgTXu/PuTUUd0lFQ2iu+vQMDPNWgCAVYl3XWiXv7QD1DWPsU8jJIQojfLmYf7srVNmZhDHL
	tQQJ6zOC5rKaUiQuwfr/h6HKlWB97I0eSPlDgkWuy8pSGKbhuwnz9nR7D7hTBPpNzlvipUiz6QvLP
	WwwbSLT7zSyg+PTPVdJSxwaGUMdjb9hwj1E7MXT2K8pm7pGzQwV0Jz+QVOY48u4/HJtrBZCNH7g0i
	YUZWlgdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznsu-00000004bmI-39zv;
	Sat, 20 Sep 2025 03:03:36 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uznss-00000004bjx-2XLJ
	for barebox@lists.infradead.org;
	Sat, 20 Sep 2025 03:03:35 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-45f2c9799a3so20470835e9.0
        for <barebox@lists.infradead.org>; Fri, 19 Sep 2025 20:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758337413; x=1758942213; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iHa78pLPiWv1YrZkVYDDmcAAHaVodDtZPHGlaw4D24E=;
        b=I7h2suXer95albfN4Om/QkLmQBG3OCilUYdxaN4QTDCXkle+EgiseSBjZ8RyQxFXqW
         E+fRbsNS7C7eBZleSN+XUxhie/k6pWKvUfCyUE8O/ElGcQLG/gh2Xx5CVwTw+au5MsAD
         NDNCfr9SChl+8InokkBIK+T2RwtUii37n5r7sLuLVKNN36PqfmK7yM/zSbXE00r2m1Rq
         kbCGLBhUMWEM3rypmiHuoSqfei7Z5Nxq7qy2j4Ct24PdPuax604NbZh8m7dQn5kPAgbm
         YTjnImPz5Fk6uWj3Jp5miq3Ym3caZCPe0TVAN7X3+O3BadbiYJreW39vC06Mta0KkJXW
         j4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758337413; x=1758942213;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iHa78pLPiWv1YrZkVYDDmcAAHaVodDtZPHGlaw4D24E=;
        b=YZHByZuJE/caY7vOLkPo2OsqvowJHQE5dTVFIel6wVyVlRqMTG/Hupk1fRENA5bsOD
         bERu/Yf8SJPSQV3jADjEdGdXFtOK4ZhyDvN+tSDHm+RniGM1WteNVWlcGDqQfXaZ0Lhd
         MSlUhkx4K6ndgVG5mVjutNqeLrZX7IehbVGWwwZOBC6mKBbY7Q4pQJh7uWzQBG/X1mAP
         qFCtJrd11P3/9hIIWH8VkZBwKoRdvLeTqgK7/5RLeNIse0J40ssHPwyaUh/n8m9h884q
         YSqCV7/sUXseRvPybVOqao8MDn2xFaU4PiL6wT0Ryy2Ov4tjhGspaEJd8X2E7Nfi0clF
         spRw==
X-Forwarded-Encrypted: i=1; AJvYcCUoXohVcHp3Qus040/tXZXMEe3b2GVViAVRX6Itg4/46T1p1eKx30dBGtubcZf+lRNDkzAAaoQ3@lists.infradead.org
X-Gm-Message-State: AOJu0YzK7LSOlGbazHSUdvgRbajRPyxZ7GMPdyenJZ7bQnALQlgch4dO
	QjqGVnmEhAzJxo5iEYNNp36F6fivQ8R7z90SXv//lcFhJAZVV0Sf5U8g
X-Gm-Gg: ASbGnctdRNoFBRDGYkqpuhGEw6spw4VDagCrmsbvwXkrTNDxrN9azQmty6J1ANQOH8b
	bMemJ/pDD+4b3HQ5WiKb/dQBZ+pxbgMMrtGjEvOz4ca63qXehnZcUhhYyg8dxdFllSeC+D7Fpd2
	bL2PqizYGMkbGByHN4CN+M35vCVjwLqvkqE3YLlTm9DrIfdoVTaOUxZuBbDGY0qJ4bOJKT8QE9k
	Xra90S+IB3D1piZxMfU3kQ0PrKEqp3AxlhLe5WGobO8PlQU0TrNrcb/NICH1V+NpNTMpyaLA32Y
	OYgPtT2eYUnxVE4qOFrjpJl3L7ymB8A88oOUPeU9Y7OzB7VPHPHoCOP2U4BSMasR3ObTxyTwoBy
	R7HLEc/YN8obiYhS9wGmRmZX4KiSIdmh4Gz1MDi0NM2s4D9aU8y0xJKPwKuw95O3QB28NWSuuHK
	5y42CNkmPt
X-Google-Smtp-Source: AGHT+IHfGnwCmeHlMRszmBD2kiioZJ9LjdKX0sAyboKlPt7aFSwswRAWkuHWnU68PnS3tRDzEpJGEQ==
X-Received: by 2002:a05:600c:a48:b0:45c:b5eb:b0c6 with SMTP id 5b1f17b1804b1-467e75eacd0mr53567545e9.5.1758337412730;
        Fri, 19 Sep 2025 20:03:32 -0700 (PDT)
Received: from [127.0.1.1] ([143.244.56.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-464f64ad359sm128118415e9.22.2025.09.19.20.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:03:32 -0700 (PDT)
From: chalianis1@gmail.com
Date: Fri, 19 Sep 2025 23:03:13 -0400
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-efi-loader-v1-4-dd8cdafb9067@gmail.com>
References: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
In-Reply-To: <20250919-efi-loader-v1-0-dd8cdafb9067@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Chali Anis <chalianis1@gmail.com>, Ahmad Fatoum <a.fatoum@barebox.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_200334_666241_7E2406C6 
X-CRM114-Status: UNSURE (   8.85  )
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
Subject: [PATCH 04/15] efi: payload: make selectable without COMPILE_TEST
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/Kconfig b/efi/Kconfig
index 5f4c6713d539abc88e3244f7ff3933274a8c4ebb..5ae7ec92e5f8d12f72842c5c97bc9ed924b6dff9 100644
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



