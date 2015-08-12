Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZPUuO-0001Ec-PQ
 for barebox@lists.infradead.org; Wed, 12 Aug 2015 12:13:29 +0000
Received: by wicja10 with SMTP id ja10so110722488wic.1
 for <barebox@lists.infradead.org>; Wed, 12 Aug 2015 05:13:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55CB2C1C.4000002@insync.tv>
References: <55CB2C1C.4000002@insync.tv>
Date: Wed, 12 Aug 2015 14:13:05 +0200
Message-ID: <CALHxSV7F2mNDQCsvLi8oRR8tguOVLfYZs+wK=ojzKc85nUaeRw@mail.gmail.com>
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
Subject: Re: MTD with non-power-of-2 page size
To: Dave Kitchen <dave.kitchen@insync.tv>
Cc: barebox@lists.infradead.org

On 12 August 2015 at 13:21, Dave Kitchen <dave.kitchen@insync.tv> wrote:
>
> I have just started to work with barebox on an Atmel at91sam9g45 processor.
> The board has an Atmel AT45DB161 dataflash configured as 528-byte page size.
> I find that eg saveenv command does not run as the page erase fails with
> EINVAL. On tracing this is fired from the page size and offset correction
> code [mtd/core,c mtd_erase_align()] which uses bit masking to align the size
> and offset. Unfortunately bit-masking does not work with non-power-of-2
> pages. Has anyone else addressed this problem?
>

Yes, it's a bit of an annoying problem...

The easy solution (if you can spare the space) is to increase the
partition size, e.g. 128*528 should work (which is what I'm currently
using) and any multiple thereof. I'm fairly certain that 64*528 (and
any multiple thereof) should also work, but it was a while since I
messed around with that so you'll have to test it yourself.

You can also reprogram the device to present pages that are
power-of-two, but you should be aware that you lose some space
(pages*16) and the process is not reversible (you've been warned!),
see the datasheet for more information.

Best,
Simon Aittamaa

> The 'trivial' exercise of replacing the bit masks by modulo [%] operator
> does not succeed as the compiler I am using (gcc!) does not support
> long-long divmod.
>
> Regards
> Dave Kitchen
> InSync technology Ltd
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
