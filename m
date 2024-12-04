Delivery-date: Wed, 04 Dec 2024 10:15:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIlTV-003r4V-2Y
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 10:15:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIlTV-0007dV-Oy
	for lore@pengutronix.de; Wed, 04 Dec 2024 10:15:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hbWlYrgj3IigB/u/RZYIWR12EUqi6cysEorg4yerPw0=; b=Apn6/Pl8epuO5hNLPGQ7PF/271
	qiWLP/t/LC0xzn1XtwTG+im6Gq3beAj5CXI8XsQVs0/qhsnaI/MC1DSUlTm2ayKThxMTIX+dhzTg4
	fx4hcIIhsXGr+P4GfF1a+XMz5QY7ODPJEn6JMhApuZjK0CG0LFo92whHcrDdeSoGKSgLhM1vlkd41
	4ywKwz+5zspP/IdGjpnHxdQ/q1KkOK7M4WEeHbxMrqmIS/UI8TTWhpaFKGjT48g0cow5T6X6YCfVe
	8iHButnnIcERneR47EH+KC2X2Xtvce7GW2TsA5bGWDUdxUvFbMuXWmxk9zhPpMD7F7yEi4FDuFXwp
	xUx3iSNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIlSv-0000000C0Kg-2Lxe;
	Wed, 04 Dec 2024 09:14:37 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIlSt-0000000C0Js-0ljN
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 09:14:36 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-53e0844ee50so3682001e87.0
        for <barebox@lists.infradead.org>; Wed, 04 Dec 2024 01:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733303672; x=1733908472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hbWlYrgj3IigB/u/RZYIWR12EUqi6cysEorg4yerPw0=;
        b=I6wO6LrRHARgCo6ZT1viv/d3aDA48bU0z15R06hlClCa79LdAw5enm7taEDtjgvZ3J
         +HKb9dHnFhQ0hZ19xOZcQOVS/pNvIgrfol56JZMOSgRZzkSS2HjUdSM4WTOQ/p+ee3KE
         iCay3mwjlFuZxPWMn8aNUd7M5GwA+h84xM2bmH3iV67LVwV8A7QMJcTWru71ozeJYGbq
         hbbapsKkyD950U6s0zkFEuqMoFSNxQlyQ0FCdVdgUQcXM7vt/l3LRFLSrIYKMcpS7RLb
         5zl4rTpKYP7a9wwRSr+xult0b99NOVIEGhFfMD5h4C/gJ9UjRZBXki1Htj3cofQ4BMke
         59UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733303672; x=1733908472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hbWlYrgj3IigB/u/RZYIWR12EUqi6cysEorg4yerPw0=;
        b=QuymCMz+tl9KwV6W1ErEVx6nVWuPv9qk9RlrbHYaOU4E1WV6WFtoeNKqNSRdsRzE3c
         Eg6rLY8iFCZh2xl3i0KUqrNCdFUaLTECFveo7iny3wikZ0xgdG+5Aj0x6sqtoOe1mgTr
         5EyQqmTTEtskaEhJrze3Wp+vOM3wfzWfgqrn+GF09mHQo70OX5kyt+81mFr0jvZpPn4F
         diZtg4QCga9qmFZru5EVW7uFCUxsNNoiVsd9iLBHPeUrUQCWR531NrLU18o69O/FREkS
         cFG9CpmdfVFDuUpMFH9PeRlYZirYMgCGTldoelZgvtP2qlggfhWBgVO0+UH4toujLSUa
         bpLg==
X-Gm-Message-State: AOJu0YxosgHGn047EMQiy8ShK+qp91a56GfbyEzZylD5vi9LpmJxvX2W
	kIGzWA6PiBBzcO8cZV1yOSxhsJ23Wut/fDoASvTM18GUkHGK8iA6F92tkA==
X-Gm-Gg: ASbGnctXwDb4H3iYwm/B/P4h9V7vGZY7soYSZ8YBx2u5vKX/L3fdah0eTW2cqCucJPw
	wOmkqeYoR7mIvi+3TRBg5KBTBD4jkBRXnPhhO3+9XlvitwtELFvVL3hB6r75UuXcnxoEzjujYY9
	kfy9sdm+8cjBZbbCmLQeANnsNArvFrzIN0TpcS5iITbdabxQUJ15/jweNF1zNlIi+iCN1Pa66Uo
	Mu/FSghLlnkkQ3kVqALCK5WDU9DnlT/6+Zjs+qM1MRFmWz2Wvwrd8+J8Rbhw1oDk72BrhChQv8=
X-Google-Smtp-Source: AGHT+IGJg4fHHKvU3cYxTGKej/Bdqvyx/l5ujf6cnVUDB1ZergsR23RptBDBckMi/5Imyzk4+OfTxg==
X-Received: by 2002:a05:6512:3f10:b0:53d:e732:158f with SMTP id 2adb3069b0e04-53e12a058ffmr2453431e87.33.1733303672149;
        Wed, 04 Dec 2024 01:14:32 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a09d5sm2145452e87.278.2024.12.04.01.14.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 01:14:30 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  4 Dec 2024 12:14:18 +0300
Message-Id: <20241204091418.438446-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_011435_216292_DBDE340C 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: Compile aic.c for SAMA5D2 only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

at91_aic_redir() is only used for sama5d2 based SOCs.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index 7d7f27749f..ccbe3c425c 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += setup.o aic.o
+obj-y += setup.o
 lwl-y += at91_pmc_ll.o ddramc_ll.o at91sam9_sdramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
@@ -33,7 +33,7 @@ obj-$(CONFIG_SOC_SAMA5D4)	+= sama5d4.o sama5d4_devices.o
 endif
 lwl-$(CONFIG_SOC_AT91SAM9263)	+= sam9263_ll.o
 lwl-$(CONFIG_SOC_SAMA5D2)	+= sama5d2_ll.o
-obj-$(CONFIG_SOC_SAMA5D2)	+= sama5d2.o
+obj-$(CONFIG_SOC_SAMA5D2)	+= aic.o sama5d2.o
 lwl-$(CONFIG_SOC_SAMA5D3)	+= sama5d3_ll.o
 obj-$(CONFIG_SOC_AT91SAM9G20) += at91sam9260.o at91sam9260_devices.o
 obj-$(CONFIG_SOC_AT91SAM9G45) += at91sam9g45.o at91sam9g45_devices.o
-- 
2.38.2



