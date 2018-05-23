Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLTwa-0003Rv-Ng
 for barebox@lists.infradead.org; Wed, 23 May 2018 13:36:46 +0000
Date: Wed, 23 May 2018 15:36:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180523133626.x2egdqxwmiyllctx@pengutronix.de>
References: <1482938984.1946.1.camel@googlemail.com>
 <20170109083855.f2vxmkmtlczdv62t@pengutronix.de>
 <1526573972.12584.7.camel@googlemail.com>
 <20180522075441.mke2rbn5karwc23t@pengutronix.de>
 <1526976551.2078.18.camel@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1526976551.2078.18.camel@googlemail.com>
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
Subject: Re: [PATCH] USB: host: hub: increase delay after device removal
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2018 at 10:09:11AM +0200, Christoph Fritz wrote:
> On Tue, 2018-05-22 at 09:54 +0200, Sascha Hauer wrote:
> > On Thu, May 17, 2018 at 06:19:32PM +0200, Christoph Fritz wrote:
> 
> > > # still 4 USB Devices found, ...?
> > > # starting 'usb' again hits a NULL pointer dereference:
> > 
> > Disconnecting USB devices during runtime of barebox is not really
> > supported. We should probably make that clear somewhere. The code is not
> > prepared for that case and trying to fix it is likely to be a bottomless
> > pit.
> > 
> > Can you reproduce a problem without removing a device?
> 
> Yes I can, please see the scenario below.
> But the USB device plugged in isn't USB certified and Linux-Kernel needs
> the quirk too... so...?

What do the Linux guys say? Maybe someone comes up with a solution that
solves the issue without additional config options.

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
