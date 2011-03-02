Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PumUg-0004jF-Iv
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 13:53:35 +0000
Date: Wed, 2 Mar 2011 14:53:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110302135332.GB29521@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00EFC@SRV-VS06.TELEVIC.COM>
	<20110302104551.GB28548@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00F22@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00F22@SRV-VS06.TELEVIC.COM>
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

On Wed, Mar 02, 2011 at 02:03:27PM +0100, Vanalme Filip wrote:
> > -----Original Message-----
> > From: Baruch Siach [mailto:baruch@tkos.co.il]
> > Sent: woensdag 2 maart 2011 11:46
> > To: Vanalme Filip
> > Cc: barebox@lists.infradead.org
> > Subject: Re: booting linux
> > 
> > Hi Vanalme,
> > 
> > On Wed, Mar 02, 2011 at 11:31:31AM +0100, Vanalme Filip wrote:
> > 
> > [snip]
> > 
> > > Then I do :
> > >
> > > barebox:/ bootz /dev/nand0.kernel.bb
> > > loaded zImage from /dev/nand0.kernel.bb with size 1777792
> > > commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock7
> > rootfstype=jffs2
> > mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),5M(kernel),-(root)
> > > arch_number: 1802
> > > Uncompressing
> > Linux........................................................................................................................... done,
> > booting the kernel.
> > 
> > If your kernel is recent enough (2.6.33 or newer) try the following:
> > 
> > 1. Enable EARLY_PRINTK in your .config
> > 
> > 2. Add "earlyprintk" to your bootargs
> > 
> > 3. Boot the kernel
> > 
> > Post here what you see.
> 
> [Filip] 
> Unfortunately, the kernel I use is version 2.6.22. But, no problem, I
> got a kernel 2.6.38 version from one of my colleagues (who is porting
> the kernel to our i.MX27PDK board). With EARLY_PRINTK enabled.  First
> time I tried to start the kernel, I got a message that machine types
> of barebox and kernel did not match. In barebox, I'm using
> MACH_TYPE_IMX27, while kernel is using MACH_TYPE_IMX27_3DS
> (unfortunately, I did not capture the console output for that
> attempt...). So I changed barebox to use also MACH_TYPE_IMX27_3DS
> and............kernel boots !  It ends with a kernel panic, but it
> boots !  I don't know if the incompatible machine code could also have
> been the problem when I tried booting the 2.6.22. We will anyhow
> continue working on porting the 2.6.38 to our board, so I think it's
> no use to continue investigating the 2.6.22.

I guess the 2.6.22 kernel is a Freescale kernel. These need system_rev
to be set properly.

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
