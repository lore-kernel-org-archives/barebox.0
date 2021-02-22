Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE7uK-00034F-Cu
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 09:53:37 +0000
Date: Mon, 22 Feb 2021 10:53:34 +0100
Message-ID: <20210222095334.GJ10966@pengutronix.de>
References: <20210222070605.589180-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222070605.589180-1-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 0/8] drivers: add VirtIO console, block device support
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de

On Mon, Feb 22, 2021 at 08:05:56AM +0100, Ahmad Fatoum wrote:
> To make it easier to exchange data with paravirtualized barebox during
> testing, import parts of the VirtIO support in Linux and U-Boot.
> 
> API basically looks like U-Boot's, but driver boilerplate (like having
> a virtio bus) is taken from Linux. Headers are the Linux ones with some
> necessary modifications on top.
> 
> Quite nifty thing is that Qemu will fix up the device tree appropriately,
> so just compile in the drivers and it works. The vexpress_defconfig
> already does this, so this just works:
> 
>   $ qemu-system-arm -m 256M -M virt -nographic                  \
>  	-kernel ./images/barebox-dt-2nd.img                     \
>   	-device virtio-rng-device                               \
>   	-drive if=none,file=/tmp/first.hdimg,format=raw,id=hd0  \
>   	-device virtio-blk-device,drive=hd0		        \
> 
> Ahmad Fatoum (8):
>   kbuild: add include/uapi to path
>   driver: Don't throw an error on probes that didn't find the device
>   drivers: add support for memory-mapped VirtIO paravirtualization
>   hw_random: add VirtIO RNG driver
>   serial: add basic VirtIO console driver
>   block: add VirtIO block device driver
>   ARM: vexpress: config: update for VirtIO support
>   Documentation: add Documentation on VirtIO for barebox

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
