Delivery-date: Thu, 16 Mar 2023 10:52:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pckHp-002Zz4-Lh
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 10:52:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pckHp-0006Ep-EE
	for lore@pengutronix.de; Thu, 16 Mar 2023 10:52:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VyTxtTNdPpsdFXfJ5BTGGX77IC3SLbn6FzX0QLhy1bE=; b=OUFSZY5mrH/PnHHtrGH4Ii6Uwr
	uvD4yBdWmkvT3tfhf6E+gl+gAZlNLMorUDmYILwmMyljy3pp4xQyvtFVQvRYF4llYgCW8ukFq/xNI
	rt2yOS976otsjmGUPvqm31o/WR6Gocc147PxjaxITNlAyqMx2ODcoPf+OxzVjDEfu2xQtsaa9F0WR
	n3XU0MurU5fwXm8uNDOb6QnYNcVzXRn2YQCHRQmhJsCK6240eA2lbE9Agz/H4NWgQLbfym5OOKs9E
	dCveQu5xsbmIvrWpgJDSLWjIG1zinJxmbWNFaKaC6CxH8nO9dYFoOg/1Xz702NdXkAeThGOTy2mHv
	GTmRQb0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pckGP-00FvOP-08;
	Thu, 16 Mar 2023 09:51:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pckGL-00FvMx-33
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 09:51:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pckGI-0005us-0r; Thu, 16 Mar 2023 10:51:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pckGH-00087K-Ew; Thu, 16 Mar 2023 10:51:05 +0100
Date: Thu, 16 Mar 2023 10:51:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Clement Leger <clement.leger@kalray.eu>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <20230316095105.GX7446@pengutronix.de>
References: <20230315101126.4101087-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230315101126.4101087-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_025109_985503_5D8B5837 
X-CRM114-Status: GOOD (  27.03  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: elf: use proper field to get segment memory size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 15, 2023 at 01:11:26PM +0300, Denis Orlov wrote:
> For a program header, the value of 'p_filesz' may be less than the one
> of 'p_memsz', in which case the leftover amount of space should be
> filled with zeroes. This is done correctly when loading elf to memory.
> However, when we are requesting memory beforehand we do pass the value
> of 'p_filesz', instead of 'p_memsz', to 'request_sdram_region',
> resulting in potentially smaller amount of memory to be reserved.
> 
> As 'p_memsz' is always greater or equal to 'p_filesz', use only the
> former for checking memory requirements in 'request_elf_segment'.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  common/elf.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/elf.c b/common/elf.c
> index eec62cad61..c9b3d7bb37 100644
> --- a/common/elf.c
> +++ b/common/elf.c
> @@ -59,14 +59,13 @@ static int request_elf_segment(struct elf_image *elf, void *phdr)
>  {
>  	void *dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, phdr);
>  	int ret;
> -	u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
>  	u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
>  
>  	/* we care only about PT_LOAD segments */
>  	if (elf_phdr_p_type(elf, phdr) != PT_LOAD)
>  		return 0;
>  
> -	if (!p_filesz)
> +	if (!p_memsz)
>  		return 0;
>  
>  	if (dst < elf->low_addr)
> @@ -74,9 +73,9 @@ static int request_elf_segment(struct elf_image *elf, void *phdr)
>  	if (dst + p_memsz > elf->high_addr)
>  		elf->high_addr = dst + p_memsz;
>  
> -	pr_debug("Requesting segment 0x%p (%llu bytes)\n", dst, p_filesz);
> +	pr_debug("Requesting segment 0x%p (%llu bytes)\n", dst, p_memsz);
>  
> -	ret = elf_request_region(elf, (resource_size_t)dst, p_filesz, phdr);
> +	ret = elf_request_region(elf, (resource_size_t)dst, p_memsz, phdr);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


