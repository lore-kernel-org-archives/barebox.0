Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVeGA-0008Py-9W
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 09:16:19 +0000
Date: Mon, 14 Oct 2013 11:15:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131014091556.GC30088@pengutronix.de>
References: <1380743134.7042.4.camel@polaris.local>
 <1381151887-26837-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1381151887-26837-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] i2c-omap: fix reported revison
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 07, 2013 at 03:18:07PM +0200, Jan Weitzel wrote:
> Report correct major and minor revision
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  drivers/i2c/busses/i2c-omap.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index bec3b29..8e31ef4 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -1079,7 +1079,7 @@ i2c_omap_probe(struct device_d *pdev)
>  	omap_i2c_init(i2c_omap);
>  
>  	dev_info(pdev, "bus %d rev%d.%d at %d kHz\n",
> -		 pdev->id, i2c_omap->rev >> 4, i2c_omap->rev & 0xf, i2c_omap->speed);
> +		 pdev->id, major, minor, i2c_omap->speed);
>  
>  	omap_i2c_idle(i2c_omap);
>  
> -- 
> 1.7.0.4
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
