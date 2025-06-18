Delivery-date: Wed, 18 Jun 2025 10:34:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRoF9-008YM7-32
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 10:34:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRoF9-0004v4-BH
	for lore@pengutronix.de; Wed, 18 Jun 2025 10:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2m74hs74UJsICHEjnWBegW+N3ZpWQtJAliapKMaxIS8=; b=UmixnEJ0LAPBQ1ybmMCg9cZjU4
	YTGJdNGO7hWXQbUz//EKSqbBOWuIKU/MIYwlHNes6yxI11jton6/bRebHOTL/G0BzZhjb7ez7nlmG
	RAZMO3zazcXPJAiTdwoSjXBgDw6nC7MSXg/kVnQwkdrXZSjRqducEBpzCZsHFh4MA7FceuGr95/Bz
	z4i53CzSL6CHldIGmh0qJSyhIJSw6futeU4vjkJcSNZ+iRpZcTX/Ixs6+U2jLeq1krfEK4YMIYfYM
	64nBpcYLckmWTnSdxBe1UjdbhB13LrIg2IBZvEb8eZSM/D/yFEkNdvCeRygkfS47CLu3lHefjQIyy
	aA7vS8KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRoEg-00000009Q3U-0DDL;
	Wed, 18 Jun 2025 08:33:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRoDd-00000009Psx-1nm9
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 08:32:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uRoDc-000317-4R; Wed, 18 Jun 2025 10:32:28 +0200
Message-ID: <d6adcae9-fff6-480e-b612-5f2e055ac152@pengutronix.de>
Date: Wed, 18 Jun 2025 10:32:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
 <20250617-mmu-xn-ro-v2-5-3c7aa9046b67@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250617-mmu-xn-ro-v2-5-3c7aa9046b67@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_013229_471633_54AED0B9 
X-CRM114-Status: GOOD (  21.79  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/6] ARM: MMU64: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 6/17/25 16:28, Sascha Hauer wrote:
> Map the remainder of the memory explicitly with two level page tables. This is
> the place where barebox proper ends at. In barebox proper we'll remap the code
> segments readonly/executable and the ro segments readonly/execute never. For this
> we need the memory being mapped pagewise. We can't do the split up from section
> wise mapping to pagewise mapping later because that would require us to do
> a break-before-make sequence which we can't do when barebox proper is running
> at the location being remapped.
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Got a small change request below.

>  	uint64_t *ttb = get_ttb();
>  	uint64_t block_size;
> @@ -149,19 +150,25 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
>  	while (size) {
>  		table = ttb;
>  		for (level = 0; level < 4; level++) {
> +			bool finish = false;
>  			block_shift = level2shift(level);
>  			idx = (addr & level2mask(level)) >> block_shift;
>  			block_size = (1ULL << block_shift);
>  
>  			pte = table + idx;
>  
> -			if (size >= block_size && IS_ALIGNED(addr, block_size) &&
> -			    IS_ALIGNED(phys, block_size)) {
> +			if (force_pages) {
> +				if (level == 3)
> +					finish = true;
> +			} else if (size >= block_size && IS_ALIGNED(addr, block_size) &&
> +				   IS_ALIGNED(phys, block_size)) {
> +				finish = true;
> +			}
> +
> +			if (finish) {

Nitpick: I think code would be clearer with:

bool block_aligned = size >= block_size &&
                     IS_ALIGNED(addr, block_size) &&
                     IS_ALIGNED(phys, block_size))


if ((force_pages && level == 3) || (!force_pages && block_aligned))

>  				type = (level == 3) ?
>  					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
> -
> -				/* TODO: break-before-make missing */
> -				set_pte(pte, phys | attr | type);
> +				*pte = phys | attr | type;

create_sections is also used in situation where BBM is required.
We should also keep the volatile writes to the page tables.

Can you revert to:

/* TODO: break-before-make missing for non barebox-regions */
set_pte(pte, phys | attr | type);

So we know there is something still left to do?

Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



