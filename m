Delivery-date: Wed, 06 Nov 2024 20:03:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ5-005dYd-0Y
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 20:03:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8lJ5-0001tY-Lv
	for lore@pengutronix.de; Wed, 06 Nov 2024 20:03:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TaitvrfV05OpR0IMbLqyF64F7eHihgpRFKYIRK3RALQ=; b=NyPytKv+c5wZTrCKbSPt/88PRh
	5aTT2C/o7KpX4BgRc9qxo5Hj6VsD4AJJc95KCPoiRlSKJtjTf8Y6m1YkXUj/jhjSc7RIlo8oUtzVK
	zFjIcQC3Xi7incCsQ90lah3eHhPEzt0InNii85tXqV56ZLBtFrNyDm0VrF6n+ZT6MLnSr0YVKG2rK
	Yl9DbY/8OS7KSAKa7+KkAgb767nsR6Nuk3Z+vXnMAtXxUHLLDtOBJFlUhEiK7iU9ru+oaUryxJLC5
	U+1MY9tECAYUL4ZcaJoXx7SOmXQDG8X6sHBlG/rdyYjmGtrUnCsKZlsmjBxWcLUiCUN0U7j5H0hsv
	TpWds/jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lIZ-00000004R2L-0hPg;
	Wed, 06 Nov 2024 19:02:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8lDc-00000004Pus-1oWk
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 18:57:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDb-0000Vc-4G; Wed, 06 Nov 2024 19:57:27 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-002LMk-30;
	Wed, 06 Nov 2024 19:57:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t8lDa-0005bP-2i;
	Wed, 06 Nov 2024 19:57:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Robin van der Gracht <robin@protonic.nl>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2024 19:57:21 +0100
Message-Id: <20241106185724.2526-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241106185724.2526-1-a.fatoum@pengutronix.de>
References: <20241106185724.2526-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_105728_568621_DC919DB8 
X-CRM114-Status: GOOD (  12.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] ARM: Rockchip: fix clang warning about passing 32-bit register operand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clangd warns that "Value size does not match register size specified by
the constraint and modifier".

Promote the subtraction result to unsigned long to fix this.

The 16 is likely unnecessary, but I am hesitant to remove it without testing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 1e1861191c99..4c16ec3bc66a 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -59,7 +59,7 @@ static unsigned long load_elf64_image_phdr(const void *elf)
 										\
 	/* Setup an initial stack for EL2 */                                    \
 	asm volatile("msr sp_el2, %0" : :                                       \
-			"r" (SOC##_BAREBOX_LOAD_ADDRESS - 16) :                 \
+			"r" ((ulong)SOC##_BAREBOX_LOAD_ADDRESS - 16) :		\
 			"cc");                                                  \
 										\
 	bl31_entry(bl31, optee_load_address,                                    \
-- 
2.39.5



