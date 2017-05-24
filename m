Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDJz4-0001t1-SZ
 for barebox@lists.infradead.org; Wed, 24 May 2017 00:17:06 +0000
Received: by mail-pf0-x243.google.com with SMTP id f27so30734461pfe.0
 for <barebox@lists.infradead.org>; Tue, 23 May 2017 17:16:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170523083321.owwdw7vpirjpstup@pengutronix.de>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
 <20170523083321.owwdw7vpirjpstup@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 23 May 2017 17:16:42 -0700
Message-ID: <CAHQ1cqGjiSZSdxiga8g0WZ1ev+V13ymdsBbrKbpvvJxh6XTzkQ@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <cphealy@gmail.com>

On Tue, May 23, 2017 at 1:33 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, May 23, 2017 at 09:30:27AM +0300, Nikita Yushchenko wrote:
>> > So far this particular aspect of various DT-bindings has been handled
>> > on a per-driver basis. With this change, hopefully, we'll have a
>> > single place to handle necessary logic inversions and eventually
>> > would be able to migrate existing users as well as avoiding adding
>> > redundant code to new drivers.
>>
>> Do we have at least single case when same pin of the same chip is active
>> high in one use and active low in other use?
>>
>> I'd say that "logic values" of gpiolib is a major source of confusion,
>> at least in it's current form. The fact that
>>   gpio_set_value(..., 1)
>> does not set gpio value to 1 but instead sets gpio value to what is
>> configured as active, is non-intuitive at least. Maybe with different
>> API names (e.g. gpio_activate() / gpio_deactivate()) it could be better.
>
> Plain gpio_set_value() in Linux does not honour any ACTIVE_LOW flags,
> only gpiod_set_value() does. But anyway, you are right, it *is*
> confusing. I agree that we should have a different set of functions
> which honour the ACTIVE_LOW flag. Besides of being more consistent
> in the end I think it's the only way to not break any existing gpio
> setups in barebox. With a different API set we can review each driver
> change for unwanted side effects.

Sounds reasonable. I'll add the API and convert the rest of the
patches to use it appropriately in v2 of the patch.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
