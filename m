Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f171.google.com ([209.85.217.171])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpL92-0004dh-SN
 for barebox@lists.infradead.org; Tue, 27 May 2014 17:26:37 +0000
Received: by mail-lb0-f171.google.com with SMTP id 10so5242753lbg.30
 for <barebox@lists.infradead.org>; Tue, 27 May 2014 10:26:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140527180411.9c1c650b8e9d19fdcec7614d@gmail.com>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <1401097557.4829.20.camel@weser.hi.pengutronix.de>
 <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
 <CAOngqVU9N6Y1yR9A2NW4LRWJN8HeWti+ErMW6OxOjpJxDc74rQ@mail.gmail.com>
 <20140527180411.9c1c650b8e9d19fdcec7614d@gmail.com>
Date: Tue, 27 May 2014 19:26:14 +0200
Message-ID: <CAOngqVWfbkP7GunG25VP4-2a1_3y7Z0hxmBZf3OWKnL91b4JJA@mail.gmail.com>
From: Daniele Lacamera <daniele.lacamera@tass.be>
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Kristof Roelants <kristof.roelants@tass.be>, barebox <barebox@lists.infradead.org>, Sam Van Den Berge <sam.van.den.berge@tass.be>, Daniele Lacamera <mlists@danielinux.net>

Antony, thank you very much for the comments and the bug reports on
our github. See comments below.

On Tue, May 27, 2014 at 4:04 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> On Tue, 27 May 2014 11:46:29 +0200
> Daniele Lacamera <daniele.lacamera@tass.be> wrote:
>
>
> linux kernel and barebox use not so much #ifdef's because they use
> they use IS_ENABLED() macro with just the same result.
[...]
> so the code under IS_ENABLED() is always parsed by C compiler;
> if there is an syntax error in this code then the compilation will be stopped.

We will discuss this and see if it is applicable for PicoTCP. The
macro you are suggesting is indeed not increasing code size, but our
static checkers might be not so happy about all this preprocessor
machinery.

>
> $ gcc --version
> gcc (Debian 4.8.3-1) 4.8.3
>
> Here is my 'make -s' output for sandbox barebox:
>
[cut]

Thank You!! This *IS* very helpful input. We are going to add more -W
flags and quickly fix these warnings.

> But in linux kernel, barebox, qemu and IMHO many other projects
> there are:
>
>   * CODING_STYLE documentation file;
>   * scripts/checkpatch.pl
>

All good points. Being a kernel developer myself, I know the
checkpatch.pl approach, and indeed it is a good thing to distribute
coding rules if you accept contributions. Except it will never apply
to us, because:

- We have our company internal coding style which we apply to all our
projects and we don't feel the need to distribute externally (keep in
mind that we never planned to accept external contributions). Instead,
the repository contains the uncrustify configuration file, which is
pretty much self-explanatory.
- A few of us are checking every single commit, and running uncrustify
every now and then. We are comfortable with this approach
- Linux coding rules are generally recognized as possibly not the best
in the world. I especially dislike tabs.
- commit hooks are tedious

I am afraid we are not going to change our formatting style or policy,
but thanks anyway for the suggestions!

/d

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
