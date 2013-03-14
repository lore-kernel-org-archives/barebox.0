Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG2w9-0003nb-BO
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 07:50:55 +0000
Date: Thu, 14 Mar 2013 08:50:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130314075047.GB19970@pengutronix.de>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
 <1362871182-25726-7-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362871182-25726-7-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 6/9] omap4_romusb: allow adding usb-serial when not
 booting from usb
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Hi Vicente,

On Sun, Mar 10, 2013 at 12:19:39AM +0100, Vicente Bergas wrote:
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  arch/arm/mach-omap/include/mach/omap4_rom_usb.h |  3 +++
>  arch/arm/mach-omap/omap4_rom_usb.c              | 23 +++++++++++------------
>  drivers/serial/serial_omap4_usbboot.c           |  2 ++
>  3 files changed, 16 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/serial/serial_omap4_usbboot.c b/drivers/serial/serial_omap4_usbboot.c
> index f0a2fd1..ee5b19a 100644
> --- a/drivers/serial/serial_omap4_usbboot.c
> +++ b/drivers/serial/serial_omap4_usbboot.c
> @@ -78,6 +78,8 @@ static struct driver_d serial_omap4_usbboot_driver = {
>  
>  static int serial_omap4_usbboot_init(void)
>  {
> +	if (!omap4_usbboot_ready())
> +		return 0;
>  	return platform_driver_register(&serial_omap4_usbboot_driver);
>  }
>  console_initcall(serial_omap4_usbboot_init);

Here you register the driver only when usb boot is ready. It would be
better your register the device only when usb boot is ready. Are you
fine with this? Could you send a follow up patch?

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
