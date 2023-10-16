Delivery-date: Mon, 16 Oct 2023 16:26:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsOY6-00AeBB-DV
	for lore@lore.pengutronix.de; Mon, 16 Oct 2023 16:26:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qsOY2-0005sd-Kt
	for lore@pengutronix.de; Mon, 16 Oct 2023 16:26:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ftyG0SMPw86j0h4Uwi3lH0gBmeLTybbyq2bc+lr3CJo=; b=eRCncTKEVzXASNume7mQ3xYit/
	EGbjrSAquNxFw7bM5wj8ISN+k3FyvqIpwDkmKm9x/JEf1FUTrUekagFmDoZttYvzitHS5WHSOQw6l
	wg3tSVPGEh/oeclVcYCEgT4Qk/MraHz38E4odjxd8wNvUt2zDkMl0FSHSbMi7UC72N+6zJe+OTZgQ
	dXta2DSl7Un3LUTT22qSWrjO4ZVFrxwXNu6pe2vRFYTXsOrOq9HOP7snCD7pEIKY2/QPD0OQZoxkG
	l6D+INFuXrgMqBIAP2aAmmaEe0cSE1MK0wO3FCUmleoVPaFGmfwfe4l4FdPjRY5jAECF8QFJDnSPi
	SqGZm5xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOWc-009rNE-0e;
	Mon, 16 Oct 2023 14:24:54 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsOWY-009rME-30
	for barebox@lists.infradead.org;
	Mon, 16 Oct 2023 14:24:52 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so5818695e87.1
        for <barebox@lists.infradead.org>; Mon, 16 Oct 2023 07:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697466284; x=1698071084; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ftyG0SMPw86j0h4Uwi3lH0gBmeLTybbyq2bc+lr3CJo=;
        b=Yk/gxSsNdBjpJcRMHHj5EiqeT7oWDRaPblhFZfzTfafLCVuNXOHGEGTYSHiIuQGejS
         XzQuvHBw9vu07AUP6jmGz85JxRXG/HUdW62trSjHPgmYsx581pSWzzzeSOxZpOtLQJMl
         5qKEOmFDYlW+Z788ivSyAryg9UlqEMTdFLfBHmclahucHiz2+20CPnwWHOBUoOI8OnQM
         ywz9R6BA/Z4bO7Cu7EsiV14aYincADvLtOLtP1KRygpdvw5GFyWxRVE20AnnyguLxQx2
         lYTZCk3tGycmXhAfXrQOza2oaNPryL2/EYyvdKUMMkNEjdylq1qdrnDywAMZesr0d8Bb
         e90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697466284; x=1698071084;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ftyG0SMPw86j0h4Uwi3lH0gBmeLTybbyq2bc+lr3CJo=;
        b=aKzzxniTjb8lJo/83JRprygvRORArMuuiNCI61mHRocVbvibfuRmixtyX0JsRwknJ1
         7E48fLN5L4AXWD2bJ/M2iRtPMqqtNFzC33U0g/VtW1CcRRU6vI7TkTC/UA63KBHigJiu
         ljbfGdu3QlydiEH+Oz8jDZiN8tnMOHjSwEY/Xpea/Kj6jynraOV+btvAM/NOHcOXQhDZ
         fOrkJ6uzpABKzbGVk7tJ3fSFvFWcoJSNaSlFicnJjJOoejmrZZSL1pY7QO54Ru9NL8Tv
         1j6ji1t0KHut8hSpTTINTY2Lnmp2D26ZosF6OmScIzaTamTohSN3hM7PUPrMgfC5w/IM
         unKw==
X-Gm-Message-State: AOJu0YwuZ40b22a1l9PND8JEtofy3+S/dai1rVIB53ps+M4LmBBNmT6a
	VLM/B5yM4xcPmBSDSCa2kezAMpgCXe4=
X-Google-Smtp-Source: AGHT+IEsaKkQz5tqiDN1RU2kf9hCaVB8sJylInNnMt0nMRDw5YsD+HoYN5mxA8ZR9r4tp+4mhnr6Ig==
X-Received: by 2002:ac2:4da7:0:b0:505:7113:1d0f with SMTP id h7-20020ac24da7000000b0050571131d0fmr25863813lfe.13.1697466283928;
        Mon, 16 Oct 2023 07:24:43 -0700 (PDT)
Received: from localhost.localdomain ([185.119.0.88])
        by smtp.gmail.com with ESMTPSA id o17-20020ac24e91000000b004ff96c09b47sm736498lfr.260.2023.10.16.07.24.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 07:24:43 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 16 Oct 2023 17:24:32 +0300
Message-Id: <20231016142432.2759214-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_072450_975081_6BDFC3DB 
X-CRM114-Status: UNSURE (   9.20  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: rockchip: Add missing call to arm_cpu_lowlevel_init() for rk3568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-rockchip/rk3568.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3568.c b/arch/arm/mach-rockchip/rk3568.c
index c0453ea0c4..75b0824479 100644
--- a/arch/arm/mach-rockchip/rk3568.c
+++ b/arch/arm/mach-rockchip/rk3568.c
@@ -93,6 +93,8 @@ static void qos_priority_init(void)
 
 void rk3568_lowlevel_init(void)
 {
+	arm_cpu_lowlevel_init();
+
 	/*
 	 * When perform idle operation, corresponding clock can
 	 * be opened or gated automatically.
-- 
2.38.2



