Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9uvK-0006BZ-2l
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 09:32:26 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 68649FFB08C
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 11:37:49 +0200 (CEST)
Date: Fri, 7 Sep 2012 11:32:23 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120907113223.6228b797@eb-e6520>
In-Reply-To: <20120907092833.GA13549@sig21.net>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <1346960371-4129-3-git-send-email-eric@eukrea.com>
 <20120907085216.GA7329@sig21.net>
 <20120907110218.143c45ab@eb-e6520>
 <20120907092833.GA13549@sig21.net>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] miidev: fix 1G wrong detection
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

Hi,

Le Fri, 7 Sep 2012 11:28:33 +0200,
Johannes Stezenbach <js@sig21.net> a =E9crit :

> Hi,
> =

> On Fri, Sep 07, 2012 at 11:02:18AM +0200, Eric B=E9nard wrote:
> > Le Fri, 7 Sep 2012 10:52:16 +0200,
> > Johannes Stezenbach <js@sig21.net> a =E9crit :
> > > On Thu, Sep 06, 2012 at 09:39:31PM +0200, Eric B=E9nard wrote:
> > > > since 99e72c8bbdbdc690025a5868d831f1fe79ad56fc on an i.MX51 based b=
oard,
> > > > I get : "phy0: Link is up - 1000/Full". It seems miidev tries to pr=
obe
> > > > the PHY to early and gets 0x3ffff which leads to the wrong capabili=
ties
> > > > setting.
> > > =

> > > Hm, MII registers are only 16bit, why does your mii_read()
> > > implementation return 0x3ffff?
> > > =

> > in fec_imx it returns the 32 bit register. I though we could mask it to
> > only return the data but that wouldn't solve the problem as the tests
> > in miidev would fail because the data is 0xFFFF.
> =

> Well, the check for the PHY ID registers was added for a purpose:
> It allows barebox to print a useful error message if it can't talk
> to the PHY, which is *much* better than letting you guess why
> you ethernet doesn't work.  You could change the check to ">=3D 0xffff"
> but it looks strange.  IMHO it would be better to mask the invalid
> bits in your mii_read().
> =

that's the cleanest solution, but in the present case if we do that
miidev will fail to probe on this board.

> > > Also, what exactly do you mean by "too early"?  Your code
> > > shouldn't call mii_register() before the MDIO clock is stable.
> > > =

> > fec_imx.c does that.
> =

> But why is it too early?  What do you need to wait for?
> Maybe something in eth_device.open() enables MDIO?
> =

> Maybe it is actually better to defer PHY probing until
> eth_device.open() is called, to save a few milliseconds during
> boot from flash when ethernet isn't used.  But I have a board which can
> have different PHY (e.g. 100Mbit or 1Gbit), and where one
> of them doesn't answer to address 0, so I need to probe the address.
> Then I would need to defer the mii_register() also
> until eth_device.open()?
> =

sure fec_imx may need some rework to fit with mii_dev in trhe actual
state.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
