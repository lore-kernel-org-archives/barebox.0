Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5Ryb-0006Pa-N7
 for barebox@lists.infradead.org; Tue, 02 May 2017 07:12:04 +0000
Date: Tue, 2 May 2017 09:11:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170502071139.ah4ukxeqqjn47i6s@pengutronix.de>
References: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
 <1493383568-27798-6-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1493383568-27798-6-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 6/7] arm: boards: beaglebone: Update boot scripts
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 28, 2017 at 02:46:07PM +0200, Daniel Schultz wrote:
> Remove the current SD boot script and add support for MMC, EMMC and
> network bootsources.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc  |  9 +++++++++
>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc   |  9 +++++++++
>  arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd    |  6 ------
>  .../boards/beaglebone/defaultenv-beaglebone/init/bootsource | 13 +++++++++++++
>  4 files changed, 31 insertions(+), 6 deletions(-)
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/mmc
>  delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
>  create mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/bootsource
> 
> diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
> new file mode 100644
> index 0000000..5734e3b
> --- /dev/null
> +++ b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/emmc
> @@ -0,0 +1,9 @@
> +#!/bin/sh
> +
> +if [ -e /mnt/emmc/linuximage ]
> +	global.bootm.image=/mnt/emmc/linuximage
> +else
> +	global.bootm.image=/mnt/emmc/uImage
> +fi
> +global.bootm.oftree=/mnt/emmc/oftree
> +global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootflags='data=journal'"

I know I asked this quite some times already, but: Why not bootloader
spec? grepping for "global.bootm.image=" shows that we expect the kernel
at "/linuximage", "/zImage" or "/uImage", depending on the board.
"data=journal" is only valid for ext4 and even there is not an option
everybody wants to have.
With bootloader spec the rootfs can describe itself which kernel(s)
shall be started with which devicetrees. From barebox it's easy aswell,
only type "boot mmcx" and you're done.

With these bootscripts the first one who comes decides how the board is
intended to be used. I really don't want to have this in generic boards.

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
