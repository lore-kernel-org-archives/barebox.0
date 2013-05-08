Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UaBru-0002ht-2q
 for barebox@lists.infradead.org; Wed, 08 May 2013 21:25:46 +0000
Date: Wed, 8 May 2013 23:25:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130508212527.GI32299@pengutronix.de>
References: <201305081457.07670.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201305081457.07670.jbe@pengutronix.de>
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
Subject: Re: MXS: fix SoC detecting
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 08, 2013 at 02:57:07PM +0200, Juergen Beisert wrote:
> The missing 'break' statement lets look an i.MX23 like an i.MX28.
>     
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-mxs/imx.c b/arch/arm/mach-mxs/imx.c
> index cdf9275..fcb26f7 100644
> --- a/arch/arm/mach-mxs/imx.c
> +++ b/arch/arm/mach-mxs/imx.c
> @@ -101,6 +101,7 @@ static void mxs_silicon_revision(void)
>  		case 0x3: revision = SILICON_REVISION_1_3; break;
>  		case 0x4: revision = SILICON_REVISION_1_4; break;
>  		}
> +		break;
>  	case HW_DIGCTL_CHIPID_MX28:
>  		product = "i.MX28";
>  		switch (rev) {
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
