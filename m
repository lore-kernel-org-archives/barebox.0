Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqN5t-0001QH-Bv
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 11:02:18 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1RqN5l-0007yd-DO
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 12:02:09 +0100
Received: from mol by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1RqN5l-0006QU-C3
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 12:02:09 +0100
Date: Thu, 26 Jan 2012 12:02:09 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20120126110209.GD25121@pengutronix.de>
References: <1327525133.19793.23.camel@hp-dhlii>
 <20120125220848.GC5446@pengutronix.de>
 <201201261132.32331.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201201261132.32331.marc@cpdesign.com.au>
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
Subject: Re: i.MX53 QSB
To: barebox@lists.infradead.org

On Thu, Jan 26, 2012 at 11:32:32AM +1100, Marc Reilly wrote:
> Hi,
> 
> > > If I am booting from the SD card how do I get it onto the card
> > > 
> > > dd if=barebox.bin of=/dev/sdc bs=512 seek=2 ??
> > 
> > cat barebox.bin > /dev/sdc
> > 
> > Of course this means that you will overwrite the partition table of the
> > SD card. I'm still loooking for a good way to make this behaviour more
> > convenient.
> 
> (For iMX35 at least): The barebox image doesn't contain anything in the first 
> 1K apart from an unconditional branch to the reset vector (at 2K offset). This 
> branch is not necessary for internal booting, because the app entry point is 
> specified in the flash header information.
> 
> sudo dd if=barebox.bin of=/dev/sde bs=512 seek=2 skip=2

If you need the first bytes, this should work:
dd if=barebox.bin of=/dev/sde bs=446 count=1
dd if=barebox.bin of=/dev/sde bs=512 seek=1 skip=1

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
