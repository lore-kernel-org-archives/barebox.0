Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLVO4-00029P-3w
 for barebox@lists.infradead.org; Thu, 06 Mar 2014 10:18:48 +0000
Date: Thu, 6 Mar 2014 11:18:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140306101826.GA17250@pengutronix.de>
References: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D2DF@SRV-VS06.TELEVIC.COM>
 <20140306095541.GY17250@pengutronix.de>
 <E78BBE677EB9144B8F0A0A29674CD5338F93D8D897@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D897@SRV-VS06.TELEVIC.COM>
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
Subject: Re: at91sam9260-ek ...
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Mar 06, 2014 at 11:04:28AM +0100, Vanhauwaert Wouter wrote:
> > -----Original Message-----
> > From: Sascha Hauer [mailto:s.hauer@pengutronix.de]
> > Sent: donderdag 6 maart 2014 10:56
> > To: Vanhauwaert Wouter
> > Cc: barebox@lists.infradead.org
> > Subject: Re: at91sam9260-ek ...
> > 
> > On Wed, Mar 05, 2014 at 10:55:16AM +0100, Vanhauwaert Wouter wrote:
> > > Hello,
> > >
> > > Is the setup for a at91sam9260-ek still functioning?
> > > I have troubles with my nand flash. At first it boots and writes BBT-tables.
> > > However, next boot, it won't read the BBT, and has errors with the magic on
> > the environment variables.
> > > Erase /dev/env0 and saveenv do not make a difference.
> > > Nandtest does not give me errors...
> > >
> > > I'm just using the latest barebox 2014.2 and loading it on a
> > > at91sam9260-ek through usb (sam-ba). I'm just using the plain
> > > at91sam9260ek_defconfig
> > 
> > Seems there's something broken. I have no better idea other than bisecting it.
> > 
> 
> Is there a version which is definitely working and tested with at91sam9260-ek?

I'd probably start at somewhere near:

ecdb717 at91/boards: switch to software ecc as in linux kernel

But I don't know if that version really works.

(If you don't know already, you can always start barebox second stage
from an already running barebox, normally you shouldn't have to reflash
for each bisecting step. Something like "tftp barebox.bin /dev/ram0; go
/dev/ram0" should work.)

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
