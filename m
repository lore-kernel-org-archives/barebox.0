Delivery-date: Wed, 17 May 2023 15:45:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHSu-004Lkm-Et
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:45:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzHSr-0000bO-Tf
	for lore@pengutronix.de; Wed, 17 May 2023 15:45:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JNJowxZs2hFQtwlY4xy7sEh3G8kfJsXvlqgWD8uvSZM=; b=Ozu4lyd2c7NOXeBSUfKfP5a8ys
	miYDck0ZGqQf7VU6uda7ctyQS0ERYK5FnapD+aSXnhd5T+XBbN4vAkv/gLGl82lLjY3gQUUnFSTD4
	hNF0iG7mDO83J2tQIwoJPuCGCXdXLKxYwHue5aPnnvvWcAinkBJ9nIc7fmZsuycojnwgx9T/17h1W
	Fmop4a2MZO4qP5j8IzxCx21LKb4ttarhxDZ2G6uFA1OgZDHOVL/p/2m0k8fyLYFCLhNvqEYbpma/x
	ZRcMTpc7Wpbxz+g/sSzfq375DoxObW24LencgslQTVtPKi1qNfBVefyS/sWZk9CJ+C5RTekOrWabs
	K+Lx13hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHRr-00A1Zl-2Z;
	Wed, 17 May 2023 13:44:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzHRo-00A1ZE-1H
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:44:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzHRl-0000S3-DL; Wed, 17 May 2023 15:44:06 +0200
Message-ID: <bfd18996-6881-c9b8-8d3e-2842dfc67368@pengutronix.de>
Date: Wed, 17 May 2023 15:43:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-29-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-29-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_064408_451845_3C3ADA64 
X-CRM114-Status: GOOD (  22.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 28/34] ARM: mmu32: Add pte_flags_to_pmd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 35 +++++++++++++++++++++++++++++------
>  1 file changed, 29 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 4abaab7d87..0af89ac39c 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -187,30 +187,53 @@ static u32 pmd_flags_to_pte(u32 pmd)
>  	return pte;
>  }
>  
> +static u32 pte_flags_to_pmd(u32 pte)
> +{
> +	u32 pmd = 0;
> +
> +	if (pte & PTE_BUFFERABLE)
> +		pmd |= PMD_SECT_BUFFERABLE;
> +	if (pte & PTE_CACHEABLE)
> +		pmd |= PMD_SECT_CACHEABLE;
> +
> +	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
> +		if (pte & PTE_EXT_NG)
> +			pmd |= PMD_SECT_nG;
> +		if (pte & PTE_EXT_XN)
> +			pmd |= PMD_SECT_XN;

Note that at least,  <asm/pgtable.h> claims these bits are v6+:

#define PTE_EXT_XN		(1 << 0)	/* v6 */
#define PMD_SECT_nG		(1 << 17)	/* v6 */


> +
> +		/* TEX[2:0] */
> +		pmd |= ((pte >> 6) & 7) << 12;
> +		/* AP[1:0] */
> +		pmd |= ((pte >> 4) & 0x3) << 10;
> +		/* AP[2] */
> +		pmd |= ((pte >> 9) & 0x1) << 15;
> +	} else {
> +		pmd |= PMD_SECT_AP_WRITE | PMD_SECT_AP_READ;
> +	}
> +
> +	return pmd;
> +}
> +
>  int arch_remap_range(void *start, size_t size, unsigned flags)
>  {
>  	u32 addr = (u32)start;
>  	u32 pte_flags;
> -	u32 pgd_flags;
>  
>  	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
>  
>  	switch (flags) {
>  	case MAP_CACHED:
>  		pte_flags = pte_flags_cached;
> -		pgd_flags = PMD_SECT_DEF_CACHED;
>  		break;
>  	case MAP_UNCACHED:
>  		pte_flags = pte_flags_uncached;
> -		pgd_flags = pgd_flags_uncached;
>  		break;
>  	case MAP_FAULT:
>  		pte_flags = 0x0;
> -		pgd_flags = 0x0;
>  		break;
>  	case ARCH_MAP_WRITECOMBINE:
>  		pte_flags = pte_flags_wc;
> -		pgd_flags = pgd_flags_wc;
>  		break;
>  	default:
>  		return -EINVAL;
> @@ -228,7 +251,7 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
>  			 * replace it with a section
>  			 */
>  			chunk = PGDIR_SIZE;
> -			*pgd = addr | pgd_flags;
> +			*pgd = addr | pte_flags_to_pmd(pte_flags) | PMD_TYPE_SECT;
>  			dma_flush_range(pgd, sizeof(*pgd));
>  		} else {
>  			unsigned int num_ptes;

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



