Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dqCeN-0004T2-F3
 for barebox@lists.infradead.org; Fri, 08 Sep 2017 06:20:27 +0000
Date: Fri, 8 Sep 2017 08:20:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170908062002.xfrpyyxjplzps2uz@pengutronix.de>
References: <20170906124008.26582-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170906124008.26582-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH] efi: make sure efi-fs is started in the right order
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Michael Olbrich <m.olbrich@pengutronix.de>, Oleksij Rempel <o.rempel@pengutronix.de>

On Wed, Sep 06, 2017 at 02:40:08PM +0200, Oleksij Rempel wrote:
> From: Michael Olbrich <m.olbrich@pengutronix.de>
> 
> with this parch, EFI System partition will be mounted to /boot
> instead of /mnt/diskXX.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  fs/efi.c                 | 2 +-
>  include/efi/efi-device.h | 2 ++
>  2 files changed, 3 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/efi.c b/fs/efi.c
> index 85ff91429..692556b26 100644
> --- a/fs/efi.c
> +++ b/fs/efi.c
> @@ -558,4 +558,4 @@ static struct efi_driver efi_fs_driver = {
>          .probe = efi_fs_probe,
>  	.guid = EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID,
>  };
> -device_efi_driver(efi_fs_driver);
> +fs_efi_driver(efi_fs_driver);
> diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
> index 8f5f1f3f1..15c293bb1 100644
> --- a/include/efi/efi-device.h
> +++ b/include/efi/efi-device.h
> @@ -33,6 +33,8 @@ static inline struct efi_driver *to_efi_driver(struct driver_d *drv)
>  #define device_efi_driver(drv)	\
>  	register_driver_macro(device, efi, drv)
>  
> +#define fs_efi_driver(drv)	\
> +	register_driver_macro(fs, efi, drv)
>  static inline int efi_driver_register(struct efi_driver *efidrv)
>  {
>  	efidrv->driver.bus = &efi_bus;
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
