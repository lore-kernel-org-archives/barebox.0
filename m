Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22e.google.com ([2a00:1450:4010:c07::22e])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDQhO-0005cs-AD
 for barebox@lists.infradead.org; Wed, 24 May 2017 07:27:16 +0000
Received: by mail-lf0-x22e.google.com with SMTP id m18so62188334lfj.0
 for <barebox@lists.infradead.org>; Wed, 24 May 2017 00:26:53 -0700 (PDT)
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
 <CAHQ1cqFDcR49fvD9JrtSgR5tEMZPnFdPsxSJvwF8c1crqGd7jA@mail.gmail.com>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <db78852f-c295-d85b-1c38-3c31f2442d5f@cogentembedded.com>
Date: Wed, 24 May 2017 10:26:50 +0300
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqFDcR49fvD9JrtSgR5tEMZPnFdPsxSJvwF8c1crqGd7jA@mail.gmail.com>
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
Subject: Re: [PATCH 2/4] gpiolib: Add code to support "active low" GPIOs
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

> I am not sure I really see a problem with the situation you describe
> and why you'd want to change device tree description (perhaps because
> I don't know all of the details). I agree, that, depending on you
> personal preferences, one might find it annoying that driver uses
> physical values, but other than that I don't see a technical problem
> with using physical values in the driver, since as you said, it's not
> very likely that same pin on the same chip would be active low/vs
> active high.

First point is that words "active high" (or "active low") have very
clear meaning. And situation when chip's signal is active low, but one
has to write "active high" in signal definition to make things working,
is not something I welcome in systems I deal with.

Second point is that by cleaning up the above, you make drivers depend
on correct polarity settings in dts. Which means that when writing dts,
you get need to dig over datasheets (which may be under NDA) to find out
polarity of each signal. This looks like breakage of information
locality - knowledge of chip's signals polarity belongs to chip's
driver. Common case of signals connected directly to gpio providers
should just work.  It's nice to have a way to override driver's default,
to handle signal inversion by board logic and other special cases, but
that should be purely optional.

Third point is code clearance. If routine is called set_value, has
argument that very looks like value to be set, but instead of setting
given value does something different, it's source of confusion and errors.

But perhaps this thread is wrong place to discuss all that.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
