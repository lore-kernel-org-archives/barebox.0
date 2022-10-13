Delivery-date: Thu, 13 Oct 2022 12:38:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oivbc-007G5T-OY
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 12:38:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oivba-0006wm-Lm
	for lore@pengutronix.de; Thu, 13 Oct 2022 12:38:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bJfY8+rAuIwySo2wjujl9NHl0vn0sATE8Q/S3pummaI=; b=EmR2FvpLU192bGjmHCa1nZHZHO
	QrscG3EVMq/xjASdhhsxN76mxY84ErCcTVJN3TgYSGgNsigEdVUSInzofjCPdGSh5TJyLqzDdvU+y
	u+tcnS7mZv1MtKVepE5dAHzYudAU5Mgceodj0UsXqfcwPpPHeQsjcLkON+nxM8OovOtOtX3vK3jGJ
	Tv7uwW39JXvRb9tmHTaxxnS8EoBzjxCvGyPbDUrXMKcq9loION+novUBZF+juIHsZhTA6HlN2nEPf
	+YvJbqYsqMyZD2m7XPpPjeURf71fxqGR2t9tY3xHdohokzRLv4PwvH/KKolrICBG5wq8Y0DYQ7ayF
	jagQERnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oivZq-00BQwj-VS; Thu, 13 Oct 2022 10:36:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oivZl-00BQve-Ro
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 10:36:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oivZi-0006qw-Bg
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 12:36:26 +0200
Message-ID: <5646a232-b4f7-75c9-31ba-128c49ba73ff@pengutronix.de>
Date: Thu, 13 Oct 2022 12:36:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20221013090352.562170-1-a.fatoum@pengutronix.de>
 <20221013090352.562170-4-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221013090352.562170-4-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_033629_926392_A14D16A6 
X-CRM114-Status: GOOD (  21.95  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 3/3] RISC-V: add compiler barriers around
 unrelocated accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 13.10.22 11:03, Ahmad Fatoum wrote:
> We observed on ARM miscompilation because get_runtime_offset() was
> cached before relocation, while address computation of symbol happened
> after, effectively adding the base address twice to the symbol offset.
> 
> New get_unrelocated() hides origin of the symbol going into the address
> calculation and thereby thwarts this optimization. Employ it in RISC-V
> code as well to avoid such issues as experienced on ARM.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/riscv/boot/uncompress.c      | 4 ++--
>  arch/riscv/include/asm/sections.h | 2 +-
>  arch/riscv/lib/reloc.c            | 6 +++---
>  3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> index ee24f81e0159..eab51c8d52bc 100644
> --- a/arch/riscv/boot/uncompress.c
> +++ b/arch/riscv/boot/uncompress.c
> @@ -36,8 +36,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	irq_init_vector(riscv_mode());
>  
>  	/* piggy data is not relocated, so determine the bounds now */
> -	pg_start = input_data + get_runtime_offset();
> -	pg_end = input_data_end + get_runtime_offset();
> +	pg_start = get_unrelocated(input_data);
> +	pg_end = get_unrelocated(input_data_end);
>  	pg_len = pg_end - pg_start;
>  	uncompressed_len = input_data_len();
>  
> diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
> index 6673648bcd58..b90f4d6d2ad5 100644
> --- a/arch/riscv/include/asm/sections.h
> +++ b/arch/riscv/include/asm/sections.h
> @@ -19,7 +19,7 @@ unsigned long get_runtime_offset(void);
>  
>  static inline unsigned int input_data_len(void)
>  {
> -	return get_unaligned((const u32 *)(input_data_end + get_runtime_offset() - 4));
> +	return get_unaligned((const u32 *)get_unrelocated(input_data_end) - 1);
>  }
>  
>  #endif
> diff --git a/arch/riscv/lib/reloc.c b/arch/riscv/lib/reloc.c
> index 13118a9ac54f..1dddf627d0b9 100644
> --- a/arch/riscv/lib/reloc.c
> +++ b/arch/riscv/lib/reloc.c
> @@ -42,9 +42,9 @@ void relocate_to_current_adr(void)
>  	if (!offset)
>  		return;
>  
> -	dstart = __rel_dyn_start + offset;
> -	dend = __rel_dyn_end + offset;
> -	dynsym = (void *)__dynsym_start + offset;
> +	dstart = get_unrelocated(__rel_dyn_start);
> +	dend = get_unrelocated(__rel_dyn_end);
> +	dynsym = get_unrelocated(__dynsym_start) + offset;

Ouch, + offset shouldn't be here. Will fix for v2.

>  
>  	for (rela = dstart; (void *)rela < dend; rela++) {
>  		unsigned long *fixup;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


