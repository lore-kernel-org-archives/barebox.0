Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2yHu-0002a5-KO
 for barebox@lists.infradead.org; Fri, 04 Jul 2014 07:52:07 +0000
Received: from mail420.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E7779FFAE0A
 for <barebox@lists.infradead.org>; Fri,  4 Jul 2014 09:51:43 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <CAOpc7mEx4SW8gCjmxB8kTFypgAbm8GbfaMk9UcZRj5jF3y4uvg@mail.gmail.com>
Date: Fri, 4 Jul 2014 15:51:24 +0800
Message-Id: <C061375B-1EC8-4B0B-A309-C34782698D9B@jcrosoft.com>
References: <CAOpc7mEx4SW8gCjmxB8kTFypgAbm8GbfaMk9UcZRj5jF3y4uvg@mail.gmail.com>
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
Subject: Re: How to disable console late?
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


On Jun 26, 2014, at 12:22 AM, Holger Schurig <holgerschurig@gmail.com> wrot=
e:

> =

> On my i.MX6 I have CONFIG_CONSOLE_FULL and CONSOLE_ACTIVATE_NONE
> defined. But still my serial is automatically activated as a console.
> =

> barebox:/ devinfo cs0
> Bus: platform
> Parameters:
>  baudrate: 115200
>  active: ioe
> =

> I'd rather active the serial port as a console only if a key is
> pressed during power on. Based on the help text of
> CONFIG_ACTIVATE_NONE, I actually thought that this would happen.
> =

> Any hints?

I need to check in my local tree but I=92ve done this for input not output

For the secure boot support

Best Regards,
J.
> =

> =

> I could remove chosen/stdout-path from my DTS and put it in
> on-the-fly? This sounds a bit ugly ...
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
