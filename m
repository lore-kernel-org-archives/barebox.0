Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pv9Hf-0007RT-QY
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 14:13:40 +0000
Date: Thu, 3 Mar 2011 15:13:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110303141338.GR29521@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FC6@SRV-VS06.TELEVIC.COM>
	<20110303123324.GK29521@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FE1@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00FE1@SRV-VS06.TELEVIC.COM>
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
Subject: Re: bootargs
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Mar 03, 2011 at 03:00:07PM +0100, Vanalme Filip wrote:
> > -----Original Message-----
> > From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> > Sent: donderdag 3 maart 2011 13:33
> > To: Vanalme Filip
> > Cc: barebox@lists.infradead.org
> > Subject: Re: bootargs
> > 
> > On Thu, Mar 03, 2011 at 01:22:41PM +0100, Vanalme Filip wrote:
> > > In the current phase, I can boot the kernel, but it panics when trying to mount the
> > root filesystem.
> > > I downloaded a root filesystem from the server into the dedicated NAND partition
> > : tftp rootfs.jffs2 /dev/nand0.root.bb
> > > This seems to be OK.
> > >
> > > However, I have doubts about the bootargs I'm passing to the kernel :
> > >
> > > commandline: console=ttymxc0,115200 ip=dhcp root=/dev/mtdblock3
> > rootfstype=jffs2 earlyprintk
> > mtdparts=mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)
> > >
> > > Does this look OK ?
> > 
> > Yes, looks good.
> > 
> > >
> > > These are the last lines of the console output when booting the kernel :
> > >
> > > IP-Config: Got DHCP answer from 0.0.0.0, my address is 10.0.49.70
> > > IP-Config: Complete:
> > >      device=eth0, addr=10.0.49.70, mask=255.255.0.0, gw=10.0.127.254,
> > >      host=10.0.49.70, domain=televic.com, nis-domain=(none),
> > >      bootserver=0.0.0.0, rootserver=0.0.0.0, rootpath=
> > > VFS: Unable to mount root fs via NFS, trying floppy.
> > > List of all partitions:
> > > No filesystem could mount root, tried:  jffs2
> > > Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(2,0)
> > 
> > Do you have enabled the mxc_nand driver in the kernel and also mtd
> > command line partitioning (CONFIG_MTD_CMDLINE_PARTS)?
> 
> [Filip] 
> I have CONFIG_MTD_CMDLINE_PARTS=y and CONFIG_MTD_NAND_MXC=y.

Hm. Can you post the complete boot log?

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
