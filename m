Delivery-date: Wed, 28 Jun 2023 10:47:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEQpt-006vKf-Si
	for lore@lore.pengutronix.de; Wed, 28 Jun 2023 10:47:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qEQpr-0001Z2-Gc
	for lore@pengutronix.de; Wed, 28 Jun 2023 10:47:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QfoNhSbbLjpWcfq8sdjFKFc5rsym5UFXssqrLgEFF24=; b=Jwq+kpzedE2a8bFqmYc8qn5kSO
	EOvi6/oJSiB3ZM7E5sxAzESL4FE7TFAz21tk5m4d2H0AJfGYHIIF6VG5td0qJi3z0drFaF3KauDqY
	WSK7Xw2J+fMNadHWRKBj+mscOqO8Iqnz0QtUIvztRyqiJ5eq/pCOUwzlfop4h6fJOGzuJ8I7FE7G6
	PR/vZxdC6SPg6xmWulQ8uaCz9Eg8rzG3OPwYu3cBdjcc4ckskeB0bsbnKcu66SfIuNFmVDT4sheED
	4yUvTqOX5aKZ2gf2n/fCGZS641z3rpZDkfT9VlctmIEce4E7pPbTmpGWtrvta1dqOQjcqXHZcRoAr
	fdiG2CYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEQog-00FBle-1o;
	Wed, 28 Jun 2023 08:46:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEQod-00FBlB-2R
	for barebox@lists.infradead.org;
	Wed, 28 Jun 2023 08:46:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qEQoc-0001Sv-Fv; Wed, 28 Jun 2023 10:46:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qEQob-0005Fm-UE; Wed, 28 Jun 2023 10:46:17 +0200
Date: Wed, 28 Jun 2023 10:46:17 +0200
To: oss@kalray.eu
Cc: barebox@lists.infradead.org, jmaselbas@kalray.eu, ysionneau@kalray.eu
Message-ID: <20230628084617.GB18491@pengutronix.de>
References: <20230627154202.8976-1-oss@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230627154202.8976-1-oss@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230628_014619_798563_967BBA4D 
X-CRM114-Status: GOOD (  25.33  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] kvx: Add missing include/asm/mmu.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 27, 2023 at 05:42:00PM +0200, oss@kalray.eu wrote:
> From: Jules Maselbas <jmaselbas@kalray.eu>
> 
> Since the rework of remap_range each architecture is expected to have
> the asm/mmu.h header, this wasn't the case for kvx, fix this.
> 
> By default the KV3-1 cpu (as found in Coolidge SoC) starts with all memory
> uncached and MMU disabled. Data and instruction L1-caches are enabled very
> early during barebox start code, see arch/kvx/cpu/start.S, using the wfxl
> instruction to modify DCE and ICE (resp. Data and Instruction Cache Enable)
> bits in PS (Processor Status) of the system register file.
> 
> The core MMU is not used by barebox, however there is a default mapping of
> the memory when the MMU is disabled where only the SMEM and DDR memory are
> cached and device-memory isn't.
> 
> Fixes b792124a7d ("rework remap_range")
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  arch/kvx/include/asm/mmu.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 arch/kvx/include/asm/mmu.h

Applied, thanks

Sascha

> 
> diff --git a/arch/kvx/include/asm/mmu.h b/arch/kvx/include/asm/mmu.h
> new file mode 100644
> index 0000000000..d39889bd3f
> --- /dev/null
> +++ b/arch/kvx/include/asm/mmu.h
> @@ -0,0 +1,8 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __ASM_MMU_H
> +#define __ASM_MMU_H
> +
> +#define MAP_ARCH_DEFAULT MAP_CACHED
> +
> +#endif /* __ASM_MMU_H */
> -- 
> 2.17.1
> 
> 
> 
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


