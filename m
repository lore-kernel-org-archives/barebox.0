Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PujZB-0002fk-QJ
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 10:46:03 +0000
Date: Wed, 2 Mar 2011 12:45:51 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110302104551.GB28548@jasper.tkos.co.il>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00EFC@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00EFC@SRV-VS06.TELEVIC.COM>
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
Subject: Re: booting linux
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Vanalme,

On Wed, Mar 02, 2011 at 11:31:31AM +0100, Vanalme Filip wrote:

[snip]

> Then I do :
> 
> barebox:/ bootz /dev/nand0.kernel.bb
> loaded zImage from /dev/nand0.kernel.bb with size 1777792
> commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock7 rootfstype=jffs2 mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
> arch_number: 1802
> Uncompressing Linux........................................................................................................................... done, booting the kernel.

If your kernel is recent enough (2.6.33 or newer) try the following:

1. Enable EARLY_PRINTK in your .config

2. Add "earlyprintk" to your bootargs

3. Boot the kernel

Post here what you see.

baruch

> The kernel uncompresses but never starts. Any idea why not ? Does barebox 
> expand the kernel to the right place in SDRAM or do I have to specify that 
> in the bootz command ?
> I think the kernel is never started at all because I don't see any output at all. In this phase, even having a kernel crash would be great... because at least then I would know the kernel has been running for a while... ;-) 
> 
> I guess the image is OK because it uncompresses successfully. Maybe a problem in the bootargs that are passed to the kernel ?
> Should I already have a /dev/mtdblock7 device in barebox's /dev ?
> 
> Maybe useful information :
> 
> barebox:/ printenv
> locals:
> machine=imx27pdk
> ip=dhcp
> kernel_loc=nand
> rootfs_loc=nand
> rootfs_type=jffs2
> rootfsimage=root-jffs2
> kernelimage_type=zimage
> kernelimage=zImage-imx27pdk
> nfsroot=:/path/to/nfs/root
> autoboot_timeout=3
> bootargs=console=ttymxc0,115200
> nand_parts=256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
> rootfs_mtdblock_nand=7
> PS1=\e[1;32mbarebox@\e[1;31m\h:\w\e[0m
> bootfile=zImage
> nameserver=10.0.0.44
> domainname=televic.com
> globals:
> PATH=/env/bin
> barebox:/
> 
> Filip

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
