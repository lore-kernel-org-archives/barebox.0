Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rn6IJ-0004OK-Q6
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 10:29:41 +0000
Date: Tue, 17 Jan 2012 11:29:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120117102920.GW5446@pengutronix.de>
References: <20120115095156.GH5002@game.jcrosoft.org>
 <1326621621-11484-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1326621621-11484-5-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] usb-926x: add dfu mem options support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 15, 2012 at 11:00:21AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will allow to upload a bootable image in memory and boot it
> boot with the rootfs via nfs
> 
> the image will must be 16MiB max
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/usb-a926x/env/bin/init_board |   10 +++++++++-
>  arch/arm/configs/usb_a9260_defconfig         |    1 +
>  arch/arm/configs/usb_a9263_128mib_defconfig  |    1 +
>  arch/arm/configs/usb_a9263_defconfig         |    1 +
>  arch/arm/configs/usb_a9g20_128mib_defconfig  |    1 +
>  arch/arm/configs/usb_a9g20_defconfig         |    1 +
>  6 files changed, 14 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/boards/usb-a926x/env/bin/init_board b/arch/arm/boards/usb-a926x/env/bin/init_board
> index 0a6baf7..4c906f0 100644
> --- a/arch/arm/boards/usb-a926x/env/bin/init_board
> +++ b/arch/arm/boards/usb-a926x/env/bin/init_board
> @@ -6,7 +6,7 @@ button_wait=5
>  product_id=0x1234
>  vendor_id=0x4321
>  
> -dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r"
> +dfu_config="/dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.rootfs.bb(rootfs)r,/dev/ram0.kernel(mem)r"

I really want to discourage usage of /dev/ram0 for 'official' use. Can't
you use a regular file instead? From what I see only the O_CREAT flag is
missing in the dfu driver.

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
