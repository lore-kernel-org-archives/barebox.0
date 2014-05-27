Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f53.google.com ([209.85.215.53])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpDy9-00057T-Lb
 for barebox@lists.infradead.org; Tue, 27 May 2014 09:46:54 +0000
Received: by mail-la0-f53.google.com with SMTP id ty20so4681849lab.26
 for <barebox@lists.infradead.org>; Tue, 27 May 2014 02:46:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <1401097557.4829.20.camel@weser.hi.pengutronix.de>
 <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
Date: Tue, 27 May 2014 11:46:29 +0200
Message-ID: <CAOngqVU9N6Y1yR9A2NW4LRWJN8HeWti+ErMW6OxOjpJxDc74rQ@mail.gmail.com>
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

Antony, regarding your comments on picotcp "cleaning", could you
please elaborate a bit more, taking into account my comments below?

On Mon, May 26, 2014 at 2:09 PM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Picotcp need some work for cleaning. I think that on average barebox code is more clean
> that picotcp code (there are too many #ifdefs, some compiler warnings, formatting),
> but IMHO it is not very difficult to make it cleaner.
>

- The amount of #ifdefs in the code is due to the size optimizations.
Types are left out when modules are disabled, would be much more
difficult to achieve the same code size, e.g. on a 8-bit machine, if
we used empty proxies instead, like for instance Linux does. Keep in
mind that saving a few bytes is the key for some of our projects, so I
would accept no modification for the sack of aesthetic if it would
impact on code size. Our quality processes ensure that the branching
is kept under control, and our continuous integration takes into
account enabling and disabling the modules.

- compiler warnings: AFAIK, our code is warning free on gcc, it might
be that a specific platform config could trigger some. We are
interested about your experience, please share your findings, but
please do not report -Wshadow warnings obtained with broken gcc (<=
4.6).
Our default set of warning flags:  -Wall -Wdeclaration-after-statement
-W -Wextra -Wshadow -Wcast-qual -Wwrite-strings
-Wmissing-field-initializers -Wconversion -Wcast-align

- formatting: Could it be that you checked an intermediate
masterbranch version? We run uncrustify periodically on the code, and
our formatting is consistent with our own rules.

Thanks


/d

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
