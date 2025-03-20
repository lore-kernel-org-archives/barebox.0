Delivery-date: Thu, 20 Mar 2025 10:15:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzb-001pZM-1h
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:15:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBza-0007pM-9F
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:15:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n8j/sYr7JrGmBvx5F70ImbJQVZLmCHzd1AvgzuXiHxI=; b=DO8PzKrzrS3HCpIIpUH7D8VgNf
	tuDwxG2jMClF+TxK25fMdU16nvzu0b6ROIYWZ12GscYulquxv31U6j+ZwhYQOzi7GtlO42vFJl1Ur
	QoVO575LO/1hKRwdsIDcT5FMd9c8sfxkMISE35BdpB0eo4j9Fh9rf79kYLiH6xsefGOCW/2CKiTmm
	+mkllO4b/wqQbFVsy80LG4hjE3zutQCqaP7R2/rp7UfNkH9m7KUByQZZjaysLvtoHuLeRSwx3Rxk8
	SPunyVgABhoOIyuBWZEEJvsAeDN7b8Yje98ETNOhPvJC/opi0PXNtUUGNDpPSJEr0ghdWsmkbpc//
	EYfUnryw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz5-0000000Ber4-0fO1;
	Thu, 20 Mar 2025 09:14:39 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz2-0000000Bep2-14JF
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:14:37 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-30bfc79ad97so17064811fa.1
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462074; x=1743066874; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8j/sYr7JrGmBvx5F70ImbJQVZLmCHzd1AvgzuXiHxI=;
        b=Aw0/CNb07KZ8cP1oDR8rpqXSqGgP84cE4ptOs0pWE8nlGJO4yUlhrKSbbSrowmhMDI
         vzXFxyRAvdc/1FI22pkoFZFrl2ljNY0oLK5DQyLkP+UbIrxVj8e5w2EI59JHtdsAwL8L
         EeNvNTFQZeoiK756Bp68tzuwecLdmAZ0dJL40gMQ0ks/PGtIz+l1Lx44oHvaQg98tomR
         WUHS3VDcxqLGQAPIzeMU6RJnmXyUDqpHxl5tCA4KM/jTX8V5QjlZOoRLWBnj5JvPd0zj
         6M7c7lstZbQqGOEJkzEueDatuIoLBN6Vyg9kXTmUuD+2cXHaR+lnflkMmKVSIDcXXkdc
         ezRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462074; x=1743066874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8j/sYr7JrGmBvx5F70ImbJQVZLmCHzd1AvgzuXiHxI=;
        b=l4YsU6yt0T1Q6NtIKyZ0ged8WOD+snMDLjA6HXsCv7PsGcTy6XJqyCKUtdufOJl7w7
         b+GtVTx9bN2EvYkiYIv2zCndU3nVq8qMtwkxbeTYikdrDP2HL8ORYVrtdTVPjBu7hdwQ
         16KcbAAczdUJLzVcabffWTQqBTpPo74R/hCCxSJkbzX6FF5heb6xoQl0o9cTOe7snQ3S
         wKfq6EsyRRSM5nEQChYWGQbal2wmRHLaQoiApuTjCgtbeZa0Y9fN3a7MAcqQF/DlTege
         gE8DwiGkkkAuM7LMX38Q60wnn2W4tWgr+XYKapdesM7JPQIbunJGTnfk/3OaYkL0ZqNv
         CA3Q==
X-Gm-Message-State: AOJu0YwG0bgz9UvpIid6cJDoNvtALBzHzp+46l+dqSr/VxSkpL0prbzT
	bSSWIuWyMpr0xJw8VZmF47qiDN54+77Xuiq8irn59LufxKeQYCpnRDi/rA==
X-Gm-Gg: ASbGncvmVWgXMVa3zw2W/zjgZm+KR9Yxugu0BN7oTtqxAHQpLXlQQpohBwis1taMuIN
	G6dXR29DkU2EnWgxX/BDxRGo5nIgpkBtgpZpmmESBEyV4zd0WFuJaUtO6he8ynQ6IxkFjBZqlSo
	tD4ik4XmU+ZOm4RqTDLIxrL4gtGA7tAclx8u1HxOcxxHgXnGw8IixokMZM7X+XBql3Pl5kLISB6
	Dk18wRGHo5xmpoOdoHSRCgcqm4lAAEh2D2eEmQXEydQ8Rtf/p06mB/R+Q3B9qo0hp4V5xUsS5nL
	YnzHKVv7O75AkWSCI81GSexix8mIXwJZE/XoqQnoNjMNVkYOtlZC4JMojF7xJ+ENHeo=
X-Google-Smtp-Source: AGHT+IGC9gTmdqtLFk/BXqSaglOTrinyEPGo4eT2H6zFCZLtS5AiKWwFN9/u+uK38lt3i29srSNY8A==
X-Received: by 2002:a2e:6a03:0:b0:30b:ee0c:8475 with SMTP id 38308e7fff4ca-30d727b3e7cmr7236251fa.15.1742462073791;
        Thu, 20 Mar 2025 02:14:33 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0d1bb2sm25999691fa.4.2025.03.20.02.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:14:32 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Mar 2025 12:14:16 +0300
Message-Id: <20250320091419.42095-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250320091419.42095-1-eagle.alexander923@gmail.com>
References: <20250320091419.42095-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_021436_299034_5CC72288 
X-CRM114-Status: GOOD (  10.85  )
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
Subject: [PATCH 4/7] ARM: at91: xload: Use the variable name as described in include/mach/at91/xload.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 4fec02afe1..94be353c9e 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -111,7 +111,7 @@ static const struct xload_instance sama5d3_mci_instances[] = {
 	},
 };
 
-void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
+void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
 					  unsigned int slot)
 {
 	void *buf = (void *)SAMA5_DDRCS;
@@ -120,11 +120,11 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 	const s8 *pin;
 	int ret;
 
-	ret = sama5_bootsource_instance(boot_src);
+	ret = sama5_bootsource_instance(r4);
 	if (ret > ARRAY_SIZE(sama5d3_mci_instances) - 1)
 		panic("Couldn't determine boot MCI instance\n");
 
-	instance = &sama5d3_mci_instances[boot_src];
+	instance = &sama5d3_mci_instances[r4];
 
 	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOD);
 	for (pin = instance->pins; *pin >= 0; pin++) {
@@ -138,7 +138,7 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 	if (ret)
 		goto out_panic;
 
-	at91_fat_start_image(&bio, buf, boot_src);
+	at91_fat_start_image(&bio, buf, r4);
 
 out_panic:
 	panic("FAT chainloading failed\n");
-- 
2.39.1



