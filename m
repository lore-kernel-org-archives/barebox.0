Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dqCeF-0004J2-OZ
 for barebox@lists.infradead.org; Fri, 08 Sep 2017 06:20:18 +0000
Date: Fri, 8 Sep 2017 08:19:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170908061951.qfanyhfu62evhslo@pengutronix.de>
References: <20170906121106.26024-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170906121106.26024-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH] Documentation: efi: add example how to create EFI
 partition
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Wed, Sep 06, 2017 at 02:11:06PM +0200, Oleksij Rempel wrote:
> From: Oleksij Rempel <o.rempel@pengutronix.de>
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/boards/efi.rst | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
> index 8f78a800e..6c90e6cdf 100644
> --- a/Documentation/boards/efi.rst
> +++ b/Documentation/boards/efi.rst
> @@ -47,6 +47,31 @@ has to be put into the ``EFI/barebox/`` directory.
>  Supported backends for EFI are raw partitions that can be discovered via a
>  partition UUID.
>  
> +With this sample script you can create bootable image and transfer it to the
> +flash driver:
> +
> +.. code-block:: sh
> +
> +  truncate --size 128M barebox-boot.img
> +  echo 'start=2048, type=ef' | sfdisk barebox-boot.img
> +
> +  LOOPDEV=$(losetup --find --show barebox-boot.img)
> +  partprobe ${LOOPDEV}
> +
> +  # Create filesystems
> +  mkfs.fat -F32 ${LOOPDEV}p1
> +  MOUNTDIR=$(mktemp -d -t demoXXXXXX)
> +  mount ${LOOPDEV}p1 $MOUNTDIR
> +  mkdir -p ${MOUNTDIR}/EFI/BOOT/
> +  cp barebox.efi ${MOUNTDIR}/EFI/BOOT/BOOTx64.EFI
> +  if [ -d network-drivers ]; then
> +    cp -r network-drivers ${MOUNTDIR}/
> +  fi
> +  umount ${MOUNTDIR}
> +  losetup -d ${LOOPDEV}
> +
> +  dd if=barebox-boot.img of=/dev/sdX
> +
>  Running EFI barebox on qemu
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  
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
