Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5DRd-0003KS-Sk
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 19:26:54 +0000
Date: Mon, 10 Aug 2020 21:26:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810192643.GB31536@pengutronix.de>
References: <5183365.pEXpNOHncD@n95hx1g2>
 <3346214.S29caFStrp@n95hx1g2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3346214.S29caFStrp@n95hx1g2>
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
Subject: Re: Some USB memory sticks not (fully) recognized
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, Primoz Fiser <primoz.fiser@norik.com>

Hi Christian,

On Mon, Aug 10, 2020 at 01:52:01PM +0200, Christian Eggers wrote:
> On Thursday, 6 August 2020, 16:29:13 CEST, Christian Eggers wrote:
> > Barebox version: 2020.07.0
> > Hardware: i.MX6 ULL with external Microchip USB Hub attached
> > 
> > I got a bug report that some newer USB memory sticks do not work with
> > barebox. While with barebox-2020.01 these devices are not recognized at all,
> > in barebox-2020.07 I get at least some warnings:
> I checked again with an older release of barebox (2019-06). With this version,
> the USB drive is detected:
> 
> > # usb -s
> > usb: USB: scanning bus for devices...
> > usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > usb: Bus 001 Device 002: ID 0424:4916 USB4916
> > usb: Bus 001 Device 003: ID 090c:3267 Flash Disk
> > Using index 0 for the new disk
> > usb: Bus 001 Device 004: ID 0424:494a USB2 Controller Hub
> > usb: 4 USB Device(s) found
> > Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > Bus 001 Device 002: ID 0424:4916 USB4916
> > Bus 001 Device 003: ID 090c:3267 Flash Disk
> > Bus 001 Device 004: ID 0424:494a USB2 Controller Hub
> 
> Also mounting the drive works fine. So I guess that this problem may have been 
> introduced here:
> 
> b1d9837182 ("usb: Change power-on / scanning timeout handling")

Before guessing further could you verify that exactly this commit breaks
your setup? There are a few more changes in the area that could be the
culprit.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
