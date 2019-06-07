Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ8ow-0002cX-IO
 for barebox@lists.infradead.org; Fri, 07 Jun 2019 06:57:52 +0000
Date: Fri, 7 Jun 2019 08:57:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190607065748.dmpy6bya2edpm5og@pengutronix.de>
References: <20190605174728.27612-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605174728.27612-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] scripts: imx-usb-loader: add i.MX8MQ PID and VID
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 05, 2019 at 07:47:28PM +0200, Rouven Czerwinski wrote:
> Add new PID and VID for i.MX8:
> Bus 001 Device 057: ID 1fc9:012b NXP Semiconductors i.MX 8M Dual/8M QuadLite/8M Quad Serial Downloader
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index d4fba0ce54..e3d3b8fce1 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -185,6 +185,13 @@ static const struct mach_id imx_ids[] = {
>  		.header_type = HDR_MX53,
>  		.mode = MODE_HID,
>  		.max_transfer = 1024,
> +	}, {
> +		.vid = 0x1fc9,
> +		.pid = 0x012b,
> +		.name = "i.MX8M",
> +		.header_type = HDR_MX53,
> +		.mode = MODE_HID,
> +		.max_transfer = 1024,
>  	},
>  };
>  
> -- 
> 2.21.0
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
