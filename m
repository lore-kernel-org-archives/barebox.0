Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dDapv-0001CD-SB
 for barebox@lists.infradead.org; Wed, 24 May 2017 18:16:46 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 24 May 2017 18:16:19 +0000
Message-ID: <1495649778.5146.219.camel@kymetacorp.com>
References: <20170522152420.14443-1-andrew.smirnov@gmail.com>
 <20170522152420.14443-2-andrew.smirnov@gmail.com>
 <b2e10c3a-cf7d-e3ff-4707-447d56f2e45f@cogentembedded.com>
 <CAHQ1cqFDcR49fvD9JrtSgR5tEMZPnFdPsxSJvwF8c1crqGd7jA@mail.gmail.com>
 <db78852f-c295-d85b-1c38-3c31f2442d5f@cogentembedded.com>
In-Reply-To: <db78852f-c295-d85b-1c38-3c31f2442d5f@cogentembedded.com>
Content-Language: en-US
Content-ID: <88B307BBEB74944F909E9B5E68B3AFFC@kymetacorp.com>
MIME-Version: 1.0
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
To: "nikita.yoush@cogentembedded.com" <nikita.yoush@cogentembedded.com>
Cc: "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "cphealy@gmail.com" <cphealy@gmail.com>

On Wed, 2017-05-24 at 10:26 +0300, Nikita Yushchenko wrote:
> First point is that words "active high" (or "active low") have very
> clear meaning. And situation when chip's signal is active low, but one
> has to write "active high" in signal definition to make things working,
> is not something I welcome in systems I deal with.
> 
> Second point is that by cleaning up the above, you make drivers depend
> on correct polarity settings in dts. Which means that when writing dts,
> you get need to dig over datasheets (which may be under NDA) to find out
> polarity of each signal. This looks like breakage of information
> locality - knowledge of chip's signals polarity belongs to chip's
> driver. Common case of signals connected directly to gpio providers
> should just work.  It's nice to have a way to override driver's default,

I agree with this.  It's pretty much random if a given signal will want
a high value to mean asserted or not.  And plenty of signals switch
"modes" and it's not even clear which mode should be considered
"asserted".  If drivers expect me to put active low/high in the
bindings, then it means for every signal one must get the datasheet and
figure out what a high signal means.  And then likely look though the
driver code to make sure the driver sets 1 to mean that.

In cases where the polarity is arbitrary, it should be documented in the
bindings (like I did for the gpio leds binding) that one is expected to
provide the polarity.

The reason gpiolib doesn't naively handle polarity in gpio_set_value()
is because of speed.  Originally gpio_set_value() was an arch specific
inline function that could check if the numeric gpio number was in the
range reserved for on-SoC gpio lines (__builtin_constant_p() lets you do
that at compile time).  If so, the inline function could expand directly
to the code for setting the gpio, which could be just a single machine
instruction.  You lose that speed if you need to look up a gpio
descriptor and a driver state struct and check a bunch of flags and
acquire a spinlock.

This doesn't work anymore since even built in gpios use the Linux driver
model and dynamically allocate their IDs.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
