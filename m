Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaBrk-0002hs-2L
 for barebox@lists.infradead.org; Wed, 08 May 2013 21:25:36 +0000
Date: Wed, 8 May 2013 23:25:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508212514.GH32299@pengutronix.de>
References: <201305081421.11205.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201305081421.11205.jbe@pengutronix.de>
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
Subject: Re: [PATCH] MCI/MXS: fix signed/unsigned mismatch
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 08, 2013 at 02:21:11PM +0200, Juergen Beisert wrote:
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
> index c15461c..9dee863 100644
> --- a/drivers/mci/mxs.c
> +++ b/drivers/mci/mxs.c
> @@ -55,7 +55,7 @@ struct mxs_mci_host {
>  	unsigned	f_min;
>  	unsigned	f_max;
>  #endif
> -	int		bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
> +	unsigned	bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
>  };
>  
>  #define to_mxs_mci(mxs) container_of(mxs, struct mxs_mci_host, host)
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |
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
