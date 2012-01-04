Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiUGL-0004AF-1W
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 17:04:30 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6C3C6100871A
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 18:05:33 +0100 (CET)
Date: Wed, 4 Jan 2012 18:04:23 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120104180423.5d13b88c@eb-e6520>
In-Reply-To: <20120104163755.GW5446@pengutronix.de>
References: <20120104114533.GB1810@game.jcrosoft.org>
 <1325689276-12863-1-git-send-email-eric@eukrea.com>
 <20120104163755.GW5446@pengutronix.de>
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
Subject: Re: [PATCH] loadb: only try to change the baudrate if the driver
 has this feature
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Wed, 4 Jan 2012 17:37:56 +0100,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> On Wed, Jan 04, 2012 at 04:01:16PM +0100, Eric B=E9nard wrote:
> > this allows loadb to work over usbserial gadget
> =

> I like the original approach better. The baudrate setting has no meaning
> in hardware for the usb serial gadget. This means that we can happily
> support every baudrate requested by adding a fake setbrg function.
> =

> If we had some global console_setbrg function I would agree
> Jean-Christophe, this function should return cdev->setbrg or
> -ENOSYS if the driver does not have a setbrg function. Still the
> usb gadget serial driver should have a fake setbrg function for
> the reason explained above.
> =

> This command could be improved by doing all this baudrate stuff only
> when the -b option is given. This way we default to the current
> baudrate (which seems sane in the cases I can think of)
> =

OK so in conclusion, what do you prefer : =

- applying " u_serial: add setbrg to be able to use loadb & co"
- a fix for loadb to only handle baudrate change if -b option is given
- or maybe both options ? ;-)

?
Eric


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
