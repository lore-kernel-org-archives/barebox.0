Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f276.mail.ru ([217.69.138.65])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZeeS-00082K-Bo
 for barebox@lists.infradead.org; Tue, 07 May 2013 09:57:41 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Tue, 07 May 2013 13:57:13 +0400
Message-ID: <1367920633.721879227@f276.mail.ru>
In-Reply-To: <20130506143152.GG32299@pengutronix.de>
References: <1366966527.864498237@f391.i.mail.ru>
 <1367846636.53670006@f347.mail.ru>
 <20130506143152.GG32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IE9URyBEZXZpY2UgbW9kZSBvbiBpLk1YNTE=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > > On Mon, May 06, 2013 at 01:52:11PM +0400, Alexander Shiyan wrote:
> > > > > Hello.
> > > > > 
> > > > > Is anyone have successful works OTG in device mode on iMX51?
> > > > > Thanks!.
> > > 
> > > I have the driver working in devicemode on several boards, but not on an
> > > i.MX51 I think. I have no indication though that the UDC core itself is
> > > in any way different to the ones on other i.MXs.
> > 
> > I have tested usage device mode on i.MX27. It works (Patch for PCM-038
> > will be sent), but driver(?) does not work for me on i.MX51...
> > Executing is freeze at dr_controller_setup (drivers/usb/gadget/fsl_udc.c).
> > Now I trying to check for missing clocks, but not sure about this since we
> > enable all clocks at start...
> > So, if anyone can test this feature on i.MX51 it will be helpful.
> 
> If there's a problem it's more likely that the usbmisc registers are not
> correctly initialized, so it probably won't help to test on another
> board

First sucessful work is done.
It is neccesary to set an additional bit in MX5_UTMI_PHY_CTRL_0.
#define MX5_OTG_PHYCTRL_OTG_XCVR_BIT (1 << 7)
...
v |= MX5_OTG_PHYCTRL_OTG_XCVR_BIT;
...

But now it still works only with "fsl-udc" driver, not with "chipidea".
I will continue work on it.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
