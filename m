Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBOKE-0006EY-SN
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 18:40:00 +0000
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-6-a.fatoum@pengutronix.de>
 <20190402173810.GB18142@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5cee40c5-5473-d878-befc-bf758a7c849c@pengutronix.de>
Date: Tue, 2 Apr 2019 20:39:56 +0200
MIME-Version: 1.0
In-Reply-To: <20190402173810.GB18142@ravnborg.org>
Content-Language: en-US
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
Subject: Re: [PATCH v3 05/15] ARM: at91: watchdog: implement at91_wdt_disable
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On 2/4/19 19:38, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Mon, Apr 01, 2019 at 12:18:13PM +0200, Ahmad Fatoum wrote:
>> Low level init code might want to disable the watchdog in PBL.
>> Provide a helper to do so.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-at91/include/mach/at91_wdt.h | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>>
>> diff --git a/arch/arm/mach-at91/include/mach/at91_wdt.h b/arch/arm/mach-at91/include/mach/at91_wdt.h
>> index 36d37b9d2d64..d295d35d1b5c 100644
>> --- a/arch/arm/mach-at91/include/mach/at91_wdt.h
>> +++ b/arch/arm/mach-at91/include/mach/at91_wdt.h
>> @@ -35,4 +35,20 @@
>>  #define		AT91_WDT_WDUNF		(1 << 0)		/* Watchdog Underflow */
>>  #define		AT91_WDT_WDERR		(1 << 1)		/* Watchdog Error */
>>  
>> +#ifndef __ASSEMBLY__
>> +// SPDX-License-Identifier: BSD-1-Clause
>> +/*
>> + * Copyright (c) 2006, Atmel Corporation
>> + */
>> +
>> +#include <asm-generic/io.h>
>> +
>> +static inline void at91_wdt_disable(void __iomem *wdt_base)
> 
> As we are copying a lot of code from at91bootstrap could
> we then use the same name for this function:
> driver/at91_wdt.c:void at91_disable_wdt(void)

${arch}_${subsystem}_${function} seems to be the usual naming scheme
for "globals". Why differ? I don't see the utility of copying
the at91bootstrap name. 

> 
> In at91bootstrap the address is a build time constant,
> but passing it as an value is better.
> So that part I do not ask you to consider to copy.
> 
> 	Sam
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
