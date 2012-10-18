Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOkaY-0002Qw-Ie
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 07:32:19 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F3EF3FF8A9F
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 09:41:45 +0200 (CEST)
Date: Thu, 18 Oct 2012 09:29:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121018072959.GD22418@game.jcrosoft.org>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
 <1350507817-7819-21-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350507817-7819-21-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 20/28] ARM pbl: Call uncompressed binary with arguments
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:03 Wed 17 Oct     , Sascha Hauer wrote:
> This puts the code from barebox_uncompress inline into
> the caller. Also we now call the uncompressed binary
> with the memory and boarddata arguments, so everything
> is ready for the uncompressed image to pick up the
> values.
can we use atags / dt and machine_id

it more flexible and allow us to be called as a kernel

Best Regards,
J.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/start-pbl.c |   64 +++++++++++++++++++---------------------------
>  1 file changed, 27 insertions(+), 37 deletions(-)
> 
> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> index e612d51..751e4fa 100644
> --- a/arch/arm/cpu/start-pbl.c
> +++ b/arch/arm/cpu/start-pbl.c
> @@ -120,47 +120,13 @@ void noinline errorfn(char *error)
>  	while (1);
>  }
>  
> -static void barebox_uncompress(void *compressed_start, unsigned int len)
> -{
> -	void (*barebox)(void);
> -	/*
> -	 * remap_cached currently does not work rendering the feature
> -	 * of enabling the MMU in the PBL useless. disable for now.
> -	 */
> -	int use_mmu = 0;
> -
> -	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> -	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
> -	free_mem_end_ptr = free_mem_ptr + SZ_128K;
> -
> -	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
> -
> -	if (use_mmu)
> -		mmu_enable((unsigned long)compressed_start, len);
> -
> -	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
> -		barebox = (void *)(TEXT_BASE + 1);
> -	else
> -		barebox = (void *)TEXT_BASE;
> -
> -	decompress((void *)compressed_start,
> -			len,
> -			NULL, NULL,
> -			(void *)TEXT_BASE, NULL, errorfn);
> -
> -	if (use_mmu)
> -		mmu_disable();
> -
> -	flush_icache();
> -
> -	barebox();
> -}
> -
>  static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
>  		uint32_t boarddata)
>  {
> +	void (*barebox)(uint32_t, uint32_t, uint32_t);
>  	uint32_t offset;
>  	uint32_t pg_start, pg_end, pg_len;
> +	int use_mmu = 0;
>  
>  	/* Get offset between linked address and runtime address */
>  	offset = get_runtime_offset();
> @@ -180,7 +146,31 @@ static noinline void __barebox_arm_entry(uint32_t membase, uint32_t memsize,
>  
>  	setup_c();
>  
> -	barebox_uncompress((void *)pg_start, pg_len);
> +	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> +	free_mem_ptr = membase + memsize - SZ_256K;
> +	free_mem_end_ptr = free_mem_ptr + SZ_128K;
> +
> +	ttb = (void *)((free_mem_ptr - 0x4000) & ~0x3fff);
> +
> +	if (use_mmu)
> +		mmu_enable(membase, memsize);
> +
> +	decompress((void *)pg_start,
> +			pg_len,
> +			NULL, NULL,
> +			(void *)TEXT_BASE, NULL, errorfn);
> +
> +	if (use_mmu)
> +		mmu_disable();
> +
> +	flush_icache();
> +
> +	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
> +		barebox = (void *)(TEXT_BASE + 1);
> +	else
> +		barebox = (void *)TEXT_BASE;
> +
> +	barebox(membase, memsize, boarddata);
>  }
>  
>  /*
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
