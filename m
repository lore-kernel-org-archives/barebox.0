Delivery-date: Tue, 05 Aug 2025 12:39:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujF4a-007GVF-0X
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 12:39:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujF4Z-0002hf-HO
	for lore@pengutronix.de; Tue, 05 Aug 2025 12:39:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wz0U8Csy8iKFbEUQEBbSigow1Fvv+USjL+sZnW8RVbE=; b=f7b8WoOr+F89m97u9rSaa3xE29
	UDlANZR4niiex05BPgQkH+QCIcB/oh8eU+ZPhMx4870n/3h+MwAxwTpm6a7QkHCCFZD7r4502wKqV
	GcgEzxP0YboaiAs6xZNCIZWfuf28ld9xmXz2CTyYmI0rCrxUQ7/2Y7sQvient4gHA4/J6Obfi+U2x
	6QEOc6BNsQP9gHTF0+PotiIK9SYk44Gn3bw+2coNkL4fmg9a9ZBaCunwPiZtyijTqQ2piBFH8knqQ
	CHw9F7+gH7a+vecjkNG/oUZXluDQefFROo4uBALdgQkS0X+ZdGVqPjvdV0KmfyMgKiyhgGoP4GRTV
	xwrdkhnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujF3z-0000000CVZf-21D5;
	Tue, 05 Aug 2025 10:38:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujEkk-0000000CT6i-1WcE
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 10:18:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujEki-0000QW-TW; Tue, 05 Aug 2025 12:18:40 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujEki-00C1aj-2L;
	Tue, 05 Aug 2025 12:18:40 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujEki-00AAkm-20;
	Tue, 05 Aug 2025 12:18:40 +0200
Date: Tue, 5 Aug 2025 12:18:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aJHagEVHUpHjALa2@pengutronix.de>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_031842_403565_BA415E0B 
X-CRM114-Status: GOOD (  25.67  )
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
Subject: Re: [PATCH v4 00/13] ARM: Map sections RO/XN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Mon, Aug 04, 2025 at 07:22:20PM +0200, Ahmad Fatoum wrote:
> This series replaces 7 patches that are in next to fix a barebox hang
> when used together with OP-TEE.

Unfortunately I haven't seen this in time, so the offending patches are
in master now. Could you resend your changes as patches instead?

Thanks

 Sascha

> 
> Root cause is that we need to consider both reserved memory entries
> and the text area at once, otherwise mapping non-reserved regions
> cached would map the text area eXecute never
> 
> Changes in v4:
> - skip TLB invalidation if remapping zero bytes
> - share common memory bank remapping code
> - fix reserved memory at end of RAM mapping barebox text
>   eXecute Never
> - add range helpers to make especially v4 code clearer
> - pass map type not pte flags to early_remap_range
> 
> Changes in v3:
> - rework create_sections() for Ahmads comments
> - mention CR_S bit and DOMAIN_CLIENT in commit message
> - Link to v2: https://lore.barebox.org/20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de
> 
> Changes in v2:
> - Tested and fixed for ARMv5
> - merge create_pages() and create_sections() into one functions (ahmad)
> - introduce function to create mapping flags based on CONFIG_ARM_MMU_PERMISSIONS
> - Link to v1: https://lore.barebox.org/20250606-mmu-xn-ro-v1-0-7ee6ddd134d4@pengutronix.de
> 
> Ahmad Fatoum (8):
>   mmu: explicitly map executable non-SDRAM regions with MAP_CODE
>   ARM: mmu: skip TLB invalidation if remapping zero bytes
>   ARM: mmu: provide setup_trap_pages for both 32- and 64-bit
>   ARM: mmu: share common memory bank remapping code
>   ARM: mmu: make mmu_remap_memory_banks clearer with helper
>   partition: rename region_overlap_end to region_overlap_end_inclusive
>   partition: define new region_overlap_end_exclusive helper
>   ARM: mmu64: map text segment ro and data segments execute never
> 
> Sascha Hauer (5):
>   ARM: pass barebox base to mmu_early_enable()
>   ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
>   ARM: mmu: map memory for barebox proper pagewise
>   ARM: mmu: map text segment ro and data segments execute never
>   ARM: mmu64: map memory for barebox proper pagewise
> 
>  arch/arm/Kconfig                 |  12 ++++
>  arch/arm/cpu/lowlevel_32.S       |   1 +
>  arch/arm/cpu/mmu-common.c        |  69 +++++++++++++++++++++
>  arch/arm/cpu/mmu-common.h        |  21 +++++++
>  arch/arm/cpu/mmu_32.c            | 101 ++++++++++++++++++-------------
>  arch/arm/cpu/mmu_64.c            |  88 ++++++++++++++++-----------
>  arch/arm/cpu/uncompress.c        |   9 ++-
>  arch/arm/include/asm/mmu.h       |   2 +-
>  arch/arm/include/asm/pgtable64.h |   1 +
>  arch/arm/lib32/barebox.lds.S     |   3 +-
>  arch/arm/lib64/barebox.lds.S     |   5 +-
>  arch/arm/mach-imx/romapi.c       |   3 +-
>  commands/iomemport.c             |   2 +-
>  common/memory.c                  |   7 ++-
>  common/partitions.c              |   6 +-
>  drivers/firmware/socfpga.c       |   4 ++
>  drivers/hab/habv4.c              |   2 +-
>  include/mmu.h                    |   1 +
>  include/range.h                  |  30 +++++++--
>  19 files changed, 268 insertions(+), 99 deletions(-)
> 
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


