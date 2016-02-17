Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22f.google.com ([2607:f8b0:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW8sc-0004Mo-0H
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 20:39:24 +0000
Received: by mail-vk0-x22f.google.com with SMTP id e185so25828279vkb.1
 for <barebox@lists.infradead.org>; Wed, 17 Feb 2016 12:39:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160217083424.GQ19372@pengutronix.de>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455672559-25061-4-git-send-email-andrew.smirnov@gmail.com>
 <20160217083424.GQ19372@pengutronix.de>
Date: Wed, 17 Feb 2016 12:39:00 -0800
Message-ID: <CAHQ1cqEtECwpUD8O2OdZMG9JkQ0VkfKpFfY=OYVH93==J1GvsA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 03/18] [RFC] at91: Make IS_ERR work for I/O pointers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Feb 17, 2016 at 12:34 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Feb 16, 2016 at 05:29:04PM -0800, Andrey Smirnov wrote:
>> Having this functionality partially "broken" opens the door for subtle
>> bugs in peripheral drivers for AT91 platform since it not straight out
>> obvious that IS_ERR might return a false positive.
>>
>> It also makes it much harder to judge the correctness of the driver
>> code, for example it is perfectly fine to use IS_ERR in at91-i2c.c since
>> I2C controller's register file is located at 0xFFFA_C000 (which it
>> doesn't but that's the subject for another patch), however one couldn't
>> help but wonder how the code it sam9_smc.c could possibly work given how
>> that module is located at 0xFFFF_EC00.
>
> 0x100000000 - MAX_ERRNO is still bigger than 0xFFFFEC00, so this should
> work.
>
> The workaround you suggest is sooo ugly, do we really need this? How
> many places are really affected by false positives in IS_ERR_VALUE?

Well, to be fair, it's not like IS_ERR is anything but a clever hack,
so code fixing it can't really get any prettier than the code it's
fixing. ;-)

So I did a bunch of datasheet comparison and it looks like here's what
we have available on AT91 in worst case:

- errnos in [-1; -320) should be fine, that chunk of memory has no
peripherals and is marked as "reserved".
- errnos in [-320; 336) clash with RTC block on SAM9's
- errnos in [-400; -inf)  is reserved for various peripheral blocks.

There are 15 peripheral block located withing the last memory page (I
haven't checked how many of them has BB drivers)

Current implementation has two potential problems: false positives for
IS_ERR in drivers for aforementioned peripherals and also the fact
that buggy code that doesn't check pointers via IS_ERR could
potentially write bogus values to registers of actual peripheral
blocks.

Another solution for this problem would be to compact errno's. It
looks like out of all errnos(in errno.h) BB is using, only
ERESTARTSYS, ERESTARTNOINTR, ERESTARTNOHAND, ENOIOCTLCMD,
EPROBE_DEFER, ENOTSUPP fall outside of [-1;-320) range. Do you think
we can move those and define MAX_ERRNO as 320 for AT91 as a fix?

>
> Another solution, although a job for someone familiar with coccinelle
> would be to change the prototype of dev_request_mem_region to
>
> int dev_request_mem_region(struct device_d *dev, int num, void __iomem **base);

On a slightly related subject, If you are open to changing
dev_request_mem_region's prototype can we do the in patch #8 of the
series instead of introducing additional function?

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
