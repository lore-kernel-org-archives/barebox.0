Delivery-date: Thu, 15 Jan 2026 13:32:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMWh-001ana-1V
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:32:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgMWg-00054K-8v
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:32:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zZ9t4HyGIPYWivOwtMKGkZXU8YgUcL9b6OX++xhUhnQ=; b=Gl9dN3o5jW2n8zZYmlocjCcoG5
	epksHoI3+ObYV2cavkK6Jty8lvl7SH1UMyHheZlF3mJ9Ko0svwgkCgAKdzgJWSb4jm3xiSxnUeZWw
	AZdkpT3xuLcM7IxXONacnkGdXXjlJhJUmTjWBVA+VsXJ5+//1+DHJbXbzYYBbXp5SZASYgf7itXBG
	gWC//uDHhoYxUB1yQWpPP/8YNcCGlJciN8V+ByYmduuzOutxnPN0zJqblwRG6n1uk5NlgIoNaxN/H
	WBRddy2kMvT5cC8MT3OSUDViru+lf2aCfxiXSUIyERrIdRG2xqx1rki8XqtwFp3vfa7OeLo0Nl2r6
	z376JgUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMW9-0000000CL8a-3SQ6;
	Thu, 15 Jan 2026 12:32:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgMW6-0000000CL8B-3PLo
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:32:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgMW5-0004yM-2j; Thu, 15 Jan 2026 13:31:57 +0100
Message-ID: <dbd8811f-cb7d-4c3e-9908-20e44cda8082@pengutronix.de>
Date: Thu, 15 Jan 2026 13:31:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260114-pbl-load-elf-v4-0-0afa78d95a7e@pengutronix.de>
 <20260114-pbl-load-elf-v4-18-0afa78d95a7e@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260114-pbl-load-elf-v4-18-0afa78d95a7e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_043158_846958_8AA6CB43 
X-CRM114-Status: GOOD (  16.14  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 18/22] ARM: PBL: setup MMU with proper permissions from
 ELF segments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/14/26 1:14 PM, Sascha Hauer wrote:
> Move complete MMU setup into PBL by leveraging ELF segment information
> to apply correct memory permissions before jumping to barebox proper.
> 
> After ELF relocation, parse PT_LOAD segments and map each with
> permissions derived from p_flags:
> - Text segments (PF_R|PF_X): Read-only + executable (MAP_CODE)
> - Data segments (PF_R|PF_W): Read-write (MAP_CACHED)
> - RO data segments (PF_R): Read-only (MAP_CACHED_RO)
> 
> This ensures barebox proper starts with full W^X protection already
> in place, eliminating the need for complex remapping in barebox proper.
> 
> The framework is portable - common ELF parsing in pbl/mmu.c uses
> architecture-specific early_remap_range() exported from mmu_*.c.
> 
> 🤖 Generated with [Claude Code](https://claude.com/claude-code)
> 
> Co-Authored-By: Claude Sonnet 4.5 <noreply@anthropic.com>

I think the Co-authored-by: is important information, but the generated
line with its markdown looks a bit off IMO. Can we drop the first line?

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With above and below nitpicks fixed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> -	if (region_overlap_end_exclusive(start, end, text_start, text_end)) {
> -		remap_range_end(start, text_start, MAP_CACHED);
> +	if (region_overlap_end_exclusive(start, end, image_start, image_end)) {
> +		remap_range_end(start, image_start, MAP_CACHED);
>  		/* skip barebox segments here, will be mapped later */

skip barebox segments here, as PBL already mapped them

> +		/*
> +		 * Remap this segment with proper permissions.
> +		 * Use page-wise mapping to allow different permissions for
> +		 * different segments even if they're nearby.

There's no page-wise mapping happening, but this is ok.

Cheers,
Ahmad

> +		 */
> +		remap_range((void *)addr, size, mmu_flags);
> +	}
> +
> +	pr_debug("MMU setup from ELF complete\n");
> +	return 0;
> +}
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



