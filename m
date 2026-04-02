Delivery-date: Thu, 02 Apr 2026 16:02:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8Icm-007rV0-1U
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 16:02:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8Icl-0005qW-Td
	for lore@pengutronix.de; Thu, 02 Apr 2026 16:02:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uyURafwIfQyFnE//o28RmPea9vJf1OD98B+iXGXAKp0=; b=WSwoKFRP79l9IB
	Yc7uLAXQDi33AIs6T0oQxjmGeM+mLKdqkxk5jeq1pdlVRmGSa/ZtoKYTLWJs2rIjvjy0Lh1ldn4Iz
	LmSEzcjDkZmuaCx2Ina+2D78Zb0RkvEDlj3XH/LVoT5kfJpl66L7jxLsWZLZ5vf1Tj7Jep0DoJq8K
	ReVPJfBjxEV/6SxKkZPDekA3437DzddSA++g/e4Hlewg8oI7GNSEjnpzuu+xLVePXl8k0lH3FnJGs
	FnBSK8IqfwV7Z1jUPggAkD99dLOZ8pBoGn3rrEgjgMzaBeCGrLhPGd5F9SHvAcYLBtO82MnaGVuKb
	mESUmQDdwA09Bn2wXc8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ic3-00000000EhI-2JIu;
	Thu, 02 Apr 2026 14:01:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ic0-00000000Egp-2yzf
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 14:01:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Iby-0005TX-4F; Thu, 02 Apr 2026 16:01:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ibx-003Npj-31;
	Thu, 02 Apr 2026 16:01:29 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Ibx-00000004eFB-3RBR;
	Thu, 02 Apr 2026 16:01:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Apr 2026 16:01:29 +0200
Message-ID: <20260402140129.1108000-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_070132_750346_6AF53D3E 
X-CRM114-Status: UNSURE (   9.44  )
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
Cc: Steffen Trumtrar <str@pengutronix.de>
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
Subject: [PATCH] ARM: ARMv5: make PTE_SMALL_AP_UNO_SRO work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On ARMv4/5 we have the SCTLR.S and SCTLR.R bits. We set the former which
is deprecated and has implementation defined behaviour on ARMv5. We
clear the latter which has the effect that AP=0b00 as used in PTE_SMALL_AP_UNO_SRO
means "no access".

Clear SCTLR.S and set SCTLR.R instead. With this AP=0b00 maps to
read-only access as intended.

Do not touch any of these bits for >= ARMv6 as both are reserved there.

Fixes: 5916385fae ("ARM: MMU: map text segment ro and data segments execute never")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/lowlevel_32.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/lowlevel_32.S b/arch/arm/cpu/lowlevel_32.S
index 3b1dea5c67..517cefa7b4 100644
--- a/arch/arm/cpu/lowlevel_32.S
+++ b/arch/arm/cpu/lowlevel_32.S
@@ -59,7 +59,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
 	/* disable MMU stuff and data/unified caches */
 	mrc	p15, 0, r12, c1, c0, 0		/* SCTLR */
 	bic	r12, r12, #(CR_M | CR_C | CR_B)
-	bic	r12, r12, #(CR_S | CR_R | CR_V)
+	bic	r12, r12, #CR_V
 
 #ifndef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
 	/* enable instruction cache */
@@ -70,7 +70,8 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
 	orr	r12, r12, #CR_U
 	bic	r12, r12, #CR_A
 #else
-	orr	r12, r12, #CR_S
+	bic	r12, r12, #CR_S
+	orr	r12, r12, #CR_R
 	orr	r12, r12, #CR_A
 #endif
 
-- 
2.47.3



