Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlZfH-00037l-AE
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 09:45:08 +0000
Date: Mon, 12 Oct 2015 11:44:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012094444.GR7858@pengutronix.de>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
 <1444589021-12727-3-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444589021-12727-3-git-send-email-andrew.smirnov@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/8] arm/cpu/start.c: Distil some common code in __start().
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 11, 2015 at 11:43:36AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/start.c | 49 +++++++++++++++++++++++++++++++++++--------------
>  1 file changed, 35 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 8e5097b..7ffde7c 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -53,6 +53,18 @@ void *barebox_arm_boot_dtb(void)
>  	return barebox_boot_dtb;
>  }
>  
> +static uint32_t get_any_boarddata_magic(const void *boarddata)
> +{
> +	if (get_unaligned_be32(boarddata) == FDT_MAGIC)
> +		return FDT_MAGIC;
> +
> +	if (((struct barebox_arm_boarddata *)boarddata)->magic ==
> +	    BAREBOX_ARM_BOARDDATA_MAGIC)
> +		return BAREBOX_ARM_BOARDDATA_MAGIC;
> +
> +	return 0;
> +}
> +
>  static noinline __noreturn void __start(unsigned long membase,
>  		unsigned long memsize, void *boarddata)
>  {
> @@ -89,21 +101,30 @@ static noinline __noreturn void __start(unsigned long membase,
>  	}
>  
>  	if (boarddata) {
> -		if (get_unaligned_be32(boarddata) == FDT_MAGIC) {
> -			uint32_t totalsize = get_unaligned_be32(boarddata + 4);
> +		uint32_t totalsize;
> +		void **var = NULL;
> +		const char *name;
> +
> +		switch (get_any_boarddata_magic(boarddata)) {
> +		case FDT_MAGIC:
> +			totalsize = get_unaligned_be32(boarddata + 4);
> +			var = &barebox_boot_dtb;
> +			name = "DTB";
> +			break;
> +		case BAREBOX_ARM_BOARDDATA_MAGIC:
> +			totalsize = sizeof(struct barebox_arm_boarddata);
> +			var = &barebox_boarddata;
> +			name = "machine type";
> +			break;
> +		default:
> +			break;
> +		}
> +
> +		if (var) {
>  			endmem -= ALIGN(totalsize, 64);
> -			barebox_boot_dtb = (void *)endmem;
> -			pr_debug("found DTB in boarddata, copying to 0x%p\n",
> -					barebox_boot_dtb);
> -			memcpy(barebox_boot_dtb, boarddata, totalsize);
> -		} else if (((struct barebox_arm_boarddata *)boarddata)->magic ==
> -				BAREBOX_ARM_BOARDDATA_MAGIC) {
> -			endmem -= ALIGN(sizeof(struct barebox_arm_boarddata), 64);
> -			barebox_boarddata = (void *)endmem;
> -			pr_debug("found machine type in boarddata, copying to 0x%p\n",
> -					barebox_boarddata);
> -			memcpy(barebox_boarddata, boarddata,
> -					sizeof(struct barebox_arm_boarddata));
> +			pr_debug("found %s in boarddata, copying to 0x%lu\n",
> +				 name, endmem);
> +			*var = memcpy((void *)endmem, boarddata, totalsize);

I do not see a real improvement in this patch. The previously duplicated
code which is now shared is limited to the pr_debug message and the call
to memcpy. This is done at the cost of making the code slightly more
complicated due to the additional void **var indirection. Dropped this
patch for now. Maybe some additional cleanup or feature may make this
patch more useful, in that case I'll take it then later.

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
