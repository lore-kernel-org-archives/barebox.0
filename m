Delivery-date: Tue, 01 Jun 2021 10:44:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lo00d-00026g-68
	for lore@lore.pengutronix.de; Tue, 01 Jun 2021 10:44:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lo00c-0005Er-B2
	for lore@pengutronix.de; Tue, 01 Jun 2021 10:44:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FWYafSXMKuFsdrzsLmF0dxaqdjZIUaVCDEcV9hr+y4c=; b=M7z0pNSN86SECG
	xK7KlNsFMZtnDFpJGHYXhmRmuX5OM2xwLSnqAfd8pU/FPAhuXblBmeq+Gkm+j6lULvaetCLuILcpS
	LnNIjb50/wlJGC6dZ4vBo8PYLrKbV+xSyw9x1fQOrEWlabghCiYO6Nxfy6i/HqaL5UqxSaIdgyB2H
	3rgp0NbNIMvQovxdCrR0IBorj/l0bvz01p4xK8J7ji35FfMG/sAxykx/koa1Ek+ObnsUwNRYdxcmT
	X47ebbPTviPmV6B3jOxK+rALKrLLmLEkBZk1tZGobHP3ohQLOKQ8OolgOD0porBW0UMfVa271XzMu
	Nzunnyq+lyw+5kYcldEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnzz2-00FOVp-K1; Tue, 01 Jun 2021 08:42:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnzyy-00FOVA-GN
 for barebox@lists.infradead.org; Tue, 01 Jun 2021 08:42:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lnzyu-00057s-BZ; Tue, 01 Jun 2021 10:42:36 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1lnzyu-00025k-1E; Tue, 01 Jun 2021 10:42:36 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  1 Jun 2021 10:42:33 +0200
Message-Id: <20210601084233.7948-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_014240_561043_9C81B8C4 
X-CRM114-Status: GOOD (  11.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1] ARM: at91: xload-mmc: fix typo in
 sama5d3_atmci_start_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use SAMA5D3_ID_PIOD instead of SAMA5D2_ID_PIOD

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-at91/xload-mmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index 8d4f653d1e..1b641f3a47 100644
--- a/arch/arm/mach-at91/xload-mmc.c
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -116,7 +116,7 @@ void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
 
 	instance = &sama5d3_atmci_instances[boot_src];
 
-	sama5d3_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
+	sama5d3_pmc_enable_periph_clock(SAMA5D3_ID_PIOD);
 	for (pin = instance->pins; *pin >= 0; pin++) {
 		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
 					 pin_to_mask(*pin), instance->periph, 0);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

