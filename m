Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c8jbJ-00013G-Vk
 for barebox@lists.infradead.org; Mon, 21 Nov 2016 08:05:19 +0000
Date: Mon, 21 Nov 2016 09:04:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161121080455.prh2do7l5gfwulhj@pengutronix.de>
References: <1479713713-17241-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1479713713-17241-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/2] scripts: imx imx-usb-loader: sort USB id list
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 21, 2016 at 08:35:12AM +0100, Alexander Kurz wrote:
> For better readability sort the list of known USB ids by VID and PID.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  scripts/imx/imx-usb-loader.c | 56 ++++++++++++++++++++++----------------------
>  1 file changed, 28 insertions(+), 28 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index c0aaa7d..fb80e0e 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -84,6 +84,34 @@ struct mach_id imx_ids[] = {
>  		.mode = MODE_BULK,
>  	}, {
>  		.vid = 0x15a2,
> +		.pid = 0x0030,
> +		.name = "i.MX35",
> +		.header_type = HDR_MX51,
> +		.mode = MODE_BULK,
> +		.max_transfer = 64,
> +	}, {
> +		.vid = 0x15a2,
> +		.pid = 0x003a,
> +		.name = "i.MX25",
> +		.header_type = HDR_MX51,
> +		.mode = MODE_BULK,
> +		.max_transfer = 64,
> +	}, {
> +		.vid = 0x15a2,
> +		.pid = 0x0041,
> +		.name = "i.MX51",
> +		.header_type = HDR_MX51,
> +		.mode = MODE_BULK,
> +		.max_transfer = 64,
> +	}, {
> +		.vid = 0x15a2,
> +		.pid = 0x004e,
> +		.name = "i.MX53",
> +		.header_type = HDR_MX53,
> +		.mode = MODE_BULK,
> +		.max_transfer = 512,
> +	}, {
> +		.vid = 0x15a2,
>  		.pid = 0x004f,
>  		.name = "i.MX28",
>  	}, {
> @@ -121,34 +149,6 @@ struct mach_id imx_ids[] = {
>  		.header_type = HDR_MX53,
>  		.mode = MODE_HID,
>  		.max_transfer = 1024,
> -	}, {
> -		.vid = 0x15a2,
> -		.pid = 0x0041,
> -		.name = "i.MX51",
> -		.header_type = HDR_MX51,
> -		.mode = MODE_BULK,
> -		.max_transfer = 64,
> -	}, {
> -		.vid = 0x15a2,
> -		.pid = 0x004e,
> -		.name = "i.MX53",
> -		.header_type = HDR_MX53,
> -		.mode = MODE_BULK,
> -		.max_transfer = 512,
> -	}, {
> -		.vid = 0x15a2,
> -		.pid = 0x0030,
> -		.name = "i.MX35",
> -		.header_type = HDR_MX51,
> -		.mode = MODE_BULK,
> -		.max_transfer = 64,
> -	}, {
> -		.vid = 0x15a2,
> -		.pid = 0x003a,
> -		.name = "i.MX25",
> -		.header_type = HDR_MX51,
> -		.mode = MODE_BULK,
> -		.max_transfer = 64,
>  	},
>  };
>  
> -- 
> 2.1.4
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
