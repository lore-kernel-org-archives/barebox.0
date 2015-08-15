Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x231.google.com ([2607:f8b0:4001:c06::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQkxG-0005Ot-70
 for barebox@lists.infradead.org; Sat, 15 Aug 2015 23:33:38 +0000
Received: by iods203 with SMTP id s203so117699459iod.0
 for <barebox@lists.infradead.org>; Sat, 15 Aug 2015 16:33:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150815205349.GA28427@ravnborg.org>
References: <1439657071-26736-1-git-send-email-andrew.smirnov@gmail.com>
 <20150815205349.GA28427@ravnborg.org>
Date: Sat, 15 Aug 2015 16:33:16 -0700
Message-ID: <CAHQ1cqHUVRbYe5Fx3NXigJkcR4ZXwOAHOCo-uDorXxyUseFuLA@mail.gmail.com>
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
Subject: Re: [PATCH v2] i2c-imx: Add missing preporcessor directives
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, Aug 15, 2015 at 1:53 PM, Sam Ravnborg <sam@ravnborg.org> wrote:
> Hi Andrey.
>
> On Sat, Aug 15, 2015 at 09:44:31AM -0700, Andrey Smirnov wrote:
>> On non-PowerPC platforms call to i2c_fsl_set_clk() will try to obtain
>> I2C clock freqency from i2c_fsl->clk, however that field would not be
>> initialized if CONFIG_COMMON_CLK is not set. This patch makes sure
>> that i2c_fls_set_clk() is a no-op on non-PPC targets when
>> CONFIG_COMMON_CLK is not set
>
> Per the other mail we will never hit this case.
> So you add an ifdef that never will be used,
> because this driver is either for IMX (which uses COMMON_CLK) or PowerPC.
>

IMHO, source code is orthogonal to build and configuration system.
While it is true that the configuration system would prevent this
combination of pre-processor symbols to ever be defined I think not
making this assumption would result in more reliable and robust source
code.

> There is this snip from the driver:
>
> #ifdef CONFIG_COMMON_CLK
>         i2c_fsl->clk = clk_get(pdev, NULL);
>         if (IS_ERR(i2c_fsl->clk))
>                 return PTR_ERR(i2c_fsl->clk);
> #endif
>
> You may have been inspired by that.
> To the best of my understanding the ifdef can be dropped,
> because clk_dev() is always defined, but retinr NULL if
> HAVE_CLK is not defined.
> I assume thsi is the case for PowerPC.

It doesn't really matter if this snip is present or not, since
i2c_fls->clk would either be NULLed by the value returned by clk_get()
or it would be zero from the time the memory for i2c_fls was
kzalloc'ed. The point is that i2c_fsl->ifdr(AFAIU a clock divider)
would be populated with a bogus value.

>
> So the better fix would be to get rid of this ifdet,
> rather than introducing a new one.

IMHO, the patch is very trivial yet between the two of us we already
exchanged 4 e-mails discussing it, so this whole thing is rapidly
descending into a bike-shedding exercise. Since I agree with you that
this bug is very unlikely to be triggered, let's just drop this patch.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
