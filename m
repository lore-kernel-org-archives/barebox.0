Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWJXl-0006F1-5E
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 05:53:30 +0000
Received: from mail405.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E8A29FFB6E0
 for <barebox@lists.infradead.org>; Sat,  5 Apr 2014 07:53:06 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <20140405094918.9d22b23f8047a38144837dda@gmail.com>
Date: Sat, 5 Apr 2014 13:52:39 +0800
Message-Id: <246B19D8-8C00-4977-BDCE-875774838B72@jcrosoft.com>
References: <20140401090229.GT17250@pengutronix.de>
 <B88CC46B-6729-42F5-ABF8-1C67BD9663D9@jcrosoft.com>
 <20140405094918.9d22b23f8047a38144837dda@gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org


On Apr 5, 2014, at 1:49 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:

> =

> On Sat, 5 Apr 2014 10:53:19 +0800
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> =

>> =

>> On Apr 1, 2014, at 5:02 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>> =

>>> Hi All,
>>> =

>>> barebox more and more comes in the area that is has everything an
>>> operating system needs:
>>> =

>>> - support for all kinds of storage devices
>>> - support for various different fileystems
>>> - Cooperative multitasking with the poller mechanism
>>> - memory management in form of malloc/free and iospace resources
>>> - drivers for Networking, MMC, USB, UARTs, Framebuffer devices, (S)ATA,
>>> SPI, I2C, W1, Keyboard, EEPROMs, LEDs
>>> =

>>> I therefore decided that it's no longer necessary to have the overhead
>>> of Linux at all. The project will be renamed to barebOS in the next few
>>> days. Support for booting Linux will be dropped as soon as some the
>>> remaining missing features are added, like for example a working vi
>>> applet and nodejs integration. I'm looking forward to your feedback!
>> =

>> I=92m not happy with the rename honestly
>> =

>> And why dropping he linux boot it=92s a feature like others
>> =

> =

> It's 1 april post.
I known but was busy handling a huge IP stealing case from a Silicon Vendor

Best Regards,
J.
> =

>>> Sascha
>>> =

>>> -- =

>>> Pengutronix e.K.                           |                           =
  |
>>> Industrial Linux Solutions                 | http://www.pengutronix.de/=
  |
>>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0  =
  |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
>>> =

>>> _______________________________________________
>>> barebox mailing list
>>> barebox@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/barebox
>> =

>> =

>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
> =

> =

> -- =

> -- =

> Best regards,
>  Antony Pavlov


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
