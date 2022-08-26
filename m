Delivery-date: Fri, 26 Aug 2022 08:52:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCN-00AkdN-KQ
	for lore@lore.pengutronix.de; Fri, 26 Aug 2022 08:52:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oRTCL-0002Ew-2l
	for lore@pengutronix.de; Fri, 26 Aug 2022 08:52:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ff/HCF7uwkjKD3Fix9KYQkeTJuUKPifPKcscxwVl8Js=; b=TR3dd3qpHvwznKB1bwpOiP1gpW
	dFlihv8RBTjp+1RD6JpbR2RLh/JvjvnCuQfLQhRZfJWzeNMEu/f/hEI+zmwEtI03Bc3kTETqz8Xku
	TvtdiUUFvctbSaSJ4om9+Kp/r2s0P4GQl0688OU6Kxqwtz+JBFHinUjqmDISDjp3Uqs7YK/DeEQG9
	PIeq9XRWr3R3tpbVAskjD/kxBB6c7eOn8SuGPG9w1wd/C52GhEJBIeGXRD9/fYExYQeErmN02Oh/I
	EpbTVipf+dUId/y37xJkvSIxqiIxmVo5Q0eHvD3mZWZrjUuGtm0lXS0duRnDMo/znx9QjeiEfNO92
	ZMkqjRHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAf-00Euun-NR; Fri, 26 Aug 2022 06:50:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRTAa-00Eurb-Kx
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 06:50:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0] helo=pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1oRTAU-0001i3-IO
	for barebox@lists.infradead.org; Fri, 26 Aug 2022 08:50:14 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 26 Aug 2022 08:49:53 +0200
Message-Id: <20220826064956.507125-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_235020_701797_DC0D1A66 
X-CRM114-Status: UNSURE (   8.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] ARM: socfpga: achilles: fix entry_function usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since commit 3e62b38ff641f263df2f6c9e3ebda3c7c62f310b
we use ENTRY_FUNCTION_WITHSTACK in the bringup barebox.
The patch should have removed the arm_setup_stack line
as it is already done in the ENTRY_FUNCTION_WITHSTACK macro.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index ec8c126c2a..f5efb961a1 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -94,8 +94,6 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r
 
 	arm_cpu_lowlevel_init();
 
-	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
-
 	relocate_to_current_adr();
 	setup_c();
 
-- 
2.33.0



