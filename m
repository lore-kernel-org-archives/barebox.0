Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL3Ay-0000Id-OC
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 06:52:45 +0000
Date: Thu, 7 Jul 2016 08:52:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707065222.GW20657@pengutronix.de>
References: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
 <1467830680-5909-3-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467830680-5909-3-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 3/7] video: displaytimings: don't double free display
 timings
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 06, 2016 at 08:44:36PM +0200, Lucas Stach wrote:
> display_timings_release() already frees the disp struct, make sure
> to not try to free it again in case of an error.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  drivers/video/of_display_timing.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/video/of_display_timing.c b/drivers/video/of_display_timing.c
> index 6a5bf62..6532dd5 100644
> --- a/drivers/video/of_display_timing.c
> +++ b/drivers/video/of_display_timing.c
> @@ -163,7 +163,8 @@ struct display_timings *of_get_display_timings(struct device_node *np)
>  			 */
>  			pr_err("%s: error in timing %d\n",
>  				np->full_name, disp->num_modes + 1);
> -			goto timingfail;
> +			display_timings_release(disp);
> +			return NULL;
>  		}
>  
>  		mode->name = xstrdup(entry->name);
> @@ -180,8 +181,6 @@ struct display_timings *of_get_display_timings(struct device_node *np)
>  
>  	return disp;
>  
> -timingfail:
> -	display_timings_release(disp);
>  entryfail:
>  	free(disp);

Can't we just always use display_timings_release() instead of free?

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
