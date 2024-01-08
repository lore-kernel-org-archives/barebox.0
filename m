Delivery-date: Mon, 08 Jan 2024 09:07:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMkey-008ZEy-02
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 09:07:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMkex-0000xt-As
	for lore@pengutronix.de; Mon, 08 Jan 2024 09:06:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yyuHiF8XjEjQGceryVZtFTzyUPBQwwj15zgI4iO6gRA=; b=2lR8O0dxagdtZUpi6P4MTLD3KU
	0BLUH+YN4WJlaRQPFQss1c9Rtb31U0DwEQCOMjbA+BhlHWSmdnDrXzkTunXtegYaruiriTGHiB3Pb
	CYTv2OVjdG/U3JPCQxe2AysAlwOJfQAoCY9tJtNThD6jsbmE79VFUDtpZw3bYYxpuJu9ukrQ7S5CU
	CqVjvsT8l7xN5X9OyOuIcc/2RP6XKNCwIrnxP5dbULxG2z2K7lTISSgd5L+wSIY5snjW0EbBIWNPa
	kfYgCcam3GP7qwNfiQITmqmdZL1z+EwhTOTtM55rflT4W0ciwk3XNL8+OrmN0pB+/vxyDqvswRnpr
	jfaXivdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMkdU-004FWQ-31;
	Mon, 08 Jan 2024 08:05:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMkdR-004FW0-0D
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 08:05:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMkdP-0000mn-M9; Mon, 08 Jan 2024 09:05:23 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rMkdP-001Cc5-9f; Mon, 08 Jan 2024 09:05:23 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rMkdP-00AoO0-79; Mon, 08 Jan 2024 09:05:23 +0100
Date: Mon, 8 Jan 2024 09:05:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108080523.GA1318922@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-61-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103181312.409668-61-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_000525_105393_A3903626 
X-CRM114-Status: GOOD (  25.92  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 060/112] ARM: pbl: add 64K segment alignment for PE/COFF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 07:12:20PM +0100, Ahmad Fatoum wrote:
> An EFI stubbed ARM64 kernel can be booted either via EFI or via the
> normal boot protocol. We'll want barebox to be able to behave the same,
> so extend section alignment to enable this.

This description reads as if it would change something, but at this
point this patch only introduces unused defines. They are first used in
086/112.

Does it hurt to move the usage of PBL_SEGMENT_ALIGN and PECOFF_EDATA_PADDING
to this patch? If not, I'd suggest doing so to make the intention of
this patch clearer.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/include/asm/memory.h | 20 ++++++++++++++++++++
>  arch/arm/lib/pbl.lds.S        | 18 ++++++++++++++++++
>  2 files changed, 38 insertions(+)
> 
> diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
> index 23fbbd8438a1..765b089beb59 100644
> --- a/arch/arm/include/asm/memory.h
> +++ b/arch/arm/include/asm/memory.h
> @@ -3,6 +3,9 @@
>  #ifndef __ASM_ARM_MEMORY_H
>  #define __ASM_ARM_MEMORY_H
>  
> +#include <linux/sizes.h>
> +
> +#ifndef __ASSEMBLY__
>  #include <memory.h>
>  
>  #include <linux/const.h>
> @@ -13,4 +16,21 @@ static inline int arm_add_mem_device(const char* name, resource_size_t start,
>  	return barebox_add_memory_bank(name, start, size);
>  }
>  
> +#endif
> +
> +
> +/*
> + * Alignment of barebox PBL segments (e.g. .text, .data).
> + *
> + *  4  B granule:  Same flat rwx mapping for everything
> + *  4 KB granule:  16 level 3 entries, with contiguous bit
> + * 16 KB granule:   4 level 3 entries, without contiguous bit
> + * 64 KB granule:   1 level 3 entry
> + */
> +#ifdef CONFIG_EFI_PAYLOAD
> +#define PBL_SEGMENT_ALIGN		SZ_64K
> +#else
> +#define PBL_SEGMENT_ALIGN		4
> +#endif
> +
>  #endif	/* __ASM_ARM_MEMORY_H */
> diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
> index cafb27b2d55e..95929d7558bc 100644
> --- a/arch/arm/lib/pbl.lds.S
> +++ b/arch/arm/lib/pbl.lds.S
> @@ -5,6 +5,24 @@
>  #include <asm/barebox.lds.h>
>  #include <asm-generic/memory_layout.h>
>  #include <asm-generic/pointer.h>
> +#include <asm/memory.h>
> +
> +/*
> + * The size of the PE/COFF section that covers the barebox image, which
> + * runs from _stext to _edata, must be a round multiple of the PE/COFF
> + * FileAlignment, which we set to its minimum value of 0x200. '_stext'
> + * itself must be 4 KB aligned, because that's what the adrp instructions
> + * expects, so padding out _edata to a 0x200 aligned boundary should be
> + * sufficient.
> + */
> +PECOFF_FILE_ALIGNMENT = 0x200;
> +
> +#ifdef CONFIG_EFI_STUB
> +#define PECOFF_EDATA_PADDING   \
> +       .pecoff_edata_padding : { BYTE(0); . = ALIGN(PECOFF_FILE_ALIGNMENT); }
> +#else
> +#define PECOFF_EDATA_PADDING
> +#endif
>  
>  #ifdef CONFIG_PBL_RELOCATABLE
>  #define BASE	0x0
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


