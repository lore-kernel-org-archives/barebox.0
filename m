Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJCxR-0007tX-Nv
 for barebox@lists.infradead.org; Thu, 17 May 2018 07:04:15 +0000
Date: Thu, 17 May 2018 09:04:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180517070401.phkf2nhicz7mrb26@pengutronix.de>
References: <20180516164328.3254-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516164328.3254-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] usb: gadget: fastboot: fix barebox update without using
 buffer
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 16, 2018 at 06:43:28PM +0200, Michael Grzeschik wrote:
> Commit e5098495 "usb: gadget: fastboot: Add option to download to a buffer"
> breaks the use of temporary files for fastboot barebox_update.
> 
> In the patch the ".imagefile = FASTBOOT_TMPFILE" allocation gets
> removed, but data.imagefile is still used. This leads to an NULL
> pointer dereference. We fix it by using sourcefile instead.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  drivers/usb/gadget/f_fastboot.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
> index 787b1205ec..7ccf227714 100644
> --- a/drivers/usb/gadget/f_fastboot.c
> +++ b/drivers/usb/gadget/f_fastboot.c
> @@ -999,7 +999,7 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
>  		if (fastboot_download_to_buf(f_fb)) {
>  			data.len = f_fb->download_size;
>  		} else {
> -			ret = read_file_2(data.imagefile, &data.len, &f_fb->buf,
> +			ret = read_file_2(sourcefile, &data.len, &f_fb->buf,
>  					f_fb->download_size);
>  			if (ret) {
>  				fastboot_tx_print(f_fb, "FAILreading barebox");
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
