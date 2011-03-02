Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PunBB-00057J-T2
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 14:37:30 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Wed, 2 Mar 2011 15:37:26 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00F3D@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00EFC@SRV-VS06.TELEVIC.COM>
	<20110302104551.GB28548@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00F22@SRV-VS06.TELEVIC.COM>
	<20110302135332.GB29521@pengutronix.de>
In-Reply-To: <20110302135332.GB29521@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: woensdag 2 maart 2011 14:54
> To: Vanalme Filip
> Cc: Baruch Siach; barebox@lists.infradead.org
> Subject: Re: booting linux
> 
> On Wed, Mar 02, 2011 at 02:03:27PM +0100, Vanalme Filip wrote:
> > > -----Original Message-----
> > > From: Baruch Siach [mailto:baruch@tkos.co.il]
> > > Sent: woensdag 2 maart 2011 11:46
> > > To: Vanalme Filip
> > > Cc: barebox@lists.infradead.org
> > > Subject: Re: booting linux
> > >
> > > Hi Vanalme,
> > >
> > > On Wed, Mar 02, 2011 at 11:31:31AM +0100, Vanalme Filip wrote:
> > >
> > > [snip]
> > >
> > > > Then I do :
> > > >
> > > > barebox:/ bootz /dev/nand0.kernel.bb
> > > > loaded zImage from /dev/nand0.kernel.bb with size 1777792
> > > > commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock7
> > > rootfstype=jffs2
> > > mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
> > > > arch_number: 1802
> > > > Uncompressing
> > > Linux...........................................................................................................................
> done,
> > > booting the kernel.
> > >
> > > If your kernel is recent enough (2.6.33 or newer) try the following:
> > >
> > > 1. Enable EARLY_PRINTK in your .config
> > >
> > > 2. Add "earlyprintk" to your bootargs
> > >
> > > 3. Boot the kernel
> > >
> > > Post here what you see.
> >
> > [Filip]
> > Unfortunately, the kernel I use is version 2.6.22. But, no problem, I
> > got a kernel 2.6.38 version from one of my colleagues (who is porting
> > the kernel to our i.MX27PDK board). With EARLY_PRINTK enabled.  First
> > time I tried to start the kernel, I got a message that machine types
> > of barebox and kernel did not match. In barebox, I'm using
> > MACH_TYPE_IMX27, while kernel is using MACH_TYPE_IMX27_3DS
> > (unfortunately, I did not capture the console output for that
> > attempt...). So I changed barebox to use also MACH_TYPE_IMX27_3DS
> > and............kernel boots !  It ends with a kernel panic, but it
> > boots !  I don't know if the incompatible machine code could also have
> > been the problem when I tried booting the 2.6.22. We will anyhow
> > continue working on porting the 2.6.38 to our board, so I think it's
> > no use to continue investigating the 2.6.22.
> 
> I guess the 2.6.22 kernel is a Freescale kernel. These need system_rev
> to be set properly.
> 
> Sascha

[Filip]  That's correct. That's the kernel that comes with the i.MX27PDK package. Obviously with a lot of patches specific for this board. 
Unfortunately, this seems the only kernel version available for this board. In later kernel versions, the board seems not supported anymore. And Freescale did not port their specific patches to later versions.  Because our target board is based on the PDK board, and because we would like to use recent versions for bootloader as well as for Linux kernel, we have to do the porting ourselves.... (with the NFC problems, as you know, being one of the "higher hurdles" to take...). For now, I don't care about 2.6.22 not working, because our focus is anyhow on a recent version.

I think we are not yet at the end of this story... ;-)


Filip
> 
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
