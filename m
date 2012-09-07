Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9uSI-0003hC-LK
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 09:02:27 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 93247FFAD82
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 11:07:46 +0200 (CEST)
Date: Fri, 7 Sep 2012 11:02:18 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120907110218.143c45ab@eb-e6520>
In-Reply-To: <20120907085216.GA7329@sig21.net>
References: <1346960371-4129-1-git-send-email-eric@eukrea.com>
 <1346960371-4129-3-git-send-email-eric@eukrea.com>
 <20120907085216.GA7329@sig21.net>
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

Le Fri, 7 Sep 2012 10:52:16 +0200,
Johannes Stezenbach <js@sig21.net> a =E9crit :
> On Thu, Sep 06, 2012 at 09:39:31PM +0200, Eric B=E9nard wrote:
> > since 99e72c8bbdbdc690025a5868d831f1fe79ad56fc on an i.MX51 based board,
> > I get : "phy0: Link is up - 1000/Full". It seems miidev tries to probe
> > the PHY to early and gets 0x3ffff which leads to the wrong capabilities
> > setting.
> =

> Hm, MII registers are only 16bit, why does your mii_read()
> implementation return 0x3ffff?
> =

in fec_imx it returns the 32 bit register. I though we could mask it to
only return the data but that wouldn't solve the problem as the tests
in miidev would fail because the data is 0xFFFF.

> Also, what exactly do you mean by "too early"?  Your code
> shouldn't call mii_register() before the MDIO clock is stable.
> =

fec_imx.c does that.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
