Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG8Vt-0000IO-3i
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 17:01:45 +0000
Received: by mail-io0-x243.google.com with SMTP id k127so28795855iok.1
 for <barebox@lists.infradead.org>; Mon, 04 Jan 2016 09:01:24 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160104092743.GF13058@pengutronix.de>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
 <1451627918-31967-3-git-send-email-andrew.smirnov@gmail.com>
 <20160104092743.GF13058@pengutronix.de>
Date: Mon, 4 Jan 2016 09:01:23 -0800
Message-ID: <CAHQ1cqF1_OHa7RXhLNYY-Vn-GGC79_ck_D++aQeMvoT0OFA5Fw@mail.gmail.com>
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
Subject: Re: [PATCH 3/6] ARM: Fix exception table setup in MMU-less mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>> +
>> +#define __exceptions_size (__exceptions_stop - __exceptions_start)
>> +
>> +#if __LINUX_ARM_ARCH__ >= 7
>> +
>
> This does not work. In arch/arm/Makefile we have:
>
> arch-$(CONFIG_CPU_32v7)         :=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)
> arch-$(CONFIG_CPU_32v6)         :=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
> arch-$(CONFIG_CPU_32v5)         :=-D__LINUX_ARM_ARCH__=5 $(call cc-option,-march=armv5te,-march=armv4t)
> arch-$(CONFIG_CPU_32v4T)        :=-D__LINUX_ARM_ARCH__=4 -march=armv4t
>
> We can build barebox with support for multiple ARM architectures, in this
> case __LINUX_ARM_ARCH__ is set to the smallest supported ARM architecture.
>
> You can encapsulate this code in a #ifdef CONFIG_CPU_32v7 to make sure
> it's only compiled when ARMv7 support is enabled. Then we still can not
> be sure that we actually run on ARMv7, we'll need an additional runtime
> check for:
>
>         if (cpu_architecture() >= CPU_ARCH_ARMv7)
>

Ah, good point. Will fix.

>> +static struct resource *place_vector_table(void)
>> +{
>> +     int i;
>> +     struct resource *vectors = NULL;
>> +     resource_size_t addr[2] = { 0x00000000, 0xFFFF0000 };
>> +
>> +     for (i = 0; i < ARRAY_SIZE(addr); i++) {
>> +             vectors = request_sdram_region("exceptions",
>> +                                            addr[i],
>> +                                            __exceptions_size);
>> +             if (vectors)
>> +                     break;
>> +     }
>> +
>> +     return vectors;
>> +}
>> +
>> +static int nommu_v4_vectors_init(void)
>> +{
>> +     u32 cr;
>> +     struct resource *vectors;
>> +
>> +     vectors = place_vector_table();
>> +     if (!vectors) {
>> +             pr_crit("Critical Error: Can't place exception vector table\n");
>> +             return 0;
>> +     }
>
> Several SoCs do not have SDRAM at 0x0 and 0xFFFF0000, so on these SoCs
> we would always see this message and have no chance to fix it.

I am not sure I see why this is a problem. Those SoC physically can't
support this feature, so if you disable MMU you basically choose for
boot ROM to handle the exceptions.

>
> Given that the < ARMv7 path is untested anyway I suggest to just skip it
> and require MMU support to get exception support (unless someone has a
> hardware to test this on).

The code seemed rather trivial, so I was hoping to save people some
legwork, but sure I'll drop that portion in the next version.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
