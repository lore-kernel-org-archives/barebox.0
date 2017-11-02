Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eADHV-0000Hg-HE
 for barebox@lists.infradead.org; Thu, 02 Nov 2017 11:03:33 +0000
Date: Thu, 2 Nov 2017 12:03:03 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20171102110303.xl4hdyjw2lzlrwye@pengutronix.de>
References: <1509087948-15969-1-git-send-email-plagnioj@jcrosoft.com>
 <1509087948-15969-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1509087948-15969-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] efi-block: detect when the block device is a USB Disk
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 27, 2017 at 09:05:48AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> use usbdisk as a basename
> 
> This will be usefull as example when we want to search for a usb disk for
> failsafe update or install.

I understand the use-case, but this breaks a different setup: Until now
'disk0' is usually the 'boot' device (the one barebox was loaded from). So
it was rather simple to create one image with bootloader, kernel and rootfs
that can be booted from USB and SATA.

Regards,
Michael

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/block/efi-block-io.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
> index a4d9d3a95..2bbeb99e6 100644
> --- a/drivers/block/efi-block-io.c
> +++ b/drivers/block/efi-block-io.c
> @@ -130,6 +130,18 @@ static void efi_bio_print_info(struct efi_bio_priv *priv)
>  			media->optimal_transfer_length_granularity);
>  }
>  
> +static int is_bio_usbdev(struct efi_device *efidev)
> +{
> +	int i;
> +
> +	for (i = 0; i < efidev->num_guids; i++) {
> +		if (!efi_guidcmp(efidev->guids[i], EFI_USB_IO_PROTOCOL_GUID))
> +			return 1;
> +	}
> +
> +	return 0;
> +}
> +
>  int efi_bio_probe(struct efi_device *efidev)
>  {
>  	int ret;
> @@ -147,7 +159,10 @@ int efi_bio_probe(struct efi_device *efidev)
>  	efi_bio_print_info(priv);
>  	priv->dev = &efidev->dev;
>  
> -	priv->blk.cdev.name = xasprintf("disk%d", cdev_find_free_index("disk"));
> +	if (is_bio_usbdev(efidev))
> +		priv->blk.cdev.name = xasprintf("usbdisk%d", cdev_find_free_index("usbdisk"));
> +	else
> +		priv->blk.cdev.name = xasprintf("disk%d", cdev_find_free_index("disk"));
>  	priv->blk.blockbits = ffs(media->block_size) - 1;
>  	priv->blk.num_blocks = media->last_block + 1;
>  	priv->blk.ops = &efi_bio_ops;
> -- 
> 2.11.0
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
