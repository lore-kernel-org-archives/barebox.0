Delivery-date: Tue, 20 Apr 2021 11:12:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYmQN-0008LL-Mb
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 11:12:03 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYmQM-0004HC-PU
	for lore@pengutronix.de; Tue, 20 Apr 2021 11:12:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fByTxrsnuUddlxbPfDMplYb9M6eDahu5pgTiXZEO13s=; b=Dr7XJMWaGDiA1bB+dScFvGHi8
	Ns1s0GdJFmZhXZDe8nSwo06Vb5zKMxCA9f23BI6t2CvyIEfnkIMVEvCc/dRXF0iMS1FzCkoPcZoIP
	rDXs1OeCnVZtq6pHwuiAasL+IG71D7C6qimpW1eOX+LZY2YNc0rCgAm/9xFn9/vEM9K7vUotF407w
	0nGHY1t+fylBca0FRP70CLOhpuKvEpKS7q6AGCo8veaU/0OWPtAVfsrUkqBecvLoqCJRGZjbME3gY
	d2C3lR1+u0obYG5FCZ1gvDRoqra9Uvuxhj2VqJkUApTcPlZ1kFtVw0F7Nf8rLZp9+idU/Y/3LWREb
	HVUzWZseg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYmP7-00Bg2v-8h; Tue, 20 Apr 2021 09:10:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmO4-00Bftj-79
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 09:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=xN9oiBUNI4m8jwV858iAvVwI7IL+SYG23aA1O8Rclfw=; b=bH0CVGyxn0hmx++W36vVXlwwQQ
 UnsJw5vk1LEvd0lP9g1rRjNkJBaq3RwDMxpkrjb1AAg6e664yC5wKqeoU6OT2PhHG25DPBjkivgPf
 i/u3MbLcbkmV4JnfPTUr4oK/BZQj3Ilj2AiOO1xR+dXKVl+kh07iORqaFKgw9wo2FYKiotz4diiqr
 96Ka77yfSXRi3Z92PEkOsFvysUqqSZDCA9nCPFaxDDzzUAfBK2/lY87NtVBUgLpHq+ZJIFOq9aUEW
 9sCwiSgtWBY8LbhDWuYXI35tuxbiu1FvBQCWhX8u4LV41VQxbYP0Hy8V2A6Tvritt8dyIh+yGXFff
 bNZF3DMA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmO1-00BxPz-Dv
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 09:09:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lYmNz-0003hU-S9; Tue, 20 Apr 2021 11:09:35 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
 <20210420075700.246124-3-r.czerwinski@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ade2db02-9ced-a831-81f6-9b2d391973d6@pengutronix.de>
Date: Tue, 20 Apr 2021 11:09:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210420075700.246124-3-r.czerwinski@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_020937_501081_8B1FD7A0 
X-CRM114-Status: GOOD (  31.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/8] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 20.04.21 09:56, Rouven Czerwinski wrote:
> Use the information from the reserved memory entries to modify the
> mapping of memory regions to mark them as uncachable and not-executable.
> This also prevents the processor from speculating into these regions,
> preventing hard to debug scenarios where boots fail for unknown reasons.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/cpu/mmu.c | 60 ++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 58 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 6af228505d..71d6cad1ef 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -17,6 +17,7 @@
>  #include <memory.h>
>  #include <asm/system_info.h>
>  #include <asm/sections.h>
> +#include <of.h>
>  
>  #include "mmu.h"
>  
> @@ -387,6 +388,57 @@ static void vectors_init(void)
>  	create_vector_table(ARM_LOW_VECTORS);
>  }
>  
> +static void create_sections_with_intersect(struct memory_bank *bank)
> +{
> +	int i;
> +	unsigned flag;

u32 pmd_flags fits the intent better.

> +	struct of_reserve_map *res_map = of_get_reserve_map();

Drop this call. It's overwritten later.

> +	unsigned long j_end;
> +	unsigned long end;
> +	unsigned long j;
> +
> +	res_map = of_get_reserve_map();
> +	if (!res_map)

Check unneeded, you never enter here if !of_get_reserve_map() anyway.

> +		return;
> +
> +	end = bank->start + bank->size - 1;
> +	j = bank->start;
> +
> +	while(j < end) {

Missing space after while. Same for if() a few lines down.
IMO a for loop would be clearer here.

> +		flag = PMD_SECT_DEF_CACHED;
> +		j_end = j + PGDIR_SIZE - 1;
> +
> +		for (i = 0; i < res_map->num_entries; i++) {
> +			if(BIT(i) & res_map->xn && (j_end >= res_map->start[i] &&

Always wrap bitwise comparisons in parenthesis. Doesn't matter for code
correctness here however. The parens for the && stuff can be dropped.

> +						    j_end <= res_map->end[i]))

What about a section that starts in a reserved region, but doesn't end in one?
This wouldn't be considered here, would it?

> +				flag = PMD_SECT_DEF_UNCACHED | PMD_SECT_XN;
> +		}
> +
> +		create_sections(ttb, j, j_end, flag);
> +		j += PGDIR_SIZE;
> +	}
> +}
> +
> +static bool intersects_reserved_map_xn(struct memory_bank *bank)
> +{
> +	struct of_reserve_map *res_map;
> +	unsigned long bank_end;
> +	int i;
> +
> +	res_map = of_get_reserve_map();
> +
> +	if (!res_map)

Also early-exit if !res_map->xn.

> +		return false;
> +
> +	bank_end = bank->start + bank->size;

band_end is one past the end here...

> +	for (i = 0; i < res_map->num_entries; i++) {
> +		if(res_map->start[i] >= bank->start || res_map->end[i] <= bank_end)

So this should read < bank_end.

> +			return true;
> +	}
> +	return false;
> +}
> +
> +
>  /*
>   * Prepare MMU for usage enable it.
>   */
> @@ -448,8 +500,12 @@ void __mmu_init(bool mmu_on)
>  	vectors_init();
>  
>  	for_each_memory_bank(bank) {
> -		create_sections(ttb, bank->start, bank->start + bank->size - 1,
> -				PMD_SECT_DEF_CACHED);
> +		if (intersects_reserved_map_xn(bank)) {

I think it would be cleaner to remove this check here and just have one section
creation function. You can check whether there are any XN sections and if any
XN sections are intersecting at the start and then just have a flag you check
in the loop to skip the section search


> +			create_sections_with_intersect(bank);
> +		} else {
> +			create_sections(ttb, bank->start, bank->start + bank->size - 1,
> +					PMD_SECT_DEF_CACHED);
> +		}
>  		__mmu_cache_flush();
>  	}
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

