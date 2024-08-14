Delivery-date: Wed, 14 Aug 2024 11:39:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAT7-009UdM-0p
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:39:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAT6-0000vW-KM
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:39:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KuK1xYRalFElKVL1/d3jtXvigwES47s0otV2Q/gTwaE=; b=5G3O5UNgsSyDsPku+3GhU7bX1r
	Z0Lt0FcZKqZZMeWC/aoG3Tu9rGFTOyjnxGHKhR79K7oecYz7nSg/PjXaWLmTlphOz33e4cxiAoIL8
	p0HI5fUXEAbTjwgbvn1mfEJl7xHVrRNuLGnB/HZZOi/2t9RXwRHrU6yQVVv7YXznzRKVtDqVreEbn
	6LtFuHOPON+If42ojKXMXvo9iD//H9N7C5hhoZAdN/1N7Uff5ziNB1zfCuYyRPYkA7vzehD/BcsBX
	PLpRhk4/hLL/0gePr6LBInmm23PNv4ZntXlWJEH6PAlWQDVEFAtcL5x9Rly6nXzCT1kwPgR0FuR14
	j36xoVNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seASd-00000006QXC-3gPS;
	Wed, 14 Aug 2024 09:38:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seASa-00000006QWb-2Kvd
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:38:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seASX-0000rm-L8; Wed, 14 Aug 2024 11:38:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seASX-000KVm-7p; Wed, 14 Aug 2024 11:38:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seASX-000IfF-0U;
	Wed, 14 Aug 2024 11:38:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:38:24 +0200
Message-Id: <20240814093824.71656-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_023828_615112_84B63A72 
X-CRM114-Status: UNSURE (   9.07  )
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
Subject: [PATCH] ARM: i.MX: drop explicit reservation of scratch area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The scratch area is just some unused space between top of stack and end
of early memory / start of OP-TEE. There's nothing i.MX specific about
it, except that we use it to store the bootrom log.

The initcall reserving the scratch area was added to avoid barebox
proper overwriting it later on during boot.

Since commit 59289e3d8cc3 ("memory: add support for requesting barebox
area as a whole"), the scratch area is reserved as part of the barebox
memory region, so it's unnecessary to keep around SoC-specific code
for its reservation, so let's just drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Alternative to https://lore.barebox.org/barebox/22b84d30-0f41-4592-ad89-1a8c8b6c5308@pengutronix.de/T/#u
The SoC initcall change there is wrong and I will tackle that later.
---
 arch/arm/mach-imx/scratch.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index b7280ff60952..e4e2d25969f0 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -92,11 +92,3 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
 
 	return &scratch->optee_hdr;
 }
-
-static int imx8m_reserve_scratch_area(void)
-{
-	return request_barebox_region("scratch area",
-				      (ulong)arm_mem_scratch_get(),
-				      sizeof(struct imx_scratch_space)) ? 0 : -EINVAL;
-}
-device_initcall(imx8m_reserve_scratch_area);
-- 
2.39.2



