Delivery-date: Thu, 04 May 2023 07:35:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puRcL-004Bve-Di
	for lore@lore.pengutronix.de; Thu, 04 May 2023 07:35:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puRcJ-0003o2-Cv
	for lore@pengutronix.de; Thu, 04 May 2023 07:34:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zkGk50Ki9qQ0ulw/pA4VEoXdzFG4Slsb8w/NXz91ldY=; b=CemtZdRv/Ok4cZOio4ebu/h6Kn
	pZOZjOkuKFzcQmUmFQw9JrrcqLGSP4UX0QQCk0Cp+p6jR6DVAbRd14uK5+MObxHxhJchvCzhDSzSz
	GBq9TtkTPYd2eovY+PrcnM0cjboH+uvCB+I4zqNIkc2QbF8Let+qrOEXwkVyRx6E7LvOORNnTCn1v
	knSWIOwUFQTXx8VDEuiNg8Pua/mYm4aI3fM61tfG+wUAcxyP9/Qgb3TIZzxEaeQIGGefL3ROBlEKI
	uznboFcyYKx6xybappsL5Te/N/ALBCFn24mlFtMmZ2uiHCHFl5LVvjVK+ajJmQdogpv8U2wFuHFEc
	FDABXCXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puRam-006eSq-2o;
	Thu, 04 May 2023 05:33:24 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puRaj-006eSE-18
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 05:33:22 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ac70c975fcso628281fa.3
        for <barebox@lists.infradead.org>; Wed, 03 May 2023 22:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683178397; x=1685770397;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zkGk50Ki9qQ0ulw/pA4VEoXdzFG4Slsb8w/NXz91ldY=;
        b=pRQDLU8Mxf6L9AbQIUFzXb9j1Ky+3PEX/Htkur+E7NkaZE6WWmCMIJQeHoD8eOtCNc
         B8gjpVHJEGRPKY246QzfdqsOpN8Ph7E8tSpkEKSF+TgVTckNZPqA07sdGgvoZmrIJt1r
         q41Aqv2tMCVowALDA+es3r5TVuJbPa9zd+Jg1yR70iGnlx8lbyZcVBVTTzTB4TVqeq7j
         A1dlx42rwcy93SybrJtuKfcw6MsC/cQ2O87Ofzvc4aM7nMgMRxJ1BFvOuz28YavpIzhU
         E/JNEkcfzY9Wl89fWK7P+uf23pJzv38ugyWrVcALJwZ7pgyVNGAS56dsY6V+9/DgTo8j
         MoDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683178397; x=1685770397;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zkGk50Ki9qQ0ulw/pA4VEoXdzFG4Slsb8w/NXz91ldY=;
        b=j39g99Rxw6NqMtldjNoy//WSlu/myJo1/xpI41W/uXmFjwPwYPsHcHZpefYasRpq4O
         ryolmLvrIte5da/vq4t1OJGr/tUBh2REymtlvNIMJ9cIR/U/3FN3BwVXQNbm+oU9WG5L
         eQxEIIV9OUAcUX+eBsktbfR2izPuIho7ncOXuqey1Prf9DZ38vBaFfIu1Nxy4Pbl70YN
         dppygYhxOLawXIsvCAPlkgVNVsW2DGrisbJogARe+hFplcDjlUaAdVMf2El8+aO4Z3Dt
         LtMQR5BOzGjJq6m8w20UgwGybVliJdNRyXb2LvR4LHlpeUPDNJiFvYNhgQUPy0xfb36M
         ckhA==
X-Gm-Message-State: AC+VfDwCqStIdyI6cHHNkZgoNVJ13G9YADKSv8as0EcK7JahdV/PVTKS
	/czBxGcPWbAgjcOTlqtg4QcsncgOFCI=
X-Google-Smtp-Source: ACHHUZ5AITGYkhGykr1zQEsNU0cVCcQXt/sbVAtf3h/L3K66sU4+sEgDbFAMMYJfsiE6aybar1/ZxQ==
X-Received: by 2002:a2e:2e19:0:b0:2a8:ba15:eb6f with SMTP id u25-20020a2e2e19000000b002a8ba15eb6fmr597140lju.6.1683178396907;
        Wed, 03 May 2023 22:33:16 -0700 (PDT)
