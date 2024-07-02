Delivery-date: Tue, 02 Jul 2024 07:01:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOVdt-000jlD-1E
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 07:01:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOVds-0005zZ-Q8
	for lore@pengutronix.de; Tue, 02 Jul 2024 07:01:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JrC3ufsKc3TM+DouIjHypC219r0VSpXX9m8KBfpbMaQ=; b=rSAP/dvDyDEIt7MfSGoVgk6tCt
	mnfEF6KujhCdKbMCiL7MPr1DY5TA3JrVwYPcQ3Vre4RkAre89oIgz7oqkZSAcuPg2SP7WszYGBS+o
	QRLqMCHbCfh0ZeUC86sS9olF0mou3UYg2ty1UzoVEtV+wuUI/Gq5EHtFSqqs1FEnSahmZ5gKs0DH/
	JzddSkVN818JnSfulQsx0K9QcVFYNLbje7bfmj9u3mSUcCBlENQJuH2LZP4dAbI9yIIyj7u6fhRFt
	EUu5w/T9h7HFXAFpFkG08yIXOtImceJjuWQiqxgrq4A7dJXLoaYK9Lv8hS7dOU1woJlnIzpVY/xEU
	gtvBPJiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOVdC-00000005Xup-2kf3;
	Tue, 02 Jul 2024 05:00:42 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOVd9-00000005Xu2-46Tu
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 05:00:41 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-52cdb0d816bso3716854e87.1
        for <barebox@lists.infradead.org>; Mon, 01 Jul 2024 22:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719896437; x=1720501237; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JrC3ufsKc3TM+DouIjHypC219r0VSpXX9m8KBfpbMaQ=;
        b=A4B5Dgfoo3zKWTT9h493j7ZV7rNNNQYrP577bFy4AHLAnH2VEDxvfrdUYgKOgG4ijF
         QTxd8qt/07XhVfoGSy0JKlmB/PbOM40zm/jsLYDuODlkZNcxkFKjBCMGft9EvdDMVR9P
         xyH4M4RzsAhk3mhQ55Gp55LqGkZKgyNjwYS6VfR+OeuQIZ0uzCkVcxKQcBpBPeDKWdFk
         0Fz4sYKNP9k72k46MI7zIxtqIHc3xGn3In6JTL9ckoBl+yrqp1oROPSKLxNV8gWQJ9MT
         iR8KuDhS+hLoIUOpWbWFlWhIJ8i3Gm8t5wTHzfoArqRx7EYi261QfJjIPl1aVD6dUXfp
         l2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719896437; x=1720501237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JrC3ufsKc3TM+DouIjHypC219r0VSpXX9m8KBfpbMaQ=;
        b=sgZaY304cNzov47x3kPmtQ95WZLEBs73zArA0Ibb8vHsAblLUZqxBjEvt/ksQMk7Ue
         KcBnRp8p+kvQ0oHk/F+mtGacwQV2UEgyD/fbZduDrHrjPchbHj1AlQWik+CjiQH933/j
         c/Mes0KCksy/abI4URqKwQHshH1eir9meUCM1SQJONx3MovozBDHCSy8FvWKg09FQ8KH
         g9oSuLFQaxg0Bi2YDcEAUIkoOylPcQw/GYZBzjITZNCgfC33Mu2h8XjQxFPtNEwXMkbz
         /rknz/aRGD2BSg4p0NdPplKpc892QBvwte788BnpUWfQ9g0mAfXqjr+c0DOnQ5DxYxPb
         ep+g==
X-Gm-Message-State: AOJu0YyUISj0ITlaYDZ+djhUF7cuvLiKRks/CC9M+TB0U3vdjX43y9VJ
	8fBT1t4isFwRUJCAN5ltVnB0yplc/zgLhz7NOf2W4bKmxEXTEP13IlYUNjQI
X-Google-Smtp-Source: AGHT+IE/VOLAGWKTxE3pLFt52s//18TyeqSDCWUngxPeEE0r1GDl4RyB2zLvXO5evbVSZoMSgAxH2w==
X-Received: by 2002:a05:6512:1250:b0:52c:910b:9c7d with SMTP id 2adb3069b0e04-52e825cb69emr2669111e87.21.1719896436541;
        Mon, 01 Jul 2024 22:00:36 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7f0f14e8sm1365899e87.130.2024.07.01.22.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 22:00:35 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  2 Jul 2024 08:00:25 +0300
Message-Id: <20240702050025.2059-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_220040_034046_C83D6C2C 
X-CRM114-Status: GOOD (  10.03  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: cpuinfo: Add Cortex-A55 information
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Additionally, the indentation of spaces has been replaced by tabs.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/cpu/cpuinfo.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 2d3fe2ac8d..ce5f010975 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -21,14 +21,15 @@
 #define CPU_ARCH_ARMv7		9
 #define CPU_ARCH_ARMv8		10
 
-#define ARM_CPU_PART_CORTEX_A5      0xC050
-#define ARM_CPU_PART_CORTEX_A7      0xC070
-#define ARM_CPU_PART_CORTEX_A8      0xC080
-#define ARM_CPU_PART_CORTEX_A9      0xC090
-#define ARM_CPU_PART_CORTEX_A15     0xC0F0
-#define ARM_CPU_PART_CORTEX_A53	    0xD030
-#define ARM_CPU_PART_CORTEX_A57	    0xD070
-#define ARM_CPU_PART_CORTEX_A72	    0xD080
+#define ARM_CPU_PART_CORTEX_A5	0xC050
+#define ARM_CPU_PART_CORTEX_A7	0xC070
+#define ARM_CPU_PART_CORTEX_A8	0xC080
+#define ARM_CPU_PART_CORTEX_A9	0xC090
+#define ARM_CPU_PART_CORTEX_A15	0xC0F0
+#define ARM_CPU_PART_CORTEX_A53	0xD030
+#define ARM_CPU_PART_CORTEX_A55	0xD050
+#define ARM_CPU_PART_CORTEX_A57	0xD070
+#define ARM_CPU_PART_CORTEX_A72	0xD080
 
 static void decode_cache(unsigned long size)
 {
@@ -229,6 +230,9 @@ static int do_cpuinfo(int argc, char *argv[])
 		case ARM_CPU_PART_CORTEX_A53:
 			part = "Cortex-A53";
 			break;
+		case ARM_CPU_PART_CORTEX_A55:
+			part = "Cortex-A55";
+			break;
 		case ARM_CPU_PART_CORTEX_A57:
 			part = "Cortex-A57";
 			break;
-- 
2.39.1



