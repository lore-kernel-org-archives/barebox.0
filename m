Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDd1q-000807-1m
 for barebox@lists.infradead.org; Wed, 24 May 2017 20:37:11 +0000
Received: by mail-pf0-x244.google.com with SMTP id u26so34425044pfd.2
 for <barebox@lists.infradead.org>; Wed, 24 May 2017 13:36:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1495649778.5146.219.camel@kymetacorp.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
 <CAHQ1cqFDcR49fvD9JrtSgR5tEMZPnFdPsxSJvwF8c1crqGd7jA@mail.gmail.com>
 <db78852f-c295-d85b-1c38-3c31f2442d5f@cogentembedded.com>
 <1495649778.5146.219.camel@kymetacorp.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 24 May 2017 13:36:48 -0700
Message-ID: <CAHQ1cqEoXNdQA=1kCtxpC3dmJhYGiBY5PBxAOFCwBbZyJ5nj+w@mail.gmail.com>
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
To: Trent Piepho <tpiepho@kymetacorp.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: "nikita.yoush@cogentembedded.com" <nikita.yoush@cogentembedded.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "cphealy@gmail.com" <cphealy@gmail.com>

On Wed, May 24, 2017 at 11:16 AM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Wed, 2017-05-24 at 10:26 +0300, Nikita Yushchenko wrote:
>> First point is that words "active high" (or "active low") have very
>> clear meaning. And situation when chip's signal is active low, but one
>> has to write "active high" in signal definition to make things working,
>> is not something I welcome in systems I deal with.
>>
>> Second point is that by cleaning up the above, you make drivers depend
>> on correct polarity settings in dts. Which means that when writing dts,
>> you get need to dig over datasheets (which may be under NDA) to find out
>> polarity of each signal. This looks like breakage of information
>> locality - knowledge of chip's signals polarity belongs to chip's
>> driver. Common case of signals connected directly to gpio providers
>> should just work.  It's nice to have a way to override driver's default,
>
> I agree with this.  It's pretty much random if a given signal will want
> a high value to mean asserted or not.

Yes, and that the point of having "active low" being configurable in
device tree so it would be possible to use exactly the same driver
code for slightly different setups.

> And plenty of signals switch
> "modes" and it's not even clear which mode should be considered
> "asserted".

First this statement is so vague that it is hard to make any argument
about it. Second, just because a feature doesn't cover every possible
use-case doesn't mean that it doesn't have a place in the code base at
all.

> If drivers expect me to put active low/high in the
> bindings, then it means for every signal one must get the datasheet and
> figure out what a high signal means.  And then likely look though the
> driver code to make sure the driver sets 1 to mean that.
>

I don't see how "active low" changes the way you troubleshoot things
at all. If you are not lucky and you code didn't just work from the
first try, wouldn't you want to verify that you specified correct GPIO
number by looking at the schematic? And if so wouldn't you see what
high/low means by looking at the chip's symbol? If you don't have
access to a schematic, the only way I see to proceed with debugging it
is to probe correct pin on the chip with a scope, for which you'd need
at least an abridged datasheet that would have pinout documented.

Regardless of any of that, I seems to me that this is an argument
about personal preferences (I find the feature in question useful and
don't think it is confusing, you guys have dislike it) so I don't
think we'd resolve this any time soon.

IMHO, whether any of likes it or not, OF_GPIO_ACTIVE_LOW is an
existing feature and the only technical question is if it should be
supported by Barebox on per-driver basis or if there should be a
central API for it.

Sascha, are you still OK with me proceeding with making and using an
API, or should I just scrap that and handle this as a part of my
"usb-no-xcev"?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
