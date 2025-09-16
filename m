Delivery-date: Tue, 16 Sep 2025 02:17:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJOA-003V1m-0M
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 02:17:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyJO9-00017b-C1
	for lore@pengutronix.de; Tue, 16 Sep 2025 02:17:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=; b=ZmvDfPHcac0pM8rf4ovhOqCCDF
	Tif5aLAefYu+vGQPDifAgmihsT2IWZoFxSnXRnLcnDyhtLPphCXc9/8dhgLy/qyDyf0MeX1urgsRs
	jfCX6mZDOEk992D8opNEDkHRHvLzi+ILG+7UO0P38VsSRozagAAOGtVDxPY41b0jKhlfPmcVRetZk
	Ezb25AODHZBwbvp8qgv+Qc0cm+d8RgvcS26Nf1Hskf+cMPHmS/TwrHOw32NP4Ub682uTt2q/ZX1Mh
	E4/dy2Z8FqsATnHhuYAsRncrxh4iuoEpUKn6Io+LyEkGTMn9tOS8lftJyYVv6iy6D4blLYWyY9n3H
	FjdTjBmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNR-00000005yQd-3MKu;
	Tue, 16 Sep 2025 00:16:57 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyJNP-00000005yQ4-1xoD
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 00:16:56 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4b5e88d9994so47173241cf.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 17:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757981814; x=1758586614; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=PEFy975A9Wg6YHUAsVrMZjGTwWCfNwM6uRXzg4FEMxs+DpvwER3dOhBoi7wA9LHQdx
         BqEYFc75g8fxkfwFTVANBfDULqiNmYq/6Pe0CXECWAAxKs/JKEqo4s1xrvAD+huZx3jn
         LAkrWp9qJDfR2nmbcCBqov+KaRKg1lCfWRxyxba7w683wkENvsvYS2PembBhNNExLFFU
         MlBI3HOC3vecpGZ4rl8dFBUqvgdlSPTr+cyCxEewdNDl94gvxo0cZVJvXUIeLNf3wZoC
         IojvXjC5tMzLJGowsop+JvvxAliIv9LQHaL3K3rJKt3ZEo7wNQ51YZyP//pHqe5Lyg7k
         JjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757981814; x=1758586614;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=fg2HWzyXC0SRniti3uLcvvg/1Msw5BPqRHx0e3GfMtjzmZ6NzpJxLcf18+fXM301Ov
         78Dch3Ud22Y1PVLwekOCen8pbT+2o/ePT+40NTixyfMURf04LXzDxbWv2kVOK+Dm3kCi
         Po14OPp4K+5rQ77f/hL7rrNdg2sHBNuCAROquw5pLo1QgQFqCHJ1DlLQYAb+sUtCJeSy
         2kkypIoqQ+e5dTfWgOPwqSTozsYkzUkWym2xRaiXrWsLclJso7K6dX7F/XywZklECTJO
         aXYgGDh8bCvcBGxtVI11P1W/v3rx/r21erDF4kaxQNPKLGGHDQ/PKNRa0rrNJhRQT7t4
         lbqw==
X-Gm-Message-State: AOJu0Yz8rSG8fSPMSrSf4UhzZjS6aVmuwFgaF0ranMgROuba9gfPL8vi
	q+gYxaeZGvzKnMOomKDzgDzsGsc8oDG295igpOrrcgbGwwLUViyuKLYq
X-Gm-Gg: ASbGncu1Bsd4gIUjzu5ut+f+zNctMFy7RkQltaf1oauED4at8r742KV2vCIos+ke764
	1/TvpNUXDE4HXIMwIaKlymWgXTJyvkcngcPGG/CAIKiXnEeZf3ft86D6NzmcFhqZSM/EaB/8Rd4
	QE8DLk794gqoh8GYkdZUXh2Nndx2YyzDwX+QUWfYtGWhcBCa9qqTB7JJX8Ad5s1akKDywGa/bpR
	ExXr1vFYdOY3zA2dVM//7NmHeZMbP4XdrHOMUxxmdokPKI1v5jj9Vegd9psjRA2yG3Pxl84wI45
	flO1IuqGwmfItjxhb61iIDDk8NmkXN6M8Z1mUfXrPYWy/Tv4R/BEL6vlN16BtUCR0CzTtx9NPrS
	PP2yIJO+g8sDvEPctqREAHdD5SrpTmiL0wyH78r5oHK2vWr8wxwTdi8UA4U+TFftsO+3Udbh7Sz
	JKfcMaUBHBuGYoittz5KGJPgSv0w==
X-Google-Smtp-Source: AGHT+IHtJlbWDbys/H5RiONh/Ij3LsmTaEcLsmmGFrBEvKJJJW03iVHPB2h1bmAy4XqBVjzWMmAXCw==
X-Received: by 2002:a05:622a:56:b0:4b7:a885:9659 with SMTP id d75a77b69052e-4b7a8859f30mr56660761cf.41.1757981813830;
        Mon, 15 Sep 2025 17:16:53 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:db10:d083:890b:6e1f])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b639cb4212sm73732431cf.19.2025.09.15.17.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 17:16:53 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 15 Sep 2025 20:16:43 -0400
Message-Id: <20250916001649.591989-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_171655_515732_ECB0E068 
X-CRM114-Status: UNSURE (   8.99  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/7] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We currently lack a way to build a barebox EFI payload on ARM without
enabling some other subarchitecture. As CONFIG_EFI_PAYLOAD has a global
effect and adds EFI stubs to all enabled board, an EFI subarchitecture
doesn't fit into our current model.

Instead, let's make it possible to enable either CONFIG_CPU_V8 or
CONFIG_CPU_V7 directly.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20250904081626.93182-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/arm/cpu/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index e61bcadc8c35..fe0d1e470578 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -79,12 +79,15 @@ config CPU_V6
 
 # ARMv7
 config CPU_V7
-	bool
+	bool "Generic ARMv7 support"
+	depends on 32BIT
 	select CPU_32v7
 
 # ARMv8
 config CPU_V8
-	bool
+	bool "Generic ARMv8 support"
+	default y
+	depends on 64BIT
 	select CPU_64v8
 	select ARM_EXCEPTIONS
 	select GENERIC_FIND_NEXT_BIT
-- 
2.34.1



