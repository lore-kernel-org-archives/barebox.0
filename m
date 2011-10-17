Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RFtK0-0006yt-0H
	for barebox@lists.infradead.org; Mon, 17 Oct 2011 19:58:05 +0000
Date: Mon, 17 Oct 2011 21:58:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111017195801.GF18141@pengutronix.de>
References: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
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
Subject: Re: NAND Boot Issue
To: Kamel BOUHARA <k.bouhara@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 17, 2011 at 06:03:56PM +0200, Kamel BOUHARA wrote:
> Hi all,
> 
> Im working on my own imx27 designed board and wanted to try barebox on
> it.Actually I'm trying it with the phytec board config and it seems to work
> fine booting on my nfs kernel and rootfs.
> But when Im trying to boot from my 128MiB NAND memory then it doesn't work
> and there is no decompression stage from the kernel.
> Here is what Im getting :
> 
> Board: Phytec phyCard-i.MX27
> registered netconsole as cs1
> cfi_probe: cfi_flash base: 0xc0000000 size: 0x02000000
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB 1,8V
> 8-bit)
> Bad block table found at page 262080, version 0x01
> Bad block table found at page 262016, version 0x01
> Before PHY reset
> After PHY reset
> ULPI Vendor ID 0xffffff92    Product ID 0xffffff92
> No ISP1504 found
> ehci@ehci0: USB EHCI 1.00
> ULPI Vendor ID 0xffffff92    Product ID 0xffffff92
> No ISP1504 found
> ehci@ehci1: USB EHCI 1.00
> Malloc space: 0xa7a00000 -> 0xa7f00000 (size  5 MB)
> Stack space : 0xa79f8000 -> 0xa7a00000 (size 32 kB)
> running /env/bin/init...
> 
> Hit any key to stop autoboot:  1
> booting kernel of type uImage from /dev/nand0.kernel.bb
> barebox:/ bootu /dev/nand0.kernel.bb

bootu is for starting raw kernel images. Do you have such an image?
Normally you have an uImage (bootm) or a zImage (bootz)

> commandline: console=ttymxc0,115200 video=imxfb:Chimei-LW700AT9003
> arch_number: 1698
> 
> It seems I'm getting some issues with my nand since when I tried to flash it
> and the erase task failed :
> 
> erasing partition /dev/nand0.kernel.bb
> 
> erase: Invalid argument

Works here. I can't see how erase could return -EINVAL. can you please
post the output of 'ls /dev/nand0*'?

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
