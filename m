Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V6dom-00009r-Nc
 for barebox@lists.infradead.org; Tue, 06 Aug 2013 09:44:41 +0000
Received: by mail-lb0-f176.google.com with SMTP id w10so303162lbi.7
 for <barebox@lists.infradead.org>; Tue, 06 Aug 2013 02:44:16 -0700 (PDT)
Date: Tue, 6 Aug 2013 13:42:08 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20130806134208.03ab93928d53b987226adb1d@gmail.com>
In-Reply-To: <20130806071353.GZ26614@pengutronix.de>
References: <1375647927-30627-1-git-send-email-antonynpavlov@gmail.com>
 <20130806071353.GZ26614@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 0/5] JUST-FOR-FUN: run barebox on Canon digital camera
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 6 Aug 2013 09:13:53 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Aug 05, 2013 at 12:25:22AM +0400, Antony Pavlov wrote:
> > Please don't commit the patches!
> > =

> > This patch series introduce minimal support
> > for Canon DIGIC4-based cameras.
> > =

> > Supported cameras:
> > =

> >  * Canon PowerShot A1100;
> >  * Canon EOS 600D;
> >  * Canon EOS Magic Lantern qemu-based emulator.
> > =

> > After booting barebox starts compiled-in script
> > that use 'mw' command to blink camera's LED.
> > =

> > Just now barebox for Canon cameras is a demo
> > but after some improvements it can become very
> > handy tool for CHDK and Magic Lantern development.
> =

> Very cool stuff.
> =

> I'll have to have a look what model my wifes camera is ;)

To tell the truth there is no big difference in Canon cameras
for barebox developer. You can see, that there are no differences
in a1100 and 600d code in barebox (just memory size, but it can
be moved into device tree file). Moreover AFAIR there are no significant
software model differences between the chips in the DIGIC family.

To blink the LED of your PowerShot camera you only need to know =

the led-related GPIO address and canon binary file encode algorithm.
Both of this things can be obtained in the CHDK sources.

For DSRL cameras the situation is even less difficult.

> I'd be amazed if barebox could be used to help the magic lantern
> project.

If you want to help the Magic Lantern project please briefly describe
your mode of operation with incoming patches. AFAIR you have some
scripts to check all boards build after every single commit.
The Magic Lantern developers have some problems as they use
very different mode of operation:
 1. commit the change to the repo;
 2. fix build or functional error some time later.

I have adapted MAKEALL script from barebox for Magic Lantern,
but I have not not yet finished the script to check every new
mercurial commit (as Magic Lantern developers use mercurial).

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
