Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-f196.google.com ([209.85.216.196])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWsha-0007mP-Fy
 for barebox@lists.infradead.org; Thu, 26 Jan 2017 22:39:36 +0000
Received: by mail-qt0-f196.google.com with SMTP id n13so41822668qtc.0
 for <barebox@lists.infradead.org>; Thu, 26 Jan 2017 14:39:13 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170124080943.mkjwtzpsoghg57ns@pengutronix.de>
References: <20170123055735.1277-1-andrew.smirnov@gmail.com>
 <20170124080943.mkjwtzpsoghg57ns@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Jan 2017 14:38:12 -0800
Message-ID: <CAHQ1cqED7WE_9Settx3di9x2jvROt5AsBC7kr4miuQ9VmXqb2Q@mail.gmail.com>
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
Subject: Re: [PATCH] i.MX: vf610: Add support for ZII VF610 Dev Family
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 24, 2017 at 12:09 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Sun, Jan 22, 2017 at 09:57:34PM -0800, Andrey Smirnov wrote:
>> Add support for ZII VF610 Dev based designs such as:
>>
>>     - VF610 Dev, revision B
>>     - VF610 Dev, revision C
>>     - CFU1, revision A
>>     - SPU3, revision A
>>     - SCU4 AIB, revision C
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>
>> Sascha, this patch is rebased on 'next' instead of 'master' so that
>> you won't have to resolve conflicts with RDU2 patches in 'next'. Let
>> me know if you'd rather have it rebased on 'master'.
>
> It's fine to base on next in this case.
>
>> +struct named_signal {
>> +     unsigned int gpio;
>> +     const char *name;
>> +     int value;
>> +};
>> +
>> +static int expose_signals(const struct named_signal *signals,
>> +                           size_t signal_num)
>> +{
>> +     int ret, i;
>> +
>> +     for (i = 0; i < signal_num; i++) {
>> +             const struct named_signal *signal = &signals[i];
>> +
>> +             if (signal->value < 0)
>> +                     ret = gpio_direction_input(signal->gpio);
>> +             else
>> +                     ret = gpio_direction_output(signal->gpio, signal->value);
>> +
>> +             if (ret) {
>> +                     pr_err("Failed to configure \"%s\"\n", signal->name);
>> +                     return ret;
>> +             }
>
> This looks like gpio_request_array(). Could you use this instead?

Almost. Unfortunately, gpio_request_array doesn't do much with "label'
portion of a descriptor, except to use it when displaying information
about GPIOs.

What I am doing here as well is exposing those GPIO in a very
primitive way by calling

export_env_ull(signal->name, signal->gpio);

and so it becomes possible to do things like

gpio_set_value ${soc_sw_rstn} 0

instead of having to use numeric value to designate desired GPIO. If
there's a way this can be done better or if there a good change we can
make to gpio_request_array(), I am more than happy to change this
code.

>
>> index 0000000..4465632
>> --- /dev/null
>> +++ b/arch/arm/boards/zii-vf610-dev/lowlevel.c
>> @@ -0,0 +1,132 @@
>> +#include <common.h>
>> +#include <linux/sizes.h>
>> +#include <mach/generic.h>
>> +#include <asm/barebox-arm-head.h>
>> +#include <asm/barebox-arm.h>
>> +#include <mach/vf610-regs.h>
>> +#include <mach/clock-vf610.h>
>> +#include <mach/iomux-vf610.h>
>> +#include <debug_ll.h>
>> +
>> +#if defined(CONFIG_DEBUG_LL)
>> +#    if !defined(CONFIG_DEBUG_VF610_UART)
>> +#            warning "CONFIG_DEBUG_LL is enabled but CONFIG_DEBUG_VF610_UART is not"
>> +#    else
>> +#            if CONFIG_DEBUG_IMX_UART_PORT != 1
>> +#                    warning "CONFIG_DEBUG_LL output is not drirected to port 1"
>> +#            endif
>> +#    endif
>> +#endif
>
> Just because this board is enabled doesn't mean the user is actually
> currently interested in this board. He might want to enable
> CONFIG_DEBUG_LL for another board, still he is warned about an invalid
> config here. This is not good.
>

Heh, I added this portion of the code because I was having exactly the
opposite issue, but I see your point.

> You could drop the DEBUG_LL support and instead go to PBL console
> support. See arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
> for a good example. Basically it means you call this right after entry:
>
>         arm_early_mmu_cache_invalidate();
>         relocate_to_current_adr();
>         setup_c();
>         barrier();
>
> From here on you have a valid C environment (And thus don't need to work
> around switch/case with wrong LUTs) and can also call:
>
>         pbl_set_putc(xxx_uart_putc, uart);
>
> after that you can use printf like functions to print messages.
>

Thank you for the suggestion, if it is all the same to you I think
I'll just drop the preprocessor check, though. DEBUG_LL is more of a
debugging feature that very few people would use and switching to PBL
console would mean a bunch of additional work.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
