Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLj99-0002PR-3P
 for barebox@lists.infradead.org; Thu, 24 May 2018 05:50:45 +0000
Date: Thu, 24 May 2018 07:50:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180524055031.3yhrutrqjtqzpyi2@pengutronix.de>
References: <20180523112150.12925-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180523112150.12925-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1] imx-usb-loader: skip image verification on iMX25
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 23, 2018 at 01:21:50PM +0200, Oleksij Rempel wrote:
> it is broken an multiple MX25 based devices and
> we have no information how to fix it.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Dropped in favour for a patch fixing the problem.

Sascha

> ---
>  scripts/imx/imx-usb-loader.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 43dde8b7f..399bc2a9c 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -72,6 +72,9 @@ struct mach_id {
>  #define DEV_IMX		0
>  #define DEV_MXS		1
>  	unsigned char dev_type;
> +	unsigned char verify_mode;
> +#define VER_DEFAULT	0
> +#define VER_SKIP	1
>  };
>  
>  struct usb_work {
> @@ -107,6 +110,7 @@ static const struct mach_id imx_ids[] = {
>  		.header_type = HDR_MX51,
>  		.mode = MODE_BULK,
>  		.max_transfer = 64,
> +		.verify_mode = VER_SKIP,
>  	}, {
>  		.vid = 0x15a2,
>  		.pid = 0x0041,
> @@ -1346,6 +1350,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  	unsigned plugin = 0;
>  	unsigned header_addr = 0;
>  	unsigned skip = 0;
> +	const struct mach_id *id = usb_id->mach_id;
>  
>  	ret = read_file(curr->filename, &buf, &fsize);
>  	if (ret < 0)
> @@ -1394,6 +1399,11 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  
>  	type = FT_APP;
>  
> +	if (id->verify_mode == VER_SKIP) {
> +		printf("Verification of flashed image is not supported. Skipping.\n");
> +		verify = 0;
> +	}
> +
>  	if (verify) {
>  		verify_buffer = malloc(64);
>  
> -- 
> 2.17.0
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
