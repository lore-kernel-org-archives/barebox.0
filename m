Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5Nqi-0004zj-Q5
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 06:33:29 +0000
Date: Tue, 11 Aug 2020 08:33:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200811063325.GH9475@pengutronix.de>
References: <5183365.pEXpNOHncD@n95hx1g2> <3346214.S29caFStrp@n95hx1g2>
 <20200810192643.GB31536@pengutronix.de>
 <1867530.d7CUNdKKll@n95hx1g2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1867530.d7CUNdKKll@n95hx1g2>
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Primoz Fiser <primoz.fiser@norik.com>

On Tue, Aug 11, 2020 at 08:10:17AM +0200, Christian Eggers wrote:
> Hi Sascha,
> 
> On Monday, 10 August 2020, 21:26:43 CEST, Sascha Hauer wrote:
> > Hi Christian,
> >
> > On Mon, Aug 10, 2020 at 01:52:01PM +0200, Christian Eggers wrote:
> > > On Thursday, 6 August 2020, 16:29:13 CEST, Christian Eggers wrote:
> > > > I got a bug report that some newer USB memory sticks do not work with
> > > > barebox. While with barebox-2020.01 these devices are not recognized at
> > > > all, in barebox-2020.07 I get at least some warnings:
> > > I checked again with an older release of barebox (2019-06). With this
> > > version, the USB drive is detected:
> > > [...]
> > > Also mounting the drive works fine. So I guess that this problem may have
> > > been introduced here:
> > >
> > > b1d9837182 ("usb: Change power-on / scanning timeout handling")
> >
> > Before guessing further could you verify that exactly this commit breaks
> > your setup? There are a few more changes in the area that could be the
> > culprit.
> sorry, that was nonprofessional. In the meantime, I got some new findings:
> 
> - v2019.06 is the last release were the device is detected
> 
> - reverting b1d9837182 ("usb: Change power-on / scanning timeout handling")
> doesn't change anything (so it's not related to this problem)
> 
> - the problem was definitely introduced in
> 6044d6c08e ("usb: host: ehci: Use to USBSTS to wait for transfer completion")
> 
> Debugging with and without 6044d6c08e showed that waiting for USBSTS:INT
> is not sufficient as QT_TOKEN_STATUS_ACTIVE is still set after this. Turning
> the dev_dbg() into an dev_err() clearly shows this:
> 
> > usb: USB: scanning bus for devices...
> > usb1: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> > usb1-0: Bus 001 Device 002: ID 0424:4916 USB4916
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: usb1-0-1: unable to get descriptor, error 80000000
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > ERROR: imx-usb 2184200.usb@2184200.of: dev=3, usbsts=0x40081, p[1]=0x18001205, p[2]=0x0
> > usb1-0-1: Bus 001 Device 003: ID 090c:3267
> > usb1-0-6: Bus 001 Device 004: ID 0424:494a USB2 Controller Hub
> > usb: 4 USB Device(s) found
> 
> It seems that I can take multiple USBINTs until QT_TOKEN_STATUS_ACTIVE is
> cleared. The following snippet works fine for me:
> 
>         volatile struct qTD *vtd;
>         ...
>         vtd = td;
>         do {
>                 ret = handshake(&ehci->hcor->or_usbsts, STS_USBINT, STS_USBINT,
>                                 timeout_ms * 1000);
>                 if (ret < 0) {
>                         dev_err(ehci->dev, "handshake failed: %d\n", ret);
>                         ehci_enable_async_schedule(ehci, false);
>                         ehci_writel(&qh->qt_token, 0);
>                         return -ETIMEDOUT;
>                 }
>                 token = hc32_to_cpu(vtd->qt_token);
>         } while (token & QT_TOKEN_STATUS_ACTIVE);
> 
> There is probably no benefit left compared to the version prior 6044d6c08e, so
> if there is not better way to do this, I would propose to revert 6044d6c08e.

I am fine with reverting 6044d6c08e, but let's give Andrey some time to
react before doing this.

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
