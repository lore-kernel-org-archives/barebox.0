Delivery-date: Wed, 22 Nov 2023 19:13:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rig-004gIX-2Q
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:13:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rig-0001FQ-Qm
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:13:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SZmcpRDmwU69QbwKyOmJxWz2GXqIIK2ej7R/4aZ9oA4=; b=PnAb7pGxGF1sxeELuJ5bfIThmV
	1/3Dm8cIp+NPljEMJndpA2jfnZLmFEHCAbrUoBZjfMgd7r0DOYFZcWqoOWTOpKH8ZbAZVdwCqJiZO
	fi8kmScQLDNyHUl5Ied8CTxpXxW8VVa7YN7pRgs7oJQux4cl1n2c2y43uITGpUBE+JvWwClPnEMl7
	fQ7o5EHhLy1d6EElZ1pzyNDJKyEqqbuSOMhbbdzvTD4SEq2spCRPe1xgHKOqD/mWzlfrQKX9uGfUD
	JTzywW20rheivikvwWjz6tw9xPEcLLed2l/X7ugPzSKhQexKF7sBX7YGKYZ0ALOm4BwjsWMxsBHP2
	OHy2p3PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rhA-002loG-1S;
	Wed, 22 Nov 2023 18:11:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rh6-002lly-2v
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:11:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-0000bN-DY; Wed, 22 Nov 2023 19:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-00As14-1A; Wed, 22 Nov 2023 19:11:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-002Wed-2x;
	Wed, 22 Nov 2023 19:11:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:11:13 +0100
Message-Id: <20231122181116.591131-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122181116.591131-1-a.fatoum@pengutronix.de>
References: <20231122181116.591131-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101124_960978_863BC6C4 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/7] ARM: stm32mp: don't re-enable DBGCFGR clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TF-A will already enable the DBGMCU peripheral for us, so let's
skip setting the bit. This is useful, because while the peripheral's
base address stays the same between MP15 and MP13, the clock's offset
within the RCC peripheral doesn't, so by skipping the clock enablement,
we avoid having to differentiate between MP13 and MP15 that early.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/stm32mp/revision.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/mach/stm32mp/revision.h b/include/mach/stm32mp/revision.h
index 63bdcb3a4dbb..47e2651432bc 100644
--- a/include/mach/stm32mp/revision.h
+++ b/include/mach/stm32mp/revision.h
@@ -64,9 +64,6 @@ int stm32mp_package(void);
 #define DBGMCU_IDC_REV_ID_MASK	GENMASK(31, 16)
 #define DBGMCU_IDC_REV_ID_SHIFT	16
 
-#define RCC_DBGCFGR		(STM32_RCC_BASE + 0x080C)
-#define RCC_DBGCFGR_DBGCKEN	BIT(8)
-
 /* BSEC OTP index */
 #define BSEC_OTP_RPN	1
 #define BSEC_OTP_PKG	16
@@ -77,7 +74,6 @@ int stm32mp_package(void);
 
 static inline u32 stm32mp_read_idc(void)
 {
-	setbits_le32(RCC_DBGCFGR, RCC_DBGCFGR_DBGCKEN);
 	return readl(IOMEM(DBGMCU_IDC));
 }
 
-- 
2.39.2



