Delivery-date: Tue, 16 Sep 2025 06:55:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjQ-003ZIz-3A
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 06:55:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyNjQ-0004kJ-Ce
	for lore@pengutronix.de; Tue, 16 Sep 2025 06:55:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=; b=PcUNwpKPQuM1T6qIUVWN00doqu
	hKqFg2YTeq7q/ro3EW67zh2kZ2bvOmFYaOxRPRu59KufIpaM6OCMZvXbc031AYl84oVFhhkoD9ekO
	DREROaJLEoXKO2AIDWS0JMzAL2ABY7dgbOPHHPT2cKXMOmUaly7zkNi62PvmAgN3i+BP2bIlh6FzE
	LBnHDs9WqR67RjdsYrh4ichon31wvSD7Z3pAMAX8p3gp/ebumK7wUQtYZS0fzh+eTgIh6bUG8P/l/
	YM3lp+kmVz3S1QFgCcAf2t4WBQLWRy6w+gQSUganSBTOL2AssBu9thDw6zYILPXjkDlHNElRRgCI9
	HfDe8uGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNih-00000006kMr-1Rfk;
	Tue, 16 Sep 2025 04:55:11 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyNie-00000006kLy-3ibR
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 04:55:10 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3ea3d3ae48fso1182276f8f.1
        for <barebox@lists.infradead.org>; Mon, 15 Sep 2025 21:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757998507; x=1758603307; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=O1tE5CxK20fN26X1thqqdSIkbd7ztocQ6zZhU9o1IKqEpEV3jiTRXdjva54WW1lB0b
         VY55cyvm+mHaLm1Hn8TI1t13bMxz85z/ZtSfu0q3FXlnCbxClniKE6xb9/2NZCYf32lX
         Cy21xFmIp8eaoJaFjSllrmqr/R9o4nslkpliTU7lEvcfNmdVgRKpuvDTaVcWsZ6sqN9j
         YIAoec29JK1d0o5zUShmPoROk8ReYvqT5M3VcHP40Tlf5Wy6FzFdTFCFJvx9UqFX1kfW
         o7hjvhEqOjo35ltRIofkOXX5oujK4+Az6vDSDvxYwsFKbLgGoHkMvJ0CaS3l5tSuYmUS
         /l6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757998507; x=1758603307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hiGpOwuJ1owhSHf82WdYAJtsixw8nr2GwZ4mn2LD7dk=;
        b=ckDTaJyaAfegU5NSJ4qviFdoOP9YKRd6U7Z8oGei376v6hylmYMyeLph4wBHcw/DGT
         AUg5fUCOUicdG8DZMwDOFkAt1lLoFDbjf6dWWfYfsYVGsQ0QwDRKB7Lhfg99g988qSoM
         MesZ2hi/vI9/AclefQknklItiYlyDPOx/568gATkHCF1FOaY3wrLFb7v/PDwR+xYVc69
         cAzA7Qir7DSGgFZ0XtNNje2rRvih24PS6Ay/IQ9ndl2wOd4V6Pm8Gc9nptagJUaguQ9B
         AZTGXTDbcutfyxTyM29SNNrKnmWglGOaZ3Q01XAjoHEeI9bESGTPVpqPQ3ZlzkL9JROz
         8R6g==
X-Gm-Message-State: AOJu0YzuClaFRePW+JWy/cGrbuefw1jrwVW4kmcouaCmg5cHeKI7uzHV
	2v9oAPvmhN0TBUIZ/IqspdnxSRaUu1Rzl+rE0U9PyhB59WM/K7Km0El5LU9uF44N
X-Gm-Gg: ASbGnctaOmYxGNV7/I4ONdU+HfhC5Os+V12foU6q2sqHf2uCgup+t7kMDk/E7Aa38sU
	2YBMcCc3YHi0Hgjokb9nq08Xsd0FcLvVzHwYFol2pHuLz+jiRwzQ49Q/Ecm/AOEy+uClgSybY2o
	z520MsTrnqiKkmm0xnX/NL2s8iVg+OEkNtM+fADLKX9IyKq7Z2l3SvyP2O0l/EazKqnBLSbWcmm
	ZI6bGlTc1LIwUo5BQvm51MA0XrWn2ErDV4k/vdw89AtsEKXfPzO/i71QjSMmPg9it77kOB/4KUj
	Pbx8+otisLu5E0gXUSfGATst46RG8hQjAkV0VNOCs9SDUS4HJwm8mBTOS/rBWUJWROiBKV0CmDR
	N4f/fZu79JLvPxzRSJUozvGhHXt0Elx/zJrNMCiVPFHytEW71KEk8EcI95+KhCdCJwAHp+VwaGe
	svWlDjxs5h3+RLsNnpslLibw==
X-Google-Smtp-Source: AGHT+IERU6QDbp5AGEjWHewELQbXY+2cgtQf/Emq0G+7Tnrl7u50SJdAxSoMxRwljhNyiapm6iAhZw==
X-Received: by 2002:a05:6000:2203:b0:3e7:428f:d33 with SMTP id ffacd0b85a97d-3ec9e964462mr636562f8f.16.1757998506802;
        Mon, 15 Sep 2025 21:55:06 -0700 (PDT)
Received: from Latitude-7490.ht.home ([178.132.106.74])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd0a7sm20123525f8f.39.2025.09.15.21.55.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 21:55:06 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 16 Sep 2025 00:54:49 -0400
Message-Id: <20250916045500.907542-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_215508_923724_23427FBE 
X-CRM114-Status: UNSURE (   9.21  )
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
Subject: [PATCH v4 01/12] ARM: cpu: allow selecting CPU_V7/CPU_V8 directly
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



