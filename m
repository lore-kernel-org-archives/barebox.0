Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ePkku-0006Os-27
 for barebox@lists.infradead.org; Fri, 15 Dec 2017 07:50:06 +0000
Date: Fri, 15 Dec 2017 08:49:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171215074942.7uptifeszea6r6hc@pengutronix.de>
References: <1513266675-49103-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1513266675-49103-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH] ARM: boards: phytec-som-am335x: Fallback ram timings
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

On Thu, Dec 14, 2017 at 04:51:15PM +0100, Daniel Schultz wrote:
> The 'get_ram_size' function can return false values with 1GB RAMs during
> warm reset. If a not-existing RAM size will be returned, the fallback
> RAM timings get loaded to prevent hangs.

Just continuing with wrong ram size and fallback timing is not really an
option. It doesn't help the user and only changes the bug reports you
get.

Sascha

> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/boards/phytec-som-am335x/lowlevel.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
> index b1576ee..5030966 100644
> --- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
> @@ -174,8 +174,9 @@ static noinline void physom_board_init(void *fdt, int sdram, int module_family)
>  		/* Find the ram size and set up the correct ram timings */
>  		ramsize = get_ram_size((long *) 0x80000000, SZ_1G);
>  		timing = get_timings_by_size(module_family, ramsize);
> +		/* In case of a failure, load generic ram timings as fallback */
>  		if (!timing)
> -			hang();
> +			timing = get_minimal_timings(module_family);
>  	}
>  
>  	am335x_sdram_init(DDR_IOCTRL, &physom_cmd,
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
