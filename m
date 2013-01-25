Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tynxu-0008Jq-2q
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 18:25:26 +0000
Date: Fri, 25 Jan 2013 19:25:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130125182524.GP1906@pengutronix.de>
References: <1359113609-14606-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359113609-14606-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] of: Fix of_find_node_by_path breakage
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2013 at 03:33:29PM +0400, Alexander Shiyan wrote:
> This patch fixes breakage of of_find_node_by_path when
> node not found in tree. This fault is caused, for example,
> when no aliases is present in dtb.
> 
> barebox@ConnectCore i.MX51:/ oftree -d /env/mm.dtb
> / {
>         model = "Freescale i.MX51 CCMX51";
>         compatible = "fsl,imx51-ccmx51", "fsl,imx51";
>         chosen {
>         };
>         cpus {
>                 cpu@0 {
>                         compatible = "arm,cortex-a8";
>                 };
>         };
> };
> barebox@ConnectCore i.MX51:/ oftree -p /env/mm.dtb
> unable to handle NULL pointer dereference at address 0x00000000
> pc : [<97f1f3f0>]    lr : [<97f19438>]
> sp : 95eff988  ip : 00000001  fp : 97f43080
> r10: 00000000  r9 : 97f4304c  r8 : 00000000
> r7 : 00000000  r6 : e3510034  r5 : 00000001  r4 : 95f0eb28
> r3 : 97f43054  r2 : 00000000  r1 : e1a0000b  r0 : 00000000
> Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
> 
> no stack data available
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  drivers/of/base.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 7a41618..576841d 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -487,9 +487,9 @@ struct device_node *of_find_node_by_path(const char *path)
>  
>  	list_for_each_entry(np, &allnodes, list) {
>  		if (np->full_name && (strcmp(np->full_name, path) == 0))
> -			break;
> +			return np;
>  	}
> -	return np;
> +	return NULL;
>  }
>  EXPORT_SYMBOL(of_find_node_by_path);
>  
> -- 
> 1.7.3.4
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
