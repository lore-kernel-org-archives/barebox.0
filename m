Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gA9HS-0003Jq-5M
 for barebox@lists.infradead.org; Wed, 10 Oct 2018 07:52:34 +0000
Date: Wed, 10 Oct 2018 09:51:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181010075129.u67xfq247pmn7sfb@pengutronix.de>
References: <20181004070400.12338-1-Denis.Osterland@diehl.com>
 <20181005065537.21844-1-Denis.Osterland@diehl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181005065537.21844-1-Denis.Osterland@diehl.com>
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
Subject: Re: [PATCH v2] hab: Print events on info command.
To: Denis OSTERLAND <denis.osterland@diehl.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Denis,

On Fri, Oct 05, 2018 at 06:58:04AM +0000, Denis OSTERLAND wrote:
> From: Denis Osterland <Denis.Osterland@diehl.com>
> 
> This patch adds hab_get_status convenience function
> and uses it in hab info command.
> It returns -EIO if MMU is disabled and -ENXIO if no HAB device
> is available.
> 
> Signed-off-by: Denis Osterland <Denis.Osterland@diehl.com>
> ---
> v1 -> v2: use runtime if, as suggested by Andrey Smirnov,
>           add hab_get_status to have hab implementation
>           selection at a central place
> 
>  commands/hab.c |  3 +++
>  include/hab.h  | 15 +++++++++++++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/commands/hab.c b/commands/hab.c
> index 0d7ee8e76..af51e73fc 100644
> --- a/commands/hab.c
> +++ b/commands/hab.c
> @@ -72,6 +72,9 @@ static int do_hab(int argc, char *argv[])
>  		else
>  			printf("devel mode\n");
>  
> +		if (hab_get_status() == -EIO)
> +			printf("Disable MMU to access HAB API!\n");
> +
>  		return 0;
>  	}
>  
> diff --git a/include/hab.h b/include/hab.h
> index 78c2b865b..7c2ffab5e 100644
> --- a/include/hab.h
> +++ b/include/hab.h
> @@ -19,6 +19,7 @@
>  #define __HABV4_H
>  
>  #include <errno.h>
> +#include <mach/generic.h>
>  
>  #ifdef CONFIG_HABV4
>  int imx28_hab_get_status(void);
> @@ -43,6 +44,20 @@ static inline int imx25_hab_get_status(void)
>  }
>  #endif
>  
> +static inline int hab_get_status(void)
> +{
> +	if (IS_ENABLED(CONFIG_MMU))
> +		return -EIO;

This restriction makes this patch rather unhandy to use. Internally we
use imx*_hab_get_status() indeed with MMU enabled and it works fine, but
we call it before mmu_init is called. In this state the MMU is enabled
already, but the zero page is not yet set to faulting. So I think the
problem is not the MMU as such, but instead the faulting zero page.

It would be great if we could overcome this issue. One way to do this
would be to add a function pair mmu_zero_page_map() and
mmu_zero_page_set_faulting() to be called in hab_get_status().

I don't know if you are willing to add that, but I don't want to
motivate people to disable the MMU, so the patch is not acceptable as
is.

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
