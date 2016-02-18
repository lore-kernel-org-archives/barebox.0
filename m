Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWJrp-00056v-ND
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 08:23:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mol@pengutronix.de>) id 1aWJrS-0003Pu-D2
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 09:22:54 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <mol@pengutronix.de>) id 1aWJrS-0005XR-6D
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 09:22:54 +0100
Date: Thu, 18 Feb 2016 09:22:54 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20160218082254.GH4567@pengutronix.de>
References: <1455708500-980-1-git-send-email-mpa@pengutronix.de>
 <1455708500-980-4-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455708500-980-4-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH v2 4/4] fastboot: Add a ARM Barebox filetype handler
To: barebox@lists.infradead.org

On Wed, Feb 17, 2016 at 12:28:20PM +0100, Markus Pargmann wrote:
> This will automatically call barebox_update for the transfered file if
> it is an ARM Barebox image and the destination file is defined by some
> update handler.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  common/filetype.c               | 13 +++++++++++++
>  drivers/usb/gadget/f_fastboot.c | 29 +++++++++++++++++++++++++++++
>  include/filetype.h              |  2 ++
>  3 files changed, 44 insertions(+)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 8cfae88aeb35..74baf514466a 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -369,3 +369,16 @@ err_out:
>  	cdev_close(cdev);
>  	return type;
>  }
> +
> +bool filetype_is_barebox_image(enum filetype ft)
> +{
> +	switch (ft) {
> +	case filetype_arm_barebox:
> +	case filetype_mips_barebox:
> +	case filetype_ch_image:
> +	case filetype_ch_image_be:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
> index bc06c58d8dcb..9a1058a9670b 100644
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
> +	if (filetype_is_barebox_image(filetype)) {
> +		struct bbu_data data = {
> +			.devicefile = filename,
> +			.imagefile = FASTBOOT_TMPFILE,
> +			.flags = BBU_FLAG_YES,
> +		};
> +
> +		if (!barebox_update_handler_exists(&data))
> +			goto copy;
> +
> +		fastboot_tx_print(f_fb, "INFOThis is an ARM Barebox image...");

With the change above, it may not be an _ARM_ image.

Michael

> +
> +		data.image = read_file(data.imagefile, &data.len);
> +		if (!data.image) {
> +			fastboot_tx_print(f_fb, "FAILreading barebox");
> +			return;
> +		}
> +
> +		ret = barebox_update(&data);
> +
> +		if (ret) {
> +			fastboot_tx_print(f_fb, "FAILupdate barebox: %s", strerror(-ret));
> +			return;
> +		}
> +
> +		goto out;
> +	}
> +
>  copy:
>  	ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
>  	if (ret) {
> diff --git a/include/filetype.h b/include/filetype.h
> index cde543e5b061..e87ca174a89d 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -2,6 +2,7 @@
>  #define __FILE_TYPE_H
>  
>  #include <linux/string.h>
> +#include <linux/types.h>
>  
>  /*
>   * List of file types we know
> @@ -48,6 +49,7 @@ enum filetype file_name_detect_type(const char *filename);
>  enum filetype cdev_detect_type(const char *name);
>  enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
>  int is_fat_boot_sector(const void *_buf);
> +bool filetype_is_barebox_image(enum filetype ft);
>  
>  #define ARM_HEAD_SIZE			0x30
>  #define ARM_HEAD_MAGICWORD_OFFSET	0x20
> -- 
> 2.7.0
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
