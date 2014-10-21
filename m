Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgXMe-0001Qo-Sm
 for barebox@lists.infradead.org; Tue, 21 Oct 2014 11:12:33 +0000
Date: Tue, 21 Oct 2014 13:12:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141021111210.GP14443@pengutronix.de>
References: <1413828930-12536-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413828930-12536-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] reset_source: add thermal reset
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 20, 2014 at 08:15:29PM +0200, Lucas Stach wrote:
> Some SoCs are able to detect if they got reset
> in response to an overtemperature event.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks

Sascha

> ---
>  common/reset_source.c  | 1 +
>  include/reset_source.h | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/common/reset_source.c b/common/reset_source.c
> index 6026af1..946670b 100644
> --- a/common/reset_source.c
> +++ b/common/reset_source.c
> @@ -25,6 +25,7 @@ static const char * const reset_src_names[] = {
>  	[RESET_WDG] = "WDG",
>  	[RESET_WKE] = "WKE",
>  	[RESET_JTAG] = "JTAG",
> +	[RESET_THERM] = "THERM",
>  };
>  
>  static enum reset_src_type reset_source;
> diff --git a/include/reset_source.h b/include/reset_source.h
> index bff7f97..6620228 100644
> --- a/include/reset_source.h
> +++ b/include/reset_source.h
> @@ -20,6 +20,7 @@ enum reset_src_type {
>  	RESET_WDG,	/* watchdog */
>  	RESET_WKE,	/* wake-up (some SoCs can handle this) */
>  	RESET_JTAG,	/* JTAG reset */
> +	RESET_THERM,	/* SoC shut down because of overtemperature */
>  };
>  
>  #ifdef CONFIG_RESET_SOURCE
> -- 
> 1.9.3
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
