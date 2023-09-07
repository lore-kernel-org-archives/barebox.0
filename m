Delivery-date: Thu, 07 Sep 2023 10:23:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAIM-006uJb-1J
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:23:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeAIJ-0007mv-B2
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:23:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t4zlKbdEPv5f9ifIFyTEkiZV6Qbh7FeJhxtuocpuk30=; b=COEBWd8jQkvv1yf+CmPLhLfD0U
	1JPcvQY1aF5CX6ZC+a5b2II4Qj0jVAJLgYUaCf3V0XJwCAPCb8nG1hWB2pa3lmT7+fpvhS3438pDm
	f6rU3tYHjhp6bh7Jjy9kpBuMqZmaTeXaw8w1z76MoiFeQh9wwKYFSznKwBKgYOlxVDgK5I3hS+6vZ
	Cnb0OVDtgTvW0c6yzTWpGtzdiFnCPGBzSvFTlyZzRy2PMlS+vhrDPTbRFQLaVSpqqyVcwO6OOJpCy
	X8zmP/Q8rjWHypooBTS6ZCpA0NwPxbis1qQf91l3PuJoSlrktI/+R/r2HnQgXnt4loF7UEXYJvzEm
	PDNEg7kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAH0-00Ba04-09;
	Thu, 07 Sep 2023 08:21:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeAGx-00BZzA-0R
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:21:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGt-0007F2-6d; Thu, 07 Sep 2023 10:21:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGs-004buS-Ql; Thu, 07 Sep 2023 10:21:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qeAGr-009zno-1t;
	Thu, 07 Sep 2023 10:21:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  7 Sep 2023 10:21:25 +0200
Message-Id: <20230907082126.2326381-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907082126.2326381-1-a.fatoum@pengutronix.de>
References: <20230907082126.2326381-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_012155_170763_617ADAB7 
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: mmu64: mark barebox text section executable during early init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox on ARM64 is usually relocated to DRAM by the time mmu_early_enable()
is called, but in the future we may want to enable the MMU earlier and thus
we need to ensure that the location barebox is currently running from is not
marked eXecute Never, even if it's outside the initially known RAM bank.

This is the first part of fixing barebox hanging on i.MX8M when located
at an address greater than 4G.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 63e70963224a..3124f8f3a987 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -289,6 +289,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
 	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
 	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
 
 	mmu_enable();
 }
-- 
2.39.2



