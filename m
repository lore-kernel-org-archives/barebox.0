Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8CT-0006JC-DT
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:04:38 +0000
Date: Fri, 20 Jul 2012 10:04:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120720080435.GP30009@pengutronix.de>
References: <loom.20120719T173418-826@post.gmane.org>
 <20120719161139.GB30009@pengutronix.de>
 <loom.20120719T224910-551@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20120719T224910-551@post.gmane.org>
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
Subject: Re: USB On PCM043?
To: Jerry Kirk <jkirk865@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 08:56:35PM +0000, Jerry Kirk wrote:
> > > We have been attempting to get USB Host mode working under Barebox(2012-07-0)
> > > a PCM043 platform (i.mx35), but we are having a bit of trouble.
> > 
> > Could it be that the USB clock operates at the wrong rate? I think it
> > should be 60MHz.
> 
> We're not certain how to verify the clock setting for USB in Barebox.
> We have used "dump_clocks" but are not certain which of these clocks
> the USB clock is derived from. We think we have it set to the same
> settings as the Eukrea board.

The i.MX SoCs have a clko pin which can be muxed to different clocks. I
don't know if this is accessible on the pcm043, but if yes, you could
switch it to the USB clock and measure the clock.
Otherwise it might be good to run a current -rc kernel, you can then
see the complete clock tree in debugfs

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
