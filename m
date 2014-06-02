Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrMA6-0005DT-T8
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 06:56:03 +0000
Date: Mon, 2 Jun 2014 08:55:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602065540.GR15686@pengutronix.de>
References: <assp.0226f60ff0.1401367479-16179-1-git-send-email-matteo.fortini@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <assp.0226f60ff0.1401367479-16179-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: Re: [PATCH V2] sama5d3x: fix AT91_SMC_CS offset stride
To: Matteo Fortini <matteo.fortini@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 29, 2014 at 02:44:39PM +0200, Matteo Fortini wrote:
> As stated in section 29.19.32 of SAMA5D3 Series datasheet, to move
> from CS(n) to CS(n+1) the stride is 0x14 and not 0x10 as in the
> other AT91 CPUs
> 
> Signed-off-by: Matteo Fortini <matteo.fortini@gmail.com>
> ---
>  arch/arm/mach-at91/sam9_smc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
> index a137da4..6dd3797 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -12,11 +12,13 @@
>  #include <init.h>
>  #include <io.h>
>  #include <mach/hardware.h>
> +#include <mach/cpu.h>
>  #include <mach/io.h>
>  
>  #include <mach/at91sam9_smc.h>
>  
> -#define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x10))
> +#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3)?0x14:0x10)

We follow the kernel Coding Style, so operators need whitespaces left
and right of them, so cond ? 0x14 : 0x10. Fixed this while applying.

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
