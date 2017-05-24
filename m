Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDJxK-0008CI-8X
 for barebox@lists.infradead.org; Wed, 24 May 2017 00:15:15 +0000
Received: by mail-pf0-x243.google.com with SMTP id n23so30675924pfb.3
 for <barebox@lists.infradead.org>; Tue, 23 May 2017 17:14:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 May 2017 17:14:52 -0700
Message-ID: <CAHQ1cqFDcR49fvD9JrtSgR5tEMZPnFdPsxSJvwF8c1crqGd7jA@mail.gmail.com>
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
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Mon, May 22, 2017 at 11:30 PM, Nikita Yushchenko
<nikita.yoush@cogentembedded.com> wrote:
>> So far this particular aspect of various DT-bindings has been handled
>> on a per-driver basis. With this change, hopefully, we'll have a
>> single place to handle necessary logic inversions and eventually
>> would be able to migrate existing users as well as avoiding adding
>> redundant code to new drivers.
>
> Do we have at least single case when same pin of the same chip is active
> high in one use and active low in other use?
>

Same pin on the same chip? Probably no. But that's not really the
use-case for this change, there are a number of drivers that control
more or less an abstract device with logical operations rather that
specific chip. Consider the case of "gpio-leds" driver, for example,
there isn't a specific chip that this diver is written in mind with,
but depending on particular electrical design same pin ("enable") can
activate that LED either when it's low or high. Same for
"usp-nop-xceiv", it can be any USB PHY chip that doesn't require any
configuration and "reset" pin can be implemented as active low or
active high, but you'd still would want to do the same thing for both:
assert and then deassert reset whatever it means electrically.

> I'd say that "logic values" of gpiolib is a major source of confusion,
> at least in it's current form. The fact that
>   gpio_set_value(..., 1)
> does not set gpio value to 1 but instead sets gpio value to what is
> configured as active, is non-intuitive at least. Maybe with different
> API names (e.g. gpio_activate() / gpio_deactivate()) it could be better.
>

I have no problem moving this functionality into a separate API.

> I understand that we have these logic values in linux and may want
> similarity between linux and barebox. But far not sure at which side it
> should be fixed.
>
> Right now I'm trying to handle a situation (in linux) where chip has
> signal active low, but driver author just used gpiolib calls with
> physical values, inverted.  So device trees are plain wrong (stating
> gpio is active high which is not true) but changing that is about to
> break existing working setups.
>
> I don't know how many similar cases exist, but I guess that quite a few.
>  And all this is caused by enforcement of logical gpio values concept
> everywhere - while it is useful only in rare case of setup-dependent
> signal polarity.  In vast majority of cases signal polarity is
> chip-dependent, not setup-dependent.
>

I am not sure I really see a problem with the situation you describe
and why you'd want to change device tree description (perhaps because
I don't know all of the details). I agree, that, depending on you
personal preferences, one might find it annoying that driver uses
physical values, but other than that I don't see a technical problem
with using physical values in the driver, since as you said, it's not
very likely that same pin on the same chip would be active low/vs
active high.

Thanks,
Andrey Smrinov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
