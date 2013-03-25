Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UK6sZ-0007Fb-0r
 for barebox@lists.infradead.org; Mon, 25 Mar 2013 12:52:00 +0000
Date: Mon, 25 Mar 2013 13:51:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130325125156.GD1906@pengutronix.de>
References: <1363880198-21029-1-git-send-email-alexandre.belloni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1363880198-21029-1-git-send-email-alexandre.belloni@free-electrons.com>
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
Subject: Re: [PATCH] cfa10036: Retrieve the RAM size at runtime
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: barebox@lists.infradead.org, Maxime Ripard <maxime.ripard@free-electrons.com>

On Thu, Mar 21, 2013 at 04:36:38PM +0100, Alexandre Belloni wrote:
> The cfa-10036 comes in two flavours, with either 128MB or 256MB of RAM
> on it.
> 
> Since it's not stored anywhere, we need to runtime detect it by
> introducing the cfa10036_get_ram_size function which is similar to
> get_ram_size. As we run from RAM, we can then use _text and __bss_stop
> to prevent poking in the barebox memory which is not supported on other
> platforms.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
> Cc: Maxime Ripard <maxime.ripard@free-electrons.com>
> ---
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   72 +++++++++++++++++++++-
>  1 file changed, 71 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> index 1bc20cf..37cc17e 100644
> --- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> +++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
> @@ -39,6 +39,8 @@
>  #include <asm/armlinux.h>
>  #include <asm/mmu.h>
>  
> +#include <asm-generic/sections.h>
> +
>  #include <mach/fb.h>
>  
>  #include <generated/mach-types.h>
> @@ -90,9 +92,77 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata = {
>  	.udelay			= 5,		/* ~100 kHz */
>  };
>  
> +/*
> + * Copied from get_ram_size in common/memory.c
> + */
> +long cfa10036_get_ram_size(volatile long *base, long maxsize)
> +{

When I asked for a local version of this function I had something like
this in mind, not a complete copy of the function.

	volatile u32 *base = (void *)IMX_MEMORY_BASE;
	volatile u32 *ofs = base + SZ_128M;

	*base = *ofs = 0xdeadbeef;

	*ofs = 0x11223344;
	if (*base == 0x11223344)
		return SZ_128M;
	else
		return SZ_256M;


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
