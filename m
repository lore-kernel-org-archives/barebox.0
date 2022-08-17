Delivery-date: Wed, 17 Aug 2022 13:44:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTf-001paL-NZ
	for lore@lore.pengutronix.de; Wed, 17 Aug 2022 13:44:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOHTb-0001w6-Qi
	for lore@pengutronix.de; Wed, 17 Aug 2022 13:44:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TztSYCdred/yUmExBoofKGg/J2FXlEx2KYbThNWCU48=; b=xMN67+6UUFkfxgf/+CPQRFAMqe
	SZfVm7OmLTZFAtjTqm2uv5RdGl4P03Ll3GYtxAud3jblKK06I2xQjTC/a7E24aKLCBUKqijCHSldj
	inQFcyhXMh9bB1SGFT2BQnLT9DSGww4ZPBgoK+wK8b/kFuOvObA0MzOAPGuyUNMhAotYW8tKHxUPS
	/HeuHE+L0kyGry83OM2CPvahqVTd3KJPOGlL4Clm6fXxcpM7FPzQuM8DUnCJ1LNG4r0QNHsHRyzds
	evOJjt1mekwKIdppqZ2M8H49LZA6ySmbBJcq0AgZnSdJ/SJjH2p5uAUxF27w1Qv1TTMB+XDz3cb8H
	iCcDnDYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHRx-001ZHb-Mh; Wed, 17 Aug 2022 11:43:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOHRp-001Z9u-Lc
	for barebox@lists.infradead.org; Wed, 17 Aug 2022 11:42:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRf-0001Nb-NO; Wed, 17 Aug 2022 13:42:47 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRe-000Iq7-UM; Wed, 17 Aug 2022 13:42:46 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOHRd-007dCe-JV; Wed, 17 Aug 2022 13:42:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: uol@pengutronix.de
Date: Wed, 17 Aug 2022 13:42:34 +0200
Message-Id: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_044257_749085_AAB23DCB 
X-CRM114-Status: GOOD (  16.91  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/10] ARM: mmu: inhibit speculation into secure memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

v1 -> v2:
  - fold misplaced hunk changing %u added in [01/10] into 0x%x in
    [02/10] directly into [01/10] (Ulrich)
  - Correct typo in commit message (Sascha)

When setting up page tables, barebox marks all the address space as
eXecute Never and uncached, except for the memory banks. If we happen to
have secure memory, this is andequate as speculative execution may read
from secure memory or even attempt to execute it leading to spurious
data aborts. The way around this so far was either having OP-TEE in SRAM
(which normally isn't a barebox memory bank) or having it at the end of
DRAM, but adjusting size, so it's not covered by a memory bank.

This adds a generic solution to the issue. We already request the SDRAM
regions described by the reserved memory entries in the DT. We go a step
further and mark them as IORESOURCE_BUSY, which we can then evaluat in
the MMU setup code to map these regions uncached and eXecute Never.

There has been previous attempts by Rouven to achieve this, the latest
being:

  https://lore.barebox.org/barebox/20210803094418.475609-1-r.czerwinski@pengutronix.de/

While this series tries to achieve the same end goal, it goes about it
in a different manner: We don't use FDT fixup table to tell us what to
nstead have both the FDT fixup table and the /reserved-memory child
nodes feed into the barebox request_sdram_region allocator and then
use to apply caching attributes.

Note that this doesn't yet solve all problems. For example, PPA secure
monitor installation on Layerscape may happen with CONFIG_MMU_EARLY=y,
in which case barebox in EL2 may speculate into the secure memory
before any device tree reserved-memory settings are considered. For this
reason, both early MMU and normal MMU setup must be aware of the
reserved memory regions. The original patch set by Rouven used FDT
parsing in PBL to achieve this, but this is omitted here to limit
scope of the patch series. Instead we only handle the CONFIG_OPTEE_SIZE
case out-of-the-box.

Ahmad Fatoum (9):
  resource: add flags parameter to __request_region
  common: allow requesting SDRAM regions with custom flags
  memory: define reserve_sdram_region helper
  init: define new postmem_initcall()
  of: reserved-mem: reserve regions prior to mmu_initcall()
  ARM: mmu64: map reserved regions uncached
  ARM: mmu: define attrs_uncached_mem() helper
  ARM: early-mmu: don't cache/prefetch OPTEE_SIZE bytes from end of
    memory
  commands: iomem: point out [R]eserved regions

Rouven Czerwinski (1):
  ARM: mmu: use reserve mem entries to modify maps

 arch/arm/cpu/mmu-common.h         | 15 ++++++++++++
 arch/arm/cpu/mmu.c                | 40 ++++++++++++++++++++++---------
 arch/arm/cpu/mmu.h                |  9 +++++--
 arch/arm/cpu/mmu_64.c             | 10 +++++++-
 arch/arm/cpu/start.c              |  2 +-
 arch/arm/cpu/uncompress.c         |  2 +-
 commands/iomemport.c              |  9 ++++---
 common/memory.c                   | 27 ++++++++-------------
 common/resource.c                 | 13 +++++-----
 drivers/of/reserved-mem.c         | 34 +++++++++++++++++---------
 include/asm-generic/barebox.lds.h |  1 +
 include/init.h                    | 21 ++++++++--------
 include/linux/ioport.h            |  4 ++--
 include/memory.h                  | 25 +++++++++++++++++--
 include/of.h                      |  7 ------
 15 files changed, 145 insertions(+), 74 deletions(-)

-- 
2.30.2



