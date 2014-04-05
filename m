Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWGrs-0004rE-KA
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 03:02:05 +0000
Received: from mail186.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 56E79FFB990
 for <barebox@lists.infradead.org>; Sat,  5 Apr 2014 04:53:30 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20140401090229.GT17250@pengutronix.de>
Date: Sat, 5 Apr 2014 10:53:19 +0800
Message-Id: <B88CC46B-6729-42F5-ABF8-1C67BD9663D9@jcrosoft.com>
References: <20140401090229.GT17250@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Introducing barebOS
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On Apr 1, 2014, at 5:02 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> =

> Hi All,
> =

> barebox more and more comes in the area that is has everything an
> operating system needs:
> =

> - support for all kinds of storage devices
> - support for various different fileystems
> - Cooperative multitasking with the poller mechanism
> - memory management in form of malloc/free and iospace resources
> - drivers for Networking, MMC, USB, UARTs, Framebuffer devices, (S)ATA,
>  SPI, I2C, W1, Keyboard, EEPROMs, LEDs
> =

> I therefore decided that it's no longer necessary to have the overhead
> of Linux at all. The project will be renamed to barebOS in the next few
> days. Support for booting Linux will be dropped as soon as some the
> remaining missing features are added, like for example a working vi
> applet and nodejs integration. I'm looking forward to your feedback!

I=92m not happy with the rename honestly

And why dropping he linux boot it=92s a feature like others

> =

> Sascha
> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
