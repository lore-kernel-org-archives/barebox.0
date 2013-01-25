Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f44.google.com ([209.85.219.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TyiQf-0003S6-5K
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 12:30:45 +0000
Received: by mail-oa0-f44.google.com with SMTP id n5so283373oag.31
 for <barebox@lists.infradead.org>; Fri, 25 Jan 2013 04:30:43 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20130125114700.GA26329@game.jcrosoft.org>
References: <1359038535-6051-1-git-send-email-fabio.porcedda@gmail.com>
 <20130124155152.GW26329@game.jcrosoft.org>
 <CAHkwnC-QJmzy1i2J185Te-nQe=qsmCEu3c8Gdzokg6hsegi7HA@mail.gmail.com>
 <20130125114700.GA26329@game.jcrosoft.org>
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 25 Jan 2013 13:30:22 +0100
Message-ID: <CAHkwnC898SdOJfL6Uwt0ZJBViYp5wFZhgYOKbMzDckObe5MjXg@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] ARM: at91: Add Telit EVK-PRO3 board support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2013 at 12:47 PM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 11:49 Fri 25 Jan     , Fabio Porcedda wrote:
>> On Thu, Jan 24, 2013 at 4:51 PM, Jean-Christophe PLAGNIOL-VILLARD
>> <plagnioj@jcrosoft.com> wrote:
>> >> diff --git a/arch/arm/boards/telit-evk-pro3/init.c b/arch/arm/boards/telit-evk-pro3/init.c
>> >> new file mode 100644
>> >> index 0000000..06e6508
>> >> --- /dev/null
>> >> +++ b/arch/arm/boards/telit-evk-pro3/init.c
>> >> @@ -0,0 +1,178 @@
>> >> +/*
>> >> + * Copyright (C) 2007 Sascha Hauer, Pengutronix
>> >> + * Copyright (C) 2013 Fabio Porcedda <fabio.porcedda@gmail.com>, Telit
>> >> + *
>> >> + * This program is free software; you can redistribute it and/or
>> >> + * modify it under the terms of the GNU General Public License as
>> >> + * published by the Free Software Foundation; either version 2 of
>> >> + * the License, or (at your option) any later version.
>> >> + *
>> >> + * This program is distributed in the hope that it will be useful,
>> >> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> >> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> >> + * GNU General Public License for more details.
>> >> + */
>> >> +
>> >> +#include <asm/armlinux.h>
>> >> +#include <common.h>
>> >> +#include <gpio.h>
>> >> +#include <init.h>
>> >> +#include <linux/clk.h>
>> >> +#include <mach/at91_rstc.h>
>> >> +#include <mach/at91sam9_smc.h>
>> >> +#include <mach/board.h>
>> >> +#include <mach/io.h>
>> >> +#include <nand.h>
>> >> +
>> >> +#define BOOTSTRAP_SIZE 0xC0000
>> > this is really wired
>> >
>> > on 9260 you have anly 4KiB of sram so you bootstrap will be 4KiB MAX
>> >
>> > and as on 9260 the ROM code does not manage the bbt or even ECC correction
>> >
>> > you just need to reserve the first block of the NAND for it
>>
>>
>> You are right, but right now I can only use the Telit Official Bootstrap binary,
>> so I must use that address because is the address used by the original
>> bootstrap binary.
>>
>> To be able to use another address I want to port the Barebox AT91
>> Bootstrap or AT91Bootstrap.
>> Do you think is difficult to add support to the at91sam9260ek for
>> Barebox AT91 Bootstrap?
> it's impossible you have anly 4KiB on the 9260
> the minimal size of the boostrap is 20KiB on dataflash
> on nand it's 30KiB
>
> that's why we implement on other code to do this

Ok I understand.
So I have no other option. I will try to port the AT91Bootstrap.

Best regards
Fabio Porcedda

> Best Regards,
> J.
>>
>> > except this
>> >
>> > Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> >
>> > Best Regards,
>> > J.
>>
>> Best regards and thanks for reviewing.
>> --
>> Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
