Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvVO0-000176-D0
	for barebox@lists.infradead.org; Fri, 04 Mar 2011 13:49:41 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Fri, 4 Mar 2011 14:49:37 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B010B6@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0104E@SRV-VS06.TELEVIC.COM>
	<20110304083028.GC29521@pengutronix.de>
In-Reply-To: <20110304083028.GC29521@pengutronix.de>
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
Subject: RE: bootargs
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> Sent: vrijdag 4 maart 2011 9:30
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: bootargs
> 
> On Fri, Mar 04, 2011 at 09:18:26AM +0100, Vanalme Filip wrote:
> >
> > I think it might have something to do with the BI-swapping issue. The
> > BI-swapping is, as far as I know, not yet implemented in the kernel's
> > NAND driver. So, if I flash the rootfs with Barebox (doing the
> > BI-swap) and then read the rootfs from within the kernel (not doing
> > the BI-swap), I will for sure have problem...
> 
> Using 2k NAND flash on the i.MX27 will most likely lead to problems...
> 
> >
> > Remarkable : the Linux version I use is a version we downloaded from
> > Freescale's git repositry. In this version, we could select the
> > i.MX27PDK board. However, that board's code is obviously not
> > registering the NAND flash driver... knowing that the i.MX27PDK only
> > contains NAND-flash, this is very weird...
> 
> Normally we do root over nfs during development, so this is not very
> surprising. As Freescale does not support the i.MX27 anymore the
> i.MX27PDK support in FSLs git kernel is probably identical to mainline.
> 
> Sascha
> 
[Filip] 
I implemented the BI-swapping in mxc_nand.c (analogous to the implementation in Barebox's mxc_nand.c). With success. The kernel can now mount the root filesystem from NAND flash and ends with a prompt.

Filip
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
