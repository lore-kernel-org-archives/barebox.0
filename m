Delivery-date: Mon, 01 Aug 2022 14:19:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOj-007eKX-PS
	for lore@lore.pengutronix.de; Mon, 01 Aug 2022 14:19:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOh-0008Jq-A0
	for lore@pengutronix.de; Mon, 01 Aug 2022 14:19:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i8Eg5DOxFU9HEU2qkGutKXGN7a0ij1SfvDDMUGxtW6E=; b=eIseEGNvUnTN3RvdJfNszVmOtw
	9FNT/aqTReBzD+e2n53yH+Yxdvl4Gw41ikYinGsgGYd/NDC+rKkEpXV8Ju7/Oaz/X4TP+dOilMyRZ
	1KTuO4f5GSsrndv/mamBdc6KjnLnOtVB0+NvZyj4pX2f53zuGw5QcfwGFR7+QY21QNRy0J1P3wYhm
	9aH5bSU1HDCrjbsHeJKiyPWN3XQH8v1++ovnfYMCxN1vLhto+0dajG6zCLXgnWKg9GjHpOG6Je9hb
	Zbwyh2vLKI7RJwXCl3LulW0eA9NXbna5lhPjqEO010OEUHksjFoWcVhMrGSQhABenlGH+adyQUPGv
	6FSlzJMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUNE-0063pr-Hx; Mon, 01 Aug 2022 12:18:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUCf-005tsi-Ga
	for barebox@lists.infradead.org; Mon, 01 Aug 2022 12:07:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCc-0005zp-By; Mon, 01 Aug 2022 14:07:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCa-0016gL-RE; Mon, 01 Aug 2022 14:07:16 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCZ-00AXma-Oj; Mon, 01 Aug 2022 14:07:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Aug 2022 14:07:02 +0200
Message-Id: <20220801120708.2511165-2-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
References: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_050721_596689_72A5D851 
X-CRM114-Status: UNSURE (   8.70  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 2/8] ARM: socfpga: achilles: remove cargo-cult
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is actually unneccessary and is just here because of copy-pasta
from other lowlevel code.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index e8d1a9cee4..e213feb9f0 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -37,7 +37,6 @@ static noinline void achilles_start(void)
 	int barebox = 0;
 	int bitstream = 0;
 
-	arm_early_mmu_cache_invalidate();
 
 	relocate_to_current_adr();
 	setup_c();
@@ -100,8 +99,6 @@ ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
 
 	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
 
-	arm_early_mmu_cache_invalidate();
-
 	relocate_to_current_adr();
 	setup_c();
 
-- 
2.30.2