Received: from localhost.localdomain ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e86d5000000b002a77792f2c5sm6241528ljj.62.2023.05.03.22.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 22:33:16 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  4 May 2023 08:33:00 +0300
Message-Id: <20230504053300.4516-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_223321_395823_CD7066B7 
X-CRM114-Status: GOOD (  11.82  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: clps711x: Remove unused file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The file devices.h is no longer in use and was mistakenly left in the tree.
Let's delete it.

Fixes: c7d771e1ab9b ("ARM: clps711x: Switch to devicetree usage")
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-clps711x/devices.c | 127 -------------------------------
 1 file changed, 127 deletions(-)
 delete mode 100644 arch/arm/mach-clps711x/devices.c

diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
deleted file mode 100644
index a1a261412b..0000000000
--- a/arch/arm/mach-clps711x/devices.c
+++ /dev/null
@@ -1,127 +0,0 @@
-/*
- * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation; either version 2 of
- * the License, or (at your option) any later version.
- */
-
-#include <common.h>
-#include <init.h>
-#include <linux/sizes.h>
-
-#include <asm/io.h>
-#include <asm/memory.h>
-
-#include <mach/clps711x/clps711x.h>
-#include <mach/clps711x/devices.h>
-
-static int clps711x_mem_init(void)
-{
-	ulong memsize = get_ram_size((ulong *)SDRAM0_BASE, SZ_64M);
-
-	arm_add_mem_device("ram0", SDRAM0_BASE, memsize);
-
-	return 0;
-}
-mem_initcall(clps711x_mem_init);
-
-inline static void _clps711x_setup_memcfg(int bank, u32 addr, u32 val)
-{
-	u32 tmp = readl(addr);
-
-	tmp &= ~(0xff << (bank * 8));
-	tmp |= val << (bank * 8);
-
-	writel(tmp, addr);
-}
-
-void clps711x_setup_memcfg(int bank, u32 val)
-{
-	switch (bank) {
-	case 0 ... 3:
-		_clps711x_setup_memcfg(bank, MEMCFG1, val);
-		break;
-	case 4 ... 5:
-		_clps711x_setup_memcfg(bank - 4, MEMCFG2, val);
-		break;
-	}
-}
-
-static struct resource uart0_resources[] = {
-	DEFINE_RES_MEM(UARTDR1, SZ_128),
-};
-
-static struct resource uart1_resources[] = {
-	DEFINE_RES_MEM(UARTDR2, SZ_128),
-};
-
-void clps711x_add_uart(unsigned int id)
-{
-	switch (id) {
-	case 0:
-		add_generic_device_res("clps711x-uart", 0, uart0_resources,
-				       ARRAY_SIZE(uart0_resources), NULL);
-		break;
-	case 1:
-		add_generic_device_res("clps711x-uart", 1, uart1_resources,
-				       ARRAY_SIZE(uart1_resources), NULL);
-		break;
-	}
-}
-
-static struct resource gpio0_resources[] = {
-	DEFINE_RES_MEM(PADR, SZ_1),
-	DEFINE_RES_MEM(PADDR, SZ_1),
-};
-
-static struct resource gpio1_resources[] = {
-	DEFINE_RES_MEM(PBDR, SZ_1),
-	DEFINE_RES_MEM(PBDDR, SZ_1),
-};
-
-static struct resource gpio2_resources[] = {
-	DEFINE_RES_MEM(PCDR, SZ_1),
-	DEFINE_RES_MEM(PCDDR, SZ_1),
-};
-
-static struct resource gpio3_resources[] = {
-	DEFINE_RES_MEM(PDDR, SZ_1),
-	DEFINE_RES_MEM(PDDDR, SZ_1),
-};
-
-static struct resource gpio4_resources[] = {
-	DEFINE_RES_MEM(PEDR, SZ_1),
-	DEFINE_RES_MEM(PEDDR, SZ_1),
-};
-
-static __init int clps711x_gpio_init(void)
-{
-	add_generic_device_res("clps711x-gpio", 0, gpio0_resources,
-			       ARRAY_SIZE(gpio0_resources), NULL);
-	add_generic_device_res("clps711x-gpio", 1, gpio1_resources,
-			       ARRAY_SIZE(gpio1_resources), NULL);
-	add_generic_device_res("clps711x-gpio", 2, gpio2_resources,
-			       ARRAY_SIZE(gpio2_resources), NULL);
-	add_generic_device_res("clps711x-gpio", 3, gpio3_resources,
-			       ARRAY_SIZE(gpio3_resources), NULL);
-	add_generic_device_res("clps711x-gpio", 4, gpio4_resources,
-			       ARRAY_SIZE(gpio4_resources), NULL);
-
-	return 0;
-}
-coredevice_initcall(clps711x_gpio_init);
-
-static __init int clps711x_syscon_init(void)
-{
-	/* SYSCON1, SYSFLG1 */
-	add_generic_device("syscon", 1, NULL, SYSCON1, SZ_128,
-			   IORESOURCE_MEM, NULL);
-	/* SYSCON2, SYSFLG2 */
-	add_generic_device("syscon", 2, NULL, SYSCON2, SZ_128,
-			   IORESOURCE_MEM, NULL);
-
-	return 0;
-}
-postcore_initcall(clps711x_syscon_init);
-- 
2.39.1



