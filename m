Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x22b.google.com ([2607:f8b0:400c:c08::22b])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZj4S-0004Ad-Li
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 19:31:14 +0000
Received: by mail-ua0-x22b.google.com with SMTP id f9so86844549uaf.4
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 12:30:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170724153637.GA18294@ravnborg.org>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
 <20170724145400.2279-2-andrew.smirnov@gmail.com>
 <20170724153637.GA18294@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 12:30:50 -0700
Message-ID: <CAHQ1cqHQLcn40a-Ze5MJwOwRqpnqD9HhfiqQB9akndLJhSgtqA@mail.gmail.com>
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
Subject: Re: [PATCH 1/9] gpiolib: Fix buggy flag detection code
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jul 24, 2017 at 8:36 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Andrey.
>
> On Mon, Jul 24, 2017 at 07:53:52AM -0700, Andrey Smirnov wrote:
>> Both GPIOF_ACTIVE_LOW and GPIOF_INIT_ACTIVE are multi-bit constants so
>> detecting their assertion using simple bit-wise and is incorrect and
>> would lead to false positives.
>>
>> Fixes: bbc499914 ("gpiolib: Add code to support "active low" GPIOs")
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>
> When looking at the resulting code there is now two ways to check
> flags in gpiolib.
> One where assume the flags are one bit values, and one where
> we make sure to check the resuting value for > 1 bit values.
> When revisitng this code in years from now this will look
> inconsistent and only if you look up gpio.h you will see
> why this is done in different ways.
>
> I dunno if this should be consistent, but as I noted this when
> reading the code I commented on this.
>
> The use of "const bool" also baffeled me, but it makes
> good sense to say that this bool value are not changed
> after it is initialised.
> And we use "const bool" in a few other places already.
> This was just the first time I noticed.
>
> So despite the comments:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
>
>         Sam
>
>
> The two ways flags are tested:
>> +     const bool active_low = (flags & GPIOF_ACTIVE_LOW) == GPIOF_ACTIVE_LOW;
>
>>       if (flags & GPIOF_DIR_IN) {

I can convert all of the code to use "(flags & mask) == mask" idiom
and add a comment to the code explaining it. Hopefully this will make
it less confusing and more "future proof".

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
