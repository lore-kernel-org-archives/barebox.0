Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wpsto-0001A1-Gi
 for barebox@lists.infradead.org; Thu, 29 May 2014 05:29:10 +0000
Received: by mail-lb0-f177.google.com with SMTP id s7so6264674lbd.22
 for <barebox@lists.infradead.org>; Wed, 28 May 2014 22:28:44 -0700 (PDT)
Date: Thu, 29 May 2014 09:40:02 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140529094002.696353df539fc4b2e73f383f@gmail.com>
In-Reply-To: <CAOngqVWfbkP7GunG25VP4-2a1_3y7Z0hxmBZf3OWKnL91b4JJA@mail.gmail.com>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <1401097557.4829.20.camel@weser.hi.pengutronix.de>
 <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
 <CAOngqVU9N6Y1yR9A2NW4LRWJN8HeWti+ErMW6OxOjpJxDc74rQ@mail.gmail.com>
 <20140527180411.9c1c650b8e9d19fdcec7614d@gmail.com>
 <CAOngqVWfbkP7GunG25VP4-2a1_3y7Z0hxmBZf3OWKnL91b4JJA@mail.gmail.com>
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Daniele Lacamera <daniele.lacamera@tass.be>
Cc: barebox <barebox@lists.infradead.org>, Sam Van Den Berge <sam.van.den.berge@tass.be>

On Tue, 27 May 2014 19:26:14 +0200
Daniele Lacamera <daniele.lacamera@tass.be> wrote:

> Antony, thank you very much for the comments and the bug reports on
> our github. See comments below.
> =

> On Tue, May 27, 2014 at 4:04 PM, Antony Pavlov <antonynpavlov@gmail.com> =
wrote:
> > On Tue, 27 May 2014 11:46:29 +0200
> > Daniele Lacamera <daniele.lacamera@tass.be> wrote:
> >
> >
> > linux kernel and barebox use not so much #ifdef's because they use
> > they use IS_ENABLED() macro with just the same result.
> [...]
> > so the code under IS_ENABLED() is always parsed by C compiler;
> > if there is an syntax error in this code then the compilation will be s=
topped.
> =

> We will discuss this and see if it is applicable for PicoTCP. The
> macro you are suggesting is indeed not increasing code size, but our
> static checkers might be not so happy about all this preprocessor
> machinery.
> =

> >
> > $ gcc --version
> > gcc (Debian 4.8.3-1) 4.8.3
> >
> > Here is my 'make -s' output for sandbox barebox:
> >
> [cut]
> =

> Thank You!! This *IS* very helpful input. We are going to add more -W
> flags and quickly fix these warnings.
> =

> > But in linux kernel, barebox, qemu and IMHO many other projects
> > there are:
> >
> >   * CODING_STYLE documentation file;
> >   * scripts/checkpatch.pl
> >
> =

> All good points. Being a kernel developer myself, I know the
> checkpatch.pl approach, and indeed it is a good thing to distribute
> coding rules if you accept contributions. Except it will never apply
> to us, because:
> =

> - We have our company internal coding style which we apply to all our
> projects and we don't feel the need to distribute externally (keep in
> mind that we never planned to accept external contributions). Instead,
> the repository contains the uncrustify configuration file, which is
> pretty much self-explanatory.
> - A few of us are checking every single commit, and running uncrustify
> every now and then. We are comfortable with this approach

Be very carefull with this approach.

It looks like uncrustify changes not only whitespaces and newline symbols!
I suppose that it can change code logic!

E.g. please see this commit

commit 81f52a4ad8fd31edcedd7c91945c801899153d36
Author: Daniele Lacamera <daniele.lacamera@tass.be>
Date:   Wed Mar 12 12:29:21 2014 +0100

    Enforced coding style

Here is a notable fragment

--- a/modules/pico_mm.c
+++ b/modules/pico_mm.c
@@ -75,80 +79,80 @@ typedef union block_internals           block_internals;
         <-----------------------------------------------------------------=
----->
 =

 =

-        +------------<------------+----------<-----------+
-        |                         ^                      ^
+   +------------<------------+----------<-----------+
+ |                         ^                      ^
         v                         |                      |
-        +---------+------------+--+----+---------------+-+-----+----------=
-----+
-        |         |            |       |               |       |          =
     |
-        |  pico_  |            | pico_ |               | pico_ |          =
     |
-        |  mem_   | ...HEAP... | mem_  |     slab      | mem_  |     slab =
     |
-        |  page   |            | block |               | block |          =
     |
-        |         |            |       |               |       |          =
     |
-        +---------+------------+-------+-----+---------+-------+----------=
+----+
+ |+---------+------------+--+----+---------------+-+-----+---------------+
+ |         |            |       |               |       |               |
+ |  pico_  |            | pico_ |               | pico_ |               |
+ |  mem_   | ...HEAP... | mem_  |     slab      | mem_  |     slab      |
+ |  page   |            | block |               | block |               |
+ |         |            |       |               |       |               |
+ |+---------+------------+-------+-----+---------+-------+----------+----+

The number of '|' symbols is changed! After this commit you have at least
two additional '|' symbols. TIP: look at the start of the last line of the =
fragment.


> - Linux coding rules are generally recognized as possibly not the best
> in the world. I especially dislike tabs.
> - commit hooks are tedious
> =

> I am afraid we are not going to change our formatting style or policy,
> but thanks anyway for the suggestions!

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
