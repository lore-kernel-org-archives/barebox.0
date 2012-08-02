Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwxKr-0008Jg-NM
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 15:29:14 +0000
Date: Thu, 2 Aug 2012 17:29:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120802152912.GD1451@pengutronix.de>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
 <1343642565-32257-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343642565-32257-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 03/12] Add pre-bootloader (pbl) image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 30, 2012 at 12:02:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +
> +	/* Setup the stack */
> +	r = STACK_BASE + STACK_SIZE - 16;
> +	__asm__ __volatile__("mov sp, %0" : : "r"(r));
> +	/* clear bss */
> +	memset(__bss_start, 0, __bss_stop - __bss_start);
> +
> +	start_barebox();
> +}
> +#else
>  void __naked __section(.text_entry) start(void)
>  {
>  	barebox_arm_head();
>  }
> +#endif
>  
>  /*
>   * The actual reset vector. This code is position independent and usually
> @@ -73,6 +97,14 @@ void __naked __bare_init reset(void)
>  	board_init_lowlevel_return();
>  }
>  
> +#ifdef __PBL__
> +void barebox_pbl(uint32_t offset)
> +{
> +}
> +#else
> +void barebox_pbl(uint32_t offset) {}
> +#endif
> +
>  /*
>   * Board code can jump here by either returning from board_init_lowlevel
>   * or by calling this function directly.
> @@ -105,8 +137,11 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
>  	/* flush I-cache before jumping to the copied binary */
>  	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
>  
> -	/* call start_barebox with its absolute address */
> -	r = (unsigned int)&start_barebox;
> -	__asm__ __volatile__("mov pc, %0" : : "r"(r));
> +	if (IS_ENABLED(CONFIG_PBL_IMAGE)) {
> +		barebox_pbl(offset);

The pbl should be called at it's absolute address, not at it's relative
address. This makes sure that the pbl code is running in a completely
valid C environment.

I fixed that before applying

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
