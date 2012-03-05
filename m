Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4bRo-0003gc-Ee
 for barebox@lists.infradead.org; Mon, 05 Mar 2012 17:11:44 +0000
Date: Mon, 5 Mar 2012 18:11:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120305171136.GW3852@pengutronix.de>
References: <1330942784-22394-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330942784-22394-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH 1/2] omap: move scale_vcores to omap4_generic
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Mon, Mar 05, 2012 at 11:19:43AM +0100, Jan Weitzel wrote:
> index c6e46e6..76cf2f5 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -419,3 +419,34 @@ enum omap_boot_src omap4_bootsrc(void)
>  		return OMAP_BOOTSRC_NAND;
>  	return OMAP_BOOTSRC_UNKNOWN;
>  }
> +
> +#define I2C_SLAVE 0x12
> +
> +noinline int scale_vcores(void)

As this is no static function anymore scale_vcores is a bit generic. Can
you add a omap4_ prefix?

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
