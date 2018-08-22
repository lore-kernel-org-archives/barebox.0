Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsN8q-0005VV-Op
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:01:22 +0000
Date: Wed, 22 Aug 2018 09:01:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822070108.balrgkhkrurrmxo2@pengutronix.de>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-19-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062603.17393-19-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 18/22] ARM: i.MX: bbu: Adjust error code check for pwrite()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:25:59PM -0700, Andrey Smirnov wrote:
> Pwrite() will return the amount bytes written or negative error code
> on success, so we need to do two things with it:
> 
>     1. Check it against "image_len" to make sure we actually wrote all
>        of the data
> 
>     2. Set it to zero in case of success, since that is what code in
>        barebox_update() expects to happen
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/imx-bbu-internal.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
> index d83eb972c..70af5ef84 100644
> --- a/arch/arm/mach-imx/imx-bbu-internal.c
> +++ b/arch/arm/mach-imx/imx-bbu-internal.c
> @@ -86,6 +86,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
>  		const void *buf, int image_len)
>  {
>  	int fd, ret, offset = 0;
> +	bool partial_write;
>  
>  	fd = open(devicefile, O_RDWR | O_CREAT);
>  	if (fd < 0)
> @@ -117,8 +118,14 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
>  	}
>  
>  	ret = pwrite(fd, buf, image_len, offset);
> -	if (ret < 0)
> +	partial_write = ret > 0 && ret != image_len;
> +	if (ret < 0 || partial_write) {
> +		ret = partial_write ? -EIO : ret;
> +
> +		pr_err("writing to %s failed with %s\n", devicefile,
> +		       strerror(-ret));
>  		goto err_close;

Do we need a pwrite_full analog to write_full?

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
