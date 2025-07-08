Delivery-date: Tue, 08 Jul 2025 11:05:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZ4Gb-00FJT6-1s
	for lore@lore.pengutronix.de;
	Tue, 08 Jul 2025 11:05:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZ4GZ-00037w-Ed
	for lore@pengutronix.de; Tue, 08 Jul 2025 11:05:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2kMO3Y44DWFxIcRpYMIxuzsKVeWDb7+QEzihXOrC1rc=; b=S8hNuPW+IB+u3q1EVhL0bFx9Ep
	1y4QO7xEWzkggrAD7w4pF4UokeAyH+qDJs+/7NOBK2FzSh1qRZyJX+2E/7A331EjSBT6vqCsPsbd5
	rhFt77ptCRZfYzaGctgkSEqZoWq8iFTfobKlhthFHL4kYJMlagl5zs4fVKUES3JQUROd5T8RNBy80
	fw6P8ZGgKX0CZtLrkVCWr/aNnEIiaw4ggM9SCXAS1bUtMme0ROFsG2aPmhBj0RW5XTcHZsSJ9P/Q6
	pEQaocT0hNPLKb7ICixx5IPeotSVuuGynfiqYYDAngk02Rm8wreC9PVaDcGTSq2lZ/Dt34PNo3mcG
	OVRtpg9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ4Fl-00000004qOa-0QvS;
	Tue, 08 Jul 2025 09:04:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ3sa-00000004mCY-0XSw
	for barebox@lists.infradead.org;
	Tue, 08 Jul 2025 08:40:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZ3sY-0002u1-0v; Tue, 08 Jul 2025 10:40:42 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZ3sX-007O0l-2j;
	Tue, 08 Jul 2025 10:40:41 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZ3sX-009HEl-0l;
	Tue, 08 Jul 2025 10:40:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  8 Jul 2025 10:40:41 +0200
Message-Id: <20250708084041.2211199-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_014044_164765_532A1F2E 
X-CRM114-Status: GOOD (  10.47  )
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
Subject: [PATCH] fixup! ARM: MMU64: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM: mmu64: fix flag confusion during early_remap_range

early_remap_range takes a generic map type parameter like MAP_UNCACHED
or ARCH_MAP_CACHED_RWX, while get_pte_attrs returns the actual bitmask
that should go into the page table entry.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index abcc970f4bff..b133e97fb0d4 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -497,12 +497,12 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 		barebox_size = optee_membase - barebox_start;
 
 		early_remap_range(optee_membase - barebox_size, barebox_size,
-			     get_pte_attrs(ARCH_MAP_CACHED_RWX), true);
+			     ARCH_MAP_CACHED_RWX, true);
 	} else {
 		barebox_size = membase + memsize - barebox_start;
 
 		early_remap_range(membase + memsize - barebox_size, barebox_size,
-			     get_pte_attrs(ARCH_MAP_CACHED_RWX), true);
+			     ARCH_MAP_CACHED_RWX, true);
 	}
 
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
-- 
2.39.5



