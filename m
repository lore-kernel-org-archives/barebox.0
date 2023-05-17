Delivery-date: Wed, 17 May 2023 15:09:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGtw-004Jxh-Em
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:09:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGtt-0003DA-VN
	for lore@pengutronix.de; Wed, 17 May 2023 15:09:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w0uRClvopS+0ly1JCdXX1edAqd3uncSGYfbZst+iv8E=; b=nt1EAXj6ED2YxoQacicexy/W4A
	FAhq+VP/Y/zuhVb8TCmd7ksdz39QVWfqC3Ssmgx58UGottk/DUCBmI2D4oUs3t8C2R4CgFifSVOog
	UrNMGi8kOKONr6kjWmbcQsI/9ztHWkrOrKEpK9y7iFRsEsgKgA52Cns80jOHmutzWYmILsn94PkBN
	2Uy7sKGW1Xl/8WH9DkAJWoxRnz+lDzcFjWgZsM7/d+TkNEqsLpeTEpZQGKWaX40P2Hd7DN8CQxv9D
	cU3PBh8EQeAzPjm5TxbFkBAVD62cj2LRKRfSriV4666fJI2jLtxFnBRsW26PB1LTcOM9knwbLp0bv
	FvHqnVrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGss-009tcs-15;
	Wed, 17 May 2023 13:08:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGso-009tcP-11
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:07:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGsl-00033v-FB; Wed, 17 May 2023 15:07:56 +0200
Message-ID: <0ecc83c7-dba6-e6d0-9332-d0d21d1d450d@pengutronix.de>
Date: Wed, 17 May 2023 15:07:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-23-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-23-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_060758_353248_E6AB520D 
X-CRM114-Status: GOOD (  25.72  )
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
Subject: Re: [PATCH v2 22/34] ARM: mmu32: create alloc_pte()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> This is a preparation for using two level page tables in the PBL.
> To do that we need a way to allocate page tables in PBL. As malloc
> is not available in PBL, implement a function to allocate a page table
> from the area we also place the TTB.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_32.c | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
> index 4050d96846..a82382ad1e 100644
> --- a/arch/arm/cpu/mmu_32.c
> +++ b/arch/arm/cpu/mmu_32.c
> @@ -76,6 +76,27 @@ static bool pgd_type_table(u32 pgd)
>  	return (pgd & PMD_TYPE_MASK) == PMD_TYPE_TABLE;
>  }
>  
> +#define PTE_SIZE       (PTRS_PER_PTE * sizeof(u32))
> +
> +#ifdef __PBL__
> +static uint32_t *alloc_pte(void)
> +{
> +	static unsigned int idx = 3;

Can you add a comment explaining the choice of initial index?

> +
> +	idx++;

I know it's a quite construed example, but if one calls alloc_pte
often enough, it will start returning non-NULL pointers after
having returned NULL before. 

> +
> +	if (idx * PTE_SIZE >= ARM_EARLY_PAGETABLE_SIZE)
> +		return NULL;
> +
> +	return (void *)ttb + idx * PTE_SIZE;

To address above point, just replace idx with idx++ (and 3 with 4?).

> +}
> +#else
> +static uint32_t *alloc_pte(void)
> +{
> +	return xmemalign(PTE_SIZE, PTE_SIZE);
> +}
> +#endif
> +
>  static u32 *find_pte(unsigned long adr)
>  {
>  	u32 *table;
> @@ -125,8 +146,7 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
>  
>  	virt = ALIGN_DOWN(virt, PGDIR_SIZE);
>  
> -	table = xmemalign(PTRS_PER_PTE * sizeof(u32),
> -			  PTRS_PER_PTE * sizeof(u32));
> +	table = alloc_pte();
>  
>  	if (!ttb)
>  		arm_mmu_not_initialized_error();

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



