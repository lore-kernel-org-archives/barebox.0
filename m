Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6Ug4-0001Rf-Tw
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 08:35:21 +0000
Date: Mon, 1 Feb 2021 09:33:07 +0100
Message-ID: <20210201083307.GI19583@pengutronix.de>
References: <20210131203843.3459595-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210131203843.3459595-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] of: overlay: fix warning about format specifier in debug
 message
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Sun, Jan 31, 2021 at 09:38:43PM +0100, Ahmad Fatoum wrote:
> GCC catches a -Wformat-extra-args. Fix it.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/of/overlay.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index e2a68b0ae8bd..8f4ee3f0a245 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -223,7 +223,7 @@ int of_process_overlay(struct device_node *root,
>  
>  		target = find_target(root, fragment);
>  		if (!target)
> -			pr_debug("cannot find target for fragment",
> +			pr_debug("cannot find target for fragment %s\n",
>  				 fragment->name);
>  
>  		err = process(target, ovl, data);
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
