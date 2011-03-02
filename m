Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PuliE-0004Fn-Ge
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 13:03:31 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Wed, 2 Mar 2011 14:03:27 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00F22@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00EFC@SRV-VS06.TELEVIC.COM>
	<20110302104551.GB28548@jasper.tkos.co.il>
In-Reply-To: <20110302104551.GB28548@jasper.tkos.co.il>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: booting linux
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Baruch Siach [mailto:baruch@tkos.co.il]
> Sent: woensdag 2 maart 2011 11:46
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: booting linux
> 
> Hi Vanalme,
> 
> On Wed, Mar 02, 2011 at 11:31:31AM +0100, Vanalme Filip wrote:
> 
> [snip]
> 
> > Then I do :
> >
> > barebox:/ bootz /dev/nand0.kernel.bb
> > loaded zImage from /dev/nand0.kernel.bb with size 1777792
> > commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock7
> rootfstype=jffs2
> mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
> > arch_number: 1802
> > Uncompressing
> Linux........................................................................................................................... done,
> booting the kernel.
> 
> If your kernel is recent enough (2.6.33 or newer) try the following:
> 
> 1. Enable EARLY_PRINTK in your .config
> 
> 2. Add "earlyprintk" to your bootargs
> 
> 3. Boot the kernel
> 
> Post here what you see.

[Filip] 
Unfortunately, the kernel I use is version 2.6.22. But, no problem, I got a kernel 2.6.38 version from one of my colleagues (who is porting the kernel to our i.MX27PDK board). With EARLY_PRINTK enabled.
First time I tried to start the kernel, I got a message that machine types of barebox and kernel did not match. In barebox, I'm using MACH_TYPE_IMX27, while kernel is using MACH_TYPE_IMX27_3DS (unfortunately, I did not capture the console output for that attempt...). So I changed barebox to use also MACH_TYPE_IMX27_3DS and............kernel boots !
It ends with a kernel panic, but it boots !
I don't know if the incompatible machine code could also have been the problem when I tried booting the 2.6.22. We will anyhow continue working on porting the 2.6.38 to our board, so I think it's no use to continue investigating the 2.6.22.

On to the next hurdle... :-)

Thanks !
> 
> baruch
> 
> > The kernel uncompresses but never starts. Any idea why not ? Does barebox
> > expand the kernel to the right place in SDRAM or do I have to specify that
> > in the bootz command ?
> > I think the kernel is never started at all because I don't see any output at all. In
> this phase, even having a kernel crash would be great... because at least then I
> would know the kernel has been running for a while... ;-)
> >
> > I guess the image is OK because it uncompresses successfully. Maybe a
> problem in the bootargs that are passed to the kernel ?
> > Should I already have a /dev/mtdblock7 device in barebox's /dev ?
> >
> > Maybe useful information :
> >
> > barebox:/ printenv
> > locals:
> > machine=imx27pdk
> > ip=dhcp
> > kernel_loc=nand
> > rootfs_loc=nand
> > rootfs_type=jffs2
> > rootfsimage=root-jffs2
> > kernelimage_type=zimage
> > kernelimage=zImage-imx27pdk
> > nfsroot=:/path/to/nfs/root
> > autoboot_timeout=3
> > bootargs=console=ttymxc0,115200
> > nand_parts=256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
> > rootfs_mtdblock_nand=7
> > PS1=\e[1;32mbarebox@\e[1;31m\h:\w\e[0m
> > bootfile=zImage
> > nameserver=10.0.0.44
> > domainname=televic.com
> > globals:
> > PATH=/env/bin
> > barebox:/
> >
> > Filip
> 
> --
>                                                      ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
