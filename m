Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVwgd-0001Sj-4O
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 07:38:12 +0000
Date: Wed, 17 Feb 2016 08:37:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160217073749.GN19372@pengutronix.de>
References: <1455648888-20678-1-git-send-email-mpa@pengutronix.de>
 <1455648888-20678-4-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455648888-20678-4-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH 4/4] fastboot: Add a ARM Barebox filetype handler
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 16, 2016 at 07:54:48PM +0100, Markus Pargmann wrote:
> This will automatically call barebox_update for the transfered file if
> it is an ARM Barebox image and the destination file is defined by some
> update handler.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  drivers/usb/gadget/f_fastboot.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
> index 192c0d6eb7f4..ae18d068e93f 100644
> --- a/drivers/usb/gadget/f_fastboot.c
> +++ b/drivers/usb/gadget/f_fastboot.c
> @@ -23,6 +23,7 @@
>  #include <clock.h>
>  #include <ioctl.h>
>  #include <libbb.h>
> +#include <bbu.h>
>  #include <boot.h>
>  #include <dma.h>
>  #include <fs.h>
> @@ -716,6 +717,34 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
>  		goto out;
>  	}
>  
> +	if (filetype == filetype_arm_barebox) {

There are some other barebox image types, like filetype_mips_barebox and
filetype_ch_image, so maybe we should check for them aswell? But then
again, ...

> +		struct bbu_data data = {
> +			.devicefile = filename,
> +			.imagefile = FASTBOOT_TMPFILE,
> +			.flags = BBU_FLAG_YES,
> +		};
> +
> +		if (!barebox_update_handler_exists(&data))
> +			goto copy;

... Do we need the filetype check at all? Isn't this check enough? With
existing update handler for a device using barebox_update is the right
way to go, no matter what the filetype check says.

> +
> +		fastboot_tx_print(f_fb, "INFOThis is an ARM Barebox image...");
> +
> +		data.image = read_file(data.imagefile, &data.len);
> +		if (!data.image) {
> +			fastboot_tx_print(f_fb, "FAILreading bareboxs");

s/bareboxs/barebox/

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
