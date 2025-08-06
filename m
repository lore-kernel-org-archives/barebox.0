Delivery-date: Wed, 06 Aug 2025 14:39:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQZ-007dZq-0D
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQX-0000zd-Ny
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dQEyvvpUJn7O6Vm21IkVhsc68GfupcmTKG22dWhYAY0=; b=YqvtCfpEA5SxJCHN0RPweu4d8I
	qFTFS2+rA1u7UUCLLw0Tru7RUvgnRRL/u7c0N9rL/MS6S/GXK9w7bHIXNDIBqUT/GaA6okwpofKHU
	zngTn++b8qFNqfkVp6NmbIOZHzYSFaD0Vn0a94+lEMovnJm0zxGYbudVjRwM/VGYFaUePswjn8iZY
	UVnTuHoTB03+p58ygncTEKKE+JkRvWCRSPe/i0LR+O6y0y5ZCNcTZztXN0Ivj3d/DU+OnJSS90V3v
	Ii3Pa6nolZwm+YM6DJgU3gtUwCHUQXhhPHCgRe85KFQyUabH5D7gRMWi5oEuJvl416J/e1SGGo2qv
	gFLasoWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ2-0000000FAJK-2v57;
	Wed, 06 Aug 2025 12:38:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOO-0000000FA5G-2Men
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000MR-Bl
	for barebox@lists.infradead.org; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD8m-0Z
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-0G
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  6 Aug 2025 14:36:52 +0200
Message-Id: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053716_607443_5388A878 
X-CRM114-Status: UNSURE (   8.87  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/22] ARM: mmu: refactor 32-bit and 64-bit code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is duplication and subtle differences between the 32-bit and
64-bit MMU code for historical reasons.

Let's refactor the code for more similarity, implement
flush_cacheable_pages for 32-bit and prepare for observing
break-before-make requirements.

Ahmad Fatoum (22):
  ARM: mmu: introduce new maptype_t type
  ARM: mmu: compare only lowest 16 bits for map type
  ARM: mmu: prefix pre-MMU functions with early_
  ARM: mmu: panic when alloc_pte fails
  ARM: mmu32: introduce new mmu_addr_t type
  ARM: mmu: provide zero page control in PBL
  ARM: mmu: print map type as string
  ARM: mmu64: rename create_sections to __arch_remap_range
  ARM: mmu: move get_pte_attrs call into __arch_remap_range
  ARM: mmu64: print debug message in __arch_remap_range
  ARM: mmu: make force_pages a maptype_t flag
  ARM: mmu64: move granule_size to the top of the file
  ARM: mmu64: fix benign off-by-one in flush_cacheable_pages
  ARM: mmu64: make flush_cacheable_pages less 64-bit dependent
  ARM: mmu64: allow asserting last level page in __find_pte
  ARM: mmu64: rename __find_pte to find_pte
  ARM: mmu32: rework find_pte to have ARM64 find_pte semantics
  ARM: mmu64: factor out flush_cacheable_pages for reusability
  ARM: mmu32: flush only cacheable pages on remap
  ARM: mmu32: factor out set_pte_range helper
  ARM: mmu64: factor out set_pte_range helper
  ARM: mmu: define dma_alloc_writecombine in common code

 arch/arm/cpu/Makefile                |   2 +-
 arch/arm/cpu/flush_cacheable_pages.h |  77 +++++
 arch/arm/cpu/mmu-common.c            |  23 +-
 arch/arm/cpu/mmu-common.h            |  29 +-
 arch/arm/cpu/mmu_32.c                | 237 +++++++++-----
 arch/arm/cpu/mmu_32.h                |   2 +
 arch/arm/cpu/mmu_64.c                | 445 ++++++++++++---------------
 arch/arm/cpu/mmu_64.h                |   2 +
 arch/arm/include/asm/mmu.h           |   2 +-
 arch/powerpc/cpu-85xx/mmu.c          |   4 +-
 arch/powerpc/include/asm/mmu.h       |   2 +-
 commands/memtest.c                   |   8 +-
 include/linux/types.h                |   2 +
 include/mmu.h                        |  25 +-
 include/zero_page.h                  |   2 +-
 15 files changed, 509 insertions(+), 353 deletions(-)
 create mode 100644 arch/arm/cpu/flush_cacheable_pages.h

-- 
2.39.5



