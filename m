Delivery-date: Tue, 16 May 2023 12:57:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pysMj-002pqD-4W
	for lore@lore.pengutronix.de; Tue, 16 May 2023 12:57:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pysMg-00045X-OI
	for lore@pengutronix.de; Tue, 16 May 2023 12:57:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mRVfUenRM5hLDeI1oYW/UWGrkzILCgp7kuXFs06CTMM=; b=i5E5qfiR7QnI+MNw17XQA+vmP6
	hkho6CLTcOETrA8C3UrH3KXTl9yc/HCRlRSSlPWDUcmd5i24NF741g3JN6YTn8joQDKW8w38UU2kv
	rmEE47w2JdNrEy7Ia9fJJEVG0l7OnP7gdWUpxL4NoplfIZei5NPIhf20H739VxC1Di+RsGONwaeO9
	j7Vo6Kg/0P2cn6MN526q99BwrlUmi9MBTyy3a4W/fxatNYjg693/UDRiTjevtKN0H8xRXo1G8AzLU
	D1H47oyhJehOBpkl8VoirPevsd3g6Wc5kveyfeRZVqfcj6phsKaS+qeZ7tu5cadJnRwCGqweTOW2J
	JfdqimrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pysLK-005Sg3-2k;
	Tue, 16 May 2023 10:55:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pysLH-005SbA-04
	for barebox@lists.infradead.org;
	Tue, 16 May 2023 10:55:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pysLC-0003tv-DR; Tue, 16 May 2023 12:55:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pysLB-0005eP-Ki; Tue, 16 May 2023 12:55:37 +0200
Date: Tue, 16 May 2023 12:55:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230516105537.GR15436@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-28-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512111008.1120833-28-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_035543_056513_59CB347C 
X-CRM114-Status: GOOD (  26.88  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 27/27] ARM: mmu64: Use two level pagetables in early code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 12, 2023 at 01:10:08PM +0200, Sascha Hauer wrote:
> So far we used 1GiB sized sections in the early MMU setup. This has
> the disadvantage that we can't use the MMU in early code when we
> require a finer granularity. Rockchip for example keeps TF-A code
> in the lower memory so the code just skipped MMU initialization.
> Also we can't properly map the OP-TEE space at the end of SDRAM non
> executable.
> 
> With this patch we now use two level page tables and can map with 4KiB
> granularity.
> 
> The MMU setup in barebox proper changes as well. Instead of disabling
> the MMU for reconfiguration we can now keep the MMU enabled and just
> add the mappings for SDRAM banks not known to the early code.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 97 ++++++++++---------------------------------
>  1 file changed, 21 insertions(+), 76 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 4b75be621d..3f9b52bbdb 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -192,37 +193,25 @@ static void mmu_enable(void)
>  void __mmu_init(bool mmu_on)
>  {
>  	struct memory_bank *bank;
> -	unsigned int el;
> -
> -	if (mmu_on)
> -		mmu_disable();
> -
> -	ttb = alloc_pte();
> -	el = current_el();
> -	set_ttbr_tcr_mair(el, (uint64_t)ttb, calc_tcr(el, BITS_PER_VA),
> -			  MEMORY_ATTRIBUTES);
>  
> -	pr_debug("ttb: 0x%p\n", ttb);
> +	reserve_sdram_region("OP-TEE", 0xf0000000 - OPTEE_SIZE, OPTEE_SIZE);

This line shouldn't be here. I only used that for testing.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


