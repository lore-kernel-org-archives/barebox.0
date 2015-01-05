Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8ENt-0006dY-N7
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 20:36:18 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1420364466-22400-1-git-send-email-robert.jarzmik@free.fr>
 <20150105131245.GG4544@pengutronix.de>
Date: Mon, 05 Jan 2015 21:35:55 +0100
In-Reply-To: <20150105131245.GG4544@pengutronix.de> (Sascha Hauer's message of
 "Mon, 5 Jan 2015 14:12:45 +0100")
Message-ID: <87zj9x3qz8.fsf@free.fr>
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
Subject: Re: [PATCH v2 1/2] ARM: pxa: add pxa3xx architecture
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

> On Sun, Jan 04, 2015 at 10:41:05AM +0100, Robert Jarzmik wrote:
>> +#ifdef CONFIG_ARCH_PXA2XX
>>  	pxa_suspend(PWRMODE_DEEPSLEEP);
>> +#endif
>> +#ifdef CONFIG_ARCH_PXA3XX
>> +	pxa3xx_suspend(PXA3xx_PM_S3D4C4);
>> +#endif
>
> 	if (cpu_is_*())
>
> instead of ifdefs?
That was my first try, but compilation did fail. Yet your other suggestion
(separate by SoC type) could take care of it.

>
>>  	unreachable();
>>  }
>> diff --git a/arch/arm/mach-pxa/mfp.c b/arch/arm/mach-pxa/mfp.c
>
> Better mfp-pxa3xx.c analog to mfp-pxa2xx.c?
Definitely, for v2.

> Instead of separating the source files by functionality you could
> separate them by SoC type. This would reduce the need for ifdefs.
Yes, good idea.

I'll create pxa3xx.c and pxa2xx.c, and stuff them with poweroff(),
reset_source(), etc ..., each with its own variant.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
