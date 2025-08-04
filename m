Delivery-date: Mon, 04 Aug 2025 19:23:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyu8-0070zC-26
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 19:23:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyu7-0001K1-Ur
	for lore@pengutronix.de; Mon, 04 Aug 2025 19:23:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dJecLEw8VRsyztDLskJYspYGRLF5SFaFL3l4GpOuyxE=; b=F/6blOH9s8l94NgFv9tte5FsZl
	tJFvcyX/cQulqDk7gxZb7HvPl8d7VAkNCxjFWftWcgc2OobZtbUeyXKwbswgTlSnzHwFavcqIaNms
	XhFXDBt4gS7Z4tJ+4VLAMDBvahZj0t1nbgBVxlCjUSvvckjJk07lOOBLKh8zpZyT6Sf6lfMmW03Sm
	BFqGtNdoy/VZM1aziVtGxj12+SwwuC2H2T5PZs4lTogltc8SPVMnSx2lBpV2CUX76gJy2t6k+0sx3
	uzPvMAKLwjoe/Cr0Bkey04U4EG7f+NR+2cgYL5Cz9lSpY2XBGilF5gafbPveT+6gzOkgu/rqj248a
	gzyRaD4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytW-0000000B5Lj-2wqi;
	Mon, 04 Aug 2025 17:22:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytT-0000000B5JH-1azs
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytQ-0000su-9i
	for barebox@lists.infradead.org; Mon, 04 Aug 2025 19:22:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Mon,  4 Aug 2025 19:22:20 +0200
Message-Id: <20250804172233.2158462-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_102239_416096_1EABEE7C 
X-CRM114-Status: GOOD (  11.28  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 00/13] ARM: Map sections RO/XN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series replaces 7 patches that are in next to fix a barebox hang
when used together with OP-TEE.

Root cause is that we need to consider both reserved memory entries
and the text area at once, otherwise mapping non-reserved regions
cached would map the text area eXecute never

Changes in v4:
- skip TLB invalidation if remapping zero bytes
- share common memory bank remapping code
- fix reserved memory at end of RAM mapping barebox text
  eXecute Never
- add range helpers to make especially v4 code clearer
- pass map type not pte flags to early_remap_range

Changes in v3:
- rework create_sections() for Ahmads comments
- mention CR_S bit and DOMAIN_CLIENT in commit message
- Link to v2: https://lore.barebox.org/20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de

Changes in v2:
- Tested and fixed for ARMv5
- merge create_pages() and create_sections() into one functions (ahmad)
- introduce function to create mapping flags based on CONFIG_ARM_MMU_PERMISSIONS
- Link to v1: https://lore.barebox.org/20250606-mmu-xn-ro-v1-0-7ee6ddd134d4@pengutronix.de

Ahmad Fatoum (8):
  mmu: explicitly map executable non-SDRAM regions with MAP_CODE
  ARM: mmu: skip TLB invalidation if remapping zero bytes
  ARM: mmu: provide setup_trap_pages for both 32- and 64-bit
  ARM: mmu: share common memory bank remapping code
  ARM: mmu: make mmu_remap_memory_banks clearer with helper
  partition: rename region_overlap_end to region_overlap_end_inclusive
  partition: define new region_overlap_end_exclusive helper
  ARM: mmu64: map text segment ro and data segments execute never

Sascha Hauer (5):
  ARM: pass barebox base to mmu_early_enable()
  ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
  ARM: mmu: map memory for barebox proper pagewise
  ARM: mmu: map text segment ro and data segments execute never
  ARM: mmu64: map memory for barebox proper pagewise

 arch/arm/Kconfig                 |  12 ++++
 arch/arm/cpu/lowlevel_32.S       |   1 +
 arch/arm/cpu/mmu-common.c        |  69 +++++++++++++++++++++
 arch/arm/cpu/mmu-common.h        |  21 +++++++
 arch/arm/cpu/mmu_32.c            | 101 ++++++++++++++++++-------------
 arch/arm/cpu/mmu_64.c            |  88 ++++++++++++++++-----------
 arch/arm/cpu/uncompress.c        |   9 ++-
 arch/arm/include/asm/mmu.h       |   2 +-
 arch/arm/include/asm/pgtable64.h |   1 +
 arch/arm/lib32/barebox.lds.S     |   3 +-
 arch/arm/lib64/barebox.lds.S     |   5 +-
 arch/arm/mach-imx/romapi.c       |   3 +-
 commands/iomemport.c             |   2 +-
 common/memory.c                  |   7 ++-
 common/partitions.c              |   6 +-
 drivers/firmware/socfpga.c       |   4 ++
 drivers/hab/habv4.c              |   2 +-
 include/mmu.h                    |   1 +
 include/range.h                  |  30 +++++++--
 19 files changed, 268 insertions(+), 99 deletions(-)

-- 
2.39.5



