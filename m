Delivery-date: Wed, 18 Jun 2025 08:38:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRI-008WfT-0h
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 08:38:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRH-00038J-GC
	for lore@pengutronix.de; Wed, 18 Jun 2025 08:38:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Cb6XYH15z3AloGyfeWb12Viv/io7mTMvLoDRE/J59s=; b=MxVqhuJMdHCx4RiThSOZ1f8emM
	MdC2ohSGFOLQJQcSmHQFhr6WC0cMIRaizu1ADXb7DMa+dXzpqLrnuNRjLAv+1Fd/4SwjqcHEXrwwv
	raYE3tVJpp9U/Pw6YqWOGfrn6GctDkjfvHOJNVvfxEztd6uH6RcheC2HeU6+qx4hFfMFbLjN/E/64
	9ZgxN0CVFzgC+GgtSAobARC2/HBx6u9xra+RchvWrdovwRCKL6iYgzl1ZJP1X5tMOEXwVy1a5v+rg
	lG/f09IZbGlsEQn5f76TmIgiV7n5k7KgYBsItWUp3dqIYrNCWva1cMTFhF1OLHDEeSj51aELphZ/e
	a2hYKnEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmQl-00000009Bvr-0rAm;
	Wed, 18 Jun 2025 06:37:55 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmPG-00000009Bk9-2BmZ
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 06:36:23 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-32b3b250621so51456701fa.2
        for <barebox@lists.infradead.org>; Tue, 17 Jun 2025 23:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750228580; x=1750833380; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Cb6XYH15z3AloGyfeWb12Viv/io7mTMvLoDRE/J59s=;
        b=ZMHKTBsXbm3zbrO1EW8TMuYvoPtTkqCk6V8lxUXFCf3rR7fucGo8gZBiZNY/UEcSgY
         d0ujqVr2FtvJu2O5BXcF9jTokU9ty+apL8HTZ1/DH3vzPPsAe4kpU2mHbd7+ARItwwRI
         cFMgJQZth7W252m+eDfY+ENLDxTfPFg7NI1QlGxruVHg7TbLpy44YJBBihd0iGybMg/w
         x8p2XLzhjbzNC/CyRlqj0Zds2enBlzKo1CilpTG0noKwf7U/MiMR0YEO0SpLw5IY2HEG
         vpuzR+7PuSRpuDwFh4SNhjTxqyHN784rxhcD97OSeLI1xq7IVOyFEUsGVpuatZxc7W+9
         VNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750228580; x=1750833380;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Cb6XYH15z3AloGyfeWb12Viv/io7mTMvLoDRE/J59s=;
        b=ZXqEAhNzyKDtWENSScKYD34PnSYLYkPL+ara7R9ynf2SOgPdbphHXJDO2sJdK3UeHS
         JSs8n8XIidy+5EKhXfxpR+Qjnh8GTjB35L7Z8JtyOnqXKornanc/XbddivlLB7P3f/O9
         JWUK7n3N88Cv/C+6cXsN1B6YUZme4pwc5dsUWqMhLw4/ITKugMHUWRkXlPsNT7nHUoLp
         hC182SZuwjkLZPL86sQNQb0hLPz+XH30y3Ps8HE+h4mNfN8yO7N89M9393R8nnAoI2Mv
         103TV28qiqwI1XkuSNX1VuipYiltEgVOiNPpOmGQInlV2lHRxAcbySFtGAgo2CfUTqNg
         w/BA==
X-Gm-Message-State: AOJu0Yys9rfrS3+ZlbY/oZZkdNB5wjr2qbmppAsVQ8xeYMrFSJvyZG0H
	Tdpsi5CaswgQUQcRbD8AUDHWEAXqfUq8ZYMQwhFWoXlKxeL+KWo0JAeiG8Sw0A==
X-Gm-Gg: ASbGncsHCfChQLdjGrjml3R4UZzO9U4bs7BulGDNnaF0IGQDlCxCTmodgnX5l+cjVH6
	1WwuJEuULe377gLlS/R5EisVg144A+Gm2/Vqs7rM7lsMtvufwgEtqzqMIwAjGP2u7UH5pehc6w1
	8DXFwAF87WdbKkNioRMf2xy7i7+QoGYpGL8tpijKHh8wsvpWk2LBYZhRvoMzDD5BLMtogWjD73G
	eRDNLiSJ3m8W80QMShICbG9eyHfmtaG4SlLwTDbUxGmbD053jAUuPGVGpgPxQlqYy0Ay0zR5H6X
	0qyOz7t2zJkULXv5EIp4J2HOVgbJI8IXkq7N8iaMFapQbeyQdvAQgzE0Bf0DZU/YBxiccl/w7Ma
	oyoH12yHD0w==
X-Google-Smtp-Source: AGHT+IEG3Q3vjqUL5rtucrjEKxu0yq9Ykzv7Xql2ypvaiAMMf3srMGHb+00kw8+NXbWlvRHxnn6wWA==
X-Received: by 2002:a05:651c:4ca:b0:32b:533a:f4d6 with SMTP id 38308e7fff4ca-32b533af852mr46722111fa.34.1750228580198;
        Tue, 17 Jun 2025 23:36:20 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b3c7decb8sm19038121fa.49.2025.06.17.23.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 23:36:19 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 18 Jun 2025 09:35:52 +0300
Message-Id: <20250618063552.23777-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250618063552.23777-1-eagle.alexander923@gmail.com>
References: <20250618063552.23777-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_233622_597346_FEDA9DE8 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: xload: use pin_to_mask for peripheral pin configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The patch replaces the use of BIT(*pin) with pin_to_mask(*pin) when
configuring peripheral pins for both SDHCI and QSPI boot modes.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index fd3878269e..0f7d9738e1 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -79,7 +79,7 @@ static void __noreturn sama5d2_sdhci_start_image(u32 r4)
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
 	for (pin = instance->pins; *pin >= 0; pin++) {
 		at91_mux_pio4_set_periph(SAMA5D2_BASE_PIOA,
-					 BIT(*pin), instance->periph);
+					 pin_to_mask(*pin), instance->periph);
 	}
 
 	sama5d2_pmc_enable_periph_clock(instance->id);
@@ -143,7 +143,7 @@ static void __noreturn sama5d2_qspi_start_image(u32 r4)
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
 	for (pin = instance->pins; *pin >= 0; pin++)
 		at91_mux_pio4_set_periph(SAMA5D2_BASE_PIOA,
-					 BIT(*pin), instance->periph);
+					 pin_to_mask(*pin), instance->periph);
 
 	sama5d2_pmc_enable_periph_clock(instance->id);
 
-- 
2.39.1



