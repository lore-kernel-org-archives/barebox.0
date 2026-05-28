Delivery-date: Thu, 28 May 2026 12:57:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYQH-004iCr-2b
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 12:57:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSYQG-00025L-Do
	for lore@pengutronix.de; Thu, 28 May 2026 12:57:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VGE9pITeu+TxDuEKyFEt/BxuoINx5UWJo5QIDTGzQi0=; b=06uAQYU/jD6OkocZ+iK25v/39O
	WDUfYEM4BWczDi+NlFa9+tghqEOaaFbNGLprI0IelCvD2p7FMIAARgex39H27RVCW2WSVjjvIaJc4
	rWz3Ye2flJvTsh9Luf79YPNUMeX3OKMus3JbceC9zrZBjCzyN7X9XRYS2OGM76QlhYHL/Yi2s2hj0
	QhVNa3lYVyC7z5dtywADWT9MZRPWIUH8sC3M//xenuydS5jO+8f0/2Z4+cgy6jtRcLA8T+8zUBFLB
	xT+BGOszmW7Kt9pkeEH/AbBawOpiHRFD4KilLA93L0pd8ICwLOv5fmvx5EeIR+LBzQr/LX2u8mweM
	IjOFAT8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYP0-00000005cMp-0aD3;
	Thu, 28 May 2026 10:55:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSYOx-00000005cLE-0H1L
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 10:55:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYOt-0001rN-HB; Thu, 28 May 2026 12:55:43 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYOs-002G6t-2w;
	Thu, 28 May 2026 12:55:43 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSYOt-0000000GMKr-1cP5;
	Thu, 28 May 2026 12:55:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 28 May 2026 12:55:34 +0200
Message-ID: <20260528105541.3899027-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260527121649.3365172-6-a.fatoum@pengutronix.de>
References: <20260527121649.3365172-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_035547_107184_6A54978B 
X-CRM114-Status: UNSURE (   9.02  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH master v2] fixup! ARM64: place PBL malloc area at start of barebox proper malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM64: rockchip: atf: place PBL malloc area within barebox proper malloc area

We should restrict pbl_malloc_init to PBL_MALLOC_SIZE as memsize[0] as a
whole also contains non-malloc area parts like barebox proper location,
the stack and the OP-TEE region if any.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index f9dbc8b20c5a..8e10d6af445d 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -173,7 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
 	unsigned long bl31_ep;
 
 	mmu_early_enable(membase[0], memsize[0]);
-	pbl_malloc_init(membase[0], memsize[0]);
+	pbl_malloc_init(membase[0], PBL_MALLOC_SIZE);
 
 	bl31_ep = load_elf64_image_phdr(&bl31);
 
-- 
2.47.3



