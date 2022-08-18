Delivery-date: Thu, 18 Aug 2022 15:01:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOf94-0031MQ-50
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 15:01:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOf90-0007hd-O9
	for lore@pengutronix.de; Thu, 18 Aug 2022 15:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QDCuFLFr+odHgmQ0oNwSrxSzV69I6K17cI7s6A64wSU=; b=nmkXo5Qi0Z6ezg4aH2Xdn/RugH
	3KdWpOsc3gmtvmzer7ugYH/ttw4tb024dCbk2DLpu0/7DR0U59NVGiZB5kSz97dWbQlDgETUz3RYg
	ByBRWzCeP1CV/ReNxdBRlN9Zo1zaUu3HBpeFP4VYLNscjiKSbQWBJ4JWHgPUKZIQW9NuT49D3+zFS
	2hPWNY668/qzuIId5u4zQ2+A8UItg83dQORamjtQQT/1RpW62VD+JERI9yfKD8ZioHK6LLp5EZJm+
	F/k/piqMQWWtwWvCFlgmA6XhkX8EPMA/JXGAhVprxR5oQPcRO9I14u/y5oLwfGhvh+wzXUzfJ/b5s
	A5lf/LAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOf6p-004wep-DF; Thu, 18 Aug 2022 12:58:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeoB-004iF2-D1
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 12:39:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOeo5-0004ST-AD; Thu, 18 Aug 2022 14:39:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOeo5-0004a8-1T; Thu, 18 Aug 2022 14:39:29 +0200
Date: Thu, 18 Aug 2022 14:39:29 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, uol@pengutronix.de
Message-ID: <20220818123929.GW17485@pengutronix.de>
References: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220817114244.1810531-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_053935_506977_CFC1D1FA 
X-CRM114-Status: GOOD (  29.61  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/10] ARM: mmu: inhibit speculation into secure memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 17, 2022 at 01:42:34PM +0200, Ahmad Fatoum wrote:
> v1 -> v2:
>   - fold misplaced hunk changing %u added in [01/10] into 0x%x in
>     [02/10] directly into [01/10] (Ulrich)
>   - Correct typo in commit message (Sascha)
> 
> When setting up page tables, barebox marks all the address space as
> eXecute Never and uncached, except for the memory banks. If we happen to
> have secure memory, this is andequate as speculative execution may read
> from secure memory or even attempt to execute it leading to spurious
> data aborts. The way around this so far was either having OP-TEE in SRAM
> (which normally isn't a barebox memory bank) or having it at the end of
> DRAM, but adjusting size, so it's not covered by a memory bank.
> 
> This adds a generic solution to the issue. We already request the SDRAM
> regions described by the reserved memory entries in the DT. We go a step
> further and mark them as IORESOURCE_BUSY, which we can then evaluat in
> the MMU setup code to map these regions uncached and eXecute Never.
> 
> There has been previous attempts by Rouven to achieve this, the latest
> being:
> 
>   https://lore.barebox.org/barebox/20210803094418.475609-1-r.czerwinski@pengutronix.de/
> 
> While this series tries to achieve the same end goal, it goes about it
> in a different manner: We don't use FDT fixup table to tell us what to
> nstead have both the FDT fixup table and the /reserved-memory child
> nodes feed into the barebox request_sdram_region allocator and then
> use to apply caching attributes.
> 
> Note that this doesn't yet solve all problems. For example, PPA secure
> monitor installation on Layerscape may happen with CONFIG_MMU_EARLY=y,
> in which case barebox in EL2 may speculate into the secure memory
> before any device tree reserved-memory settings are considered. For this
> reason, both early MMU and normal MMU setup must be aware of the
> reserved memory regions. The original patch set by Rouven used FDT
> parsing in PBL to achieve this, but this is omitted here to limit
> scope of the patch series. Instead we only handle the CONFIG_OPTEE_SIZE
> case out-of-the-box.
> 
> Ahmad Fatoum (9):
>   resource: add flags parameter to __request_region
>   common: allow requesting SDRAM regions with custom flags
>   memory: define reserve_sdram_region helper
>   init: define new postmem_initcall()
>   of: reserved-mem: reserve regions prior to mmu_initcall()
>   ARM: mmu64: map reserved regions uncached
>   ARM: mmu: define attrs_uncached_mem() helper
>   ARM: early-mmu: don't cache/prefetch OPTEE_SIZE bytes from end of
>     memory
>   commands: iomem: point out [R]eserved regions
> 
> Rouven Czerwinski (1):
>   ARM: mmu: use reserve mem entries to modify maps

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


