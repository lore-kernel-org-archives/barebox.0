Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x234.google.com ([2607:f8b0:4002:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y86Bv-0005pI-Dy
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 11:51:24 +0000
Received: by mail-yk0-f180.google.com with SMTP id 9so10179678ykp.39
 for <barebox@lists.infradead.org>; Mon, 05 Jan 2015 03:51:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20150105102339.GG30369@pengutronix.de>
References: <20141226095143.GB15818@ns203013.ovh.net>
 <20150105102339.GG30369@pengutronix.de>
Date: Mon, 5 Jan 2015 12:51:01 +0100
Message-ID: <CALHxSV5M_9Z=NPFWEpExyrGMX7yHxhFP6LQWnJHx-e19TJJnag@mail.gmail.com>
From: Simon Aittamaa <simon.aittamaa@gmail.com>
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
Subject: Re: [REGRESSION BUG] at91 is broken on barebox
To: barebox@lists.infradead.org

Since I also ran into this issue just before the holidays, I thought
I'd provide my 0.02$.

On 5 January 2015 at 11:23, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Fri, Dec 26, 2014 at 10:51:43AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> HI,
>>
>>       since the switch to ERR_PTR & co
>>
>>       for dev_get_resource_by_name & others the at91 is broken
>>
>>       as on barebox we use a 1:1 mapping and the check of the IS_ERR is
>>       ((unsigned long)-MAX_ERRNO)
>>
>>       but on at91 the PIT and so on are at 0xfffffd30 so on always seen as
>>       an error
>
> Damn :(
>
> Since dev_get_resource_by_name returns a struct resource pointer it
> shouldn't be broken, right?  What's broken should be:
>
> dev_get_mem_region_by_name
> dev_request_mem_region_by_name
> dev_request_mem_region
>
>
>
Correct, these function returns the 'start' field of the struct
resource, which contains the offending address.

>>
>>       so can we revert the commit on
>>
>>       ommit 92cc1b1f9e3363046583962859a3a8c054f4b94d
>
> Since these commits touch so many files I'm not sure we can simply
> revert these commits. All drivers that check for IS_ERR() from the above
> functions that were introduced after the commits to revert would have to
> be changed aswell.
>
> The functions should still work, but the error check with IS_ERR() does
> not, right? So as a stop gap solution we could drop the error check from
> the affected drivers and as the next step change the prototype of the
> affected functions to something like:
>
> int dev_request_mem_region(struct device_d *dev, int num, void __iomem **base);
>
Sounds like the only sane way, and that is also the point when I
realized that I had to put the fix on my TODO-list and live with the
workaround for now, since I have a few show-stopping issues that I
have to deal with first :-(

> Which drivers are affected anyway?
>
I've had to remove the IS_ERR() check in:
arch/arm/mach-at91/at91sam926x_time.c
drivers/pinctrl/at91-pinctrl.c
drivers/serial/atmel.c

There might be more drivers affected, but the list of drivers to check
shouldn't be that long, see the memory map on page 15 in the reference
manual[1]. Since it checks the base-address the AIC (0xfffff000)
should be fine, but the rest (PIOA, PIOB, ...) could incorrectly fail.

Best,
Simon Aittamaa

[1]: http://www.atmel.com/Images/doc6221.pdf

> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
