Delivery-date: Mon, 24 Aug 2026 15:29:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyUk9-006iMc-2S
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 15:29:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 42C76200393
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 15:29:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GeYRLZtJ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jMy02yG5Nau3gMgoApvuYnjiV0NVosX6OvFqW297f8c=; b=GeYRLZtJV3gsc63u5BOHqkgWk9
	1cXQqgdyrm2RoQ0JRIzwolzWGyE5+hvW6jzn5+CD3DuDwKj7lSOC+on8PDWxIni7QLrQVfvOda9xd
	topPWFG9ER4I9SUclAuNcUGFT8AkQtAiwlme2XlZ/T8thqMDngajjGz/YWWtwYtb+Vhgrq2RhckTp
	eHk1UgkrAdw+jPuQ3haN1r6Lo1Gkj/XaX0lyMhboInt4M4XbPvSId4mWKNAP5dcjkpeeOPja81VSz
	p197rnwzHbyJL+G6dOVHncR6ESbsuzmfUGYtNAFU4eAhaCLOJ0whE5kAFoaxSrqSfmRc4K2L78GHv
	Ilz5Oaag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUiX-0000000GhMS-33FT;
	Mon, 24 Aug 2026 13:28:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyUiU-0000000GhM1-3Lkj
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 13:28:01 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0B9C0200062;
	Mon, 24 Aug 2026 15:27:52 +0200 (CEST)
Message-ID: <66e33b76-4121-4c1c-8a2d-8b6d74e3d3d4@pengutronix.de>
Date: Mon, 24 Aug 2026 15:27:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: mmu: fix flush_cacheable_pages off-by-one touching
 guard page
To: Stephano Cetola <stephano@cetola.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260822-send-mmu-flush-guard-v1-1-0a8c8f664b08@cetola.net>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260822-send-mmu-flush-guard-v1-1-0a8c8f664b08@cetola.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_062759_006525_550FA275 
X-CRM114-Status: GOOD (  29.16  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Stephano, Thanks for your patch! On 8/22/26 4:06 PM,
    Stephano Cetola wrote: > flush_cacheable_pages() accumulates contiguous cacheable
    page ranges and > tracks flush_end as the exclusive end of each range: the
    address of the > first [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: a1ygmr4oo6i3a9zdzdyumndahp1ocfta
X-Spamd-Result: default: False [-7.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 42C76200393

Hello Stephano,

Thanks for your patch!

On 8/22/26 4:06 PM, Stephano Cetola wrote:
> flush_cacheable_pages() accumulates contiguous cacheable page ranges and
> tracks flush_end as the exclusive end of each range: the address of the
> first page BEYOND the last cacheable block, which equals the start
> address of the next block. The flush_end == addr extension test relies
> on this invariant holding everywhere flush_end is assigned.
> 
> Two places break the invariant.
> 
> First: when a non-cacheable page (e.g. the stack guard page) creates a
> gap in the middle of a flush region followed by more cacheable pages,
> dma_flush_range_end(flush_start, flush_end) is called just before
> starting a new range.
> 
> Second: flush_end is clamped against region_end via
> min(flush_end + block_size, region_end), in both the range-extension
> branch and right after starting a new range. region_end is computed as
> PAGE_ALIGN(region_start + size) - 1, an inclusive last-address value.
> 
> Fix both by keeping flush_end consistently exclusive: clamp against
> region_end + 1 (not region_end) at both extension sites, and subtract
> 1 to convert to the inclusive end dma_flush_range_end expects at both
> call sites.
> 
> Observed on RK3588S (Radxa CM5) during boot-from NVMe bring-up.
> 
> Fixes: 04bfef82e33e ("ARM: mmu64: fix benign off-by-one in flush_cacheable_pages")
> Signed-off-by: Stephano Cetola <stephano@cetola.net>
> ---
>  arch/arm/cpu/flush_cacheable_pages.h | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/cpu/flush_cacheable_pages.h b/arch/arm/cpu/flush_cacheable_pages.h
> index a5c54864d4..25990282ca 100644
> --- a/arch/arm/cpu/flush_cacheable_pages.h
> +++ b/arch/arm/cpu/flush_cacheable_pages.h
> @@ -55,26 +55,23 @@ static void flush_cacheable_pages(void *start, size_t size)
>  
>  		if (flush_end == addr) {
>  			/*
> -			 * While it's safe to flush the whole block_size,
> -			 * it's unnecessary time waste to go beyond region_end.
> +			 * region_end is inclusive, flush_end exclusive:
> +			 * clamp to region_end + 1.
>  			 */

I agree there is a bug here, but making flush_end exclusive doesn't
sound like the best remedy to me, exactly because these + 1's and - 1's
are so error-prone.

Also it seems the code has problems if a cached region reaches the end
of address space, which can happen on some 32-bit ARM SoCs, like the i.MX6Q.

I am working on a revised patch that I will share within the week.

Thanks,
Ahmad

> -			flush_end = min(flush_end + block_size, region_end);
> +			flush_end = min(flush_end + block_size, region_end + 1);
>  			continue;
>  		}
>  
> -		/*
> -		 * We don't have a previous contiguous flush area to append to.
> -		 * If we recorded any area before, let's flush it now
> -		 */
> +		/* flush_end is exclusive; dma_flush_range_end() wants an inclusive end. */
>  		if (flush_start != ~0UL)
> -			dma_flush_range_end(flush_start, flush_end);
> +			dma_flush_range_end(flush_start, flush_end - 1);
>  
>  		/* and start the new contiguous flush area with this page */
>  		flush_start = addr;
> -		flush_end = min(flush_start + block_size, region_end);
> +		flush_end = min(flush_start + block_size, region_end + 1);
>  	}
>  
>  	/* The previous loop won't flush the last cached range, so do it here */
>  	if (flush_start != ~0UL)
> -		dma_flush_range_end(flush_start, flush_end);
> +		dma_flush_range_end(flush_start, flush_end - 1);
>  }
> 
> ---
> base-commit: 9bc1a26592a59919d2ee8c60c273d87d3d9f2e81
> change-id: 20260821-send-mmu-flush-guard-fde994a1b433
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



