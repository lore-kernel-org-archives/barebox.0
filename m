Delivery-date: Tue, 11 Jun 2024 10:29:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGwsP-0049EI-2O
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 10:29:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGwsP-0004I4-1Z
	for lore@pengutronix.de; Tue, 11 Jun 2024 10:29:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=235MquMWmVacQW2ABd5JhydKcclT2UkY8Hq8GjOk6+I=; b=hf8wedDnCKSX+i/KiX1pMLM2s1
	+1N0Hl3WdPESdmr88btlQ1b6pNQctKCmmYF70o+A84MVvveQnKcE20DhNRW6OVjeBMBdXGnYUoNjJ
	iRiaPcrnaW461HIbO7P6jB+7Y6uuefsrXY5JDyL/fTTI6Qrig1P3vTRwAwt/9l5Xj+q6YLc7CSvVk
	IrQZ4khr7C1pUkOhFTSa/WVbAvkgcD5HGU9ZZ2Y4zOm2F/SoKGnRyh1gEuPzsfNxSCNbO8CMpYosi
	GaAQT4oLeDZ0133gG4/xA+i/UGxC8b6lF3qe+RpzIzM+pZpFfXMWTsPcAz0Nj7nx8zN3KqY+Tl5mH
	LNa5k04Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGwrq-0000000872k-3SFI;
	Tue, 11 Jun 2024 08:28:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGwro-0000000872B-2lcn
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 08:28:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGwrn-00049T-A9; Tue, 11 Jun 2024 10:28:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGwrm-001VEr-U3; Tue, 11 Jun 2024 10:28:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGwrm-00CR5S-2j;
	Tue, 11 Jun 2024 10:28:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 10:28:29 +0200
Message-Id: <20240611082829.2964046-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_012832_929226_D18B97A1 
X-CRM114-Status: UNSURE (   6.86  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: stm32mp: remove unused hardcoded MMIO address constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These address are not used and probably won't be soon, because they are
either probed from DT or handled in the secure world.

Given that they are needlessly generic (STM32_ instead of STM32MP1(5)),
let's drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/stm32mp/stm32.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/include/mach/stm32mp/stm32.h b/include/mach/stm32mp/stm32.h
index 5ce93e5eb34b..f698ebfaf4f1 100644
--- a/include/mach/stm32mp/stm32.h
+++ b/include/mach/stm32mp/stm32.h
@@ -9,14 +9,8 @@
 /*
  * Peripheral memory map
  */
-#define STM32_RCC_BASE			0x50000000
-#define STM32_PWR_BASE			0x50001000
 #define STM32_DBGMCU_BASE		0x50081000
 #define STM32_DDRCTL_BASE		0x5A003000
-#define STM32_DDRPHY_BASE		0x5A004000
-#define STM32_BSEC_BASE			0x5C005000
-#define STM32_TZC_BASE			0x5C006000
-#define STM32_ETZPC_BASE		0x5C007000
 #define STM32_TAMP_BASE			0x5C00A000
 
 #define STM32_USART1_BASE		0x5C000000
-- 
2.39.2



