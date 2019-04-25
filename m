Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJblm-0003H3-Mp
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 10:38:24 +0000
References: <20190423171852.26126-1-a.fatoum@pengutronix.de>
 <20190423171852.26126-2-a.fatoum@pengutronix.de>
 <20190423173944.GA8801@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <cc89207d-0414-daeb-0959-f1060650e41b@pengutronix.de>
Date: Thu, 25 Apr 2019 12:38:18 +0200
MIME-Version: 1.0
In-Reply-To: <20190423173944.GA8801@ravnborg.org>
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
Subject: Re: [PATCH 1/5] ARM: cache-armv7: add work-around for errata 814220
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, ore@pengutronix.de, rcz@pengutronix.de

Hello Sam,

On 23/4/19 19:39, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Tue, Apr 23, 2019 at 07:18:48PM +0200, Ahmad Fatoum wrote:
>> The v7 ARM states that all cache and branch predictor maintenance operations
>> that do not specify an address execute, relative to each other, in program
>> order. However, because of this erratum, an L2 set/way cache maintenance
>> operation can overtake an L1 set/way cache maintenance operation, this would
>> cause the data corruption.
>>
>> This ERRATA affected the Cortex-A7 and present in r0p2, r0p3, r0p4, r0p5.
>>
>> This patch is the SW workaround by adding a DSB before changing cache levels as
>> the ARM ERRATA: ARM/MP: 814220 told in the ARM ERRATA documentation.
>>
>> Signed-off-by: Jason Liu <r64343@freescale.com>
>> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
>> Acked-by: Arnd Bergmann <arnd@arndb.de>
>> [afa: picked from LKML: <20190214083145.15148-1-benjamin.gaignard@linaro.org>]
>> [afa: edited commit message headline]
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/Kconfig           | 12 ++++++++++++
>>  arch/arm/cpu/cache-armv7.S |  3 +++
>>  2 files changed, 15 insertions(+)
>>
>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>> index a683c9c86661..fc622640aa2b 100644
>> --- a/arch/arm/Kconfig
>> +++ b/arch/arm/Kconfig
>> @@ -448,4 +448,16 @@ config ARM_PSCI_DEBUG
>>  	  putc function.
>>  	  Only use for debugging.
>>  
>> +config ARM_ERRATA_814220
>> +       bool "ARM errata: Cache maintenance by set/way operations can execute out of order"
>> +       depends on CPU_V7
>> +       help
>> +         The v7 ARM states that all cache and branch predictor maintenance
>> +         operations that do not specify an address execute, relative to
>> +         each other, in program order.
> I have a hard time parsing the above. Seems like the last part of the
> sentence is maybe missing?

The [..] [manual] states that [..] operations [..] execute [..] in program order.

> 
>> +         However, because of this erratum, an L2 set/way cache maintenance
>> +         operation can overtake an L1 set/way cache maintenance operation.
>> +         This ERRATA only affected the Cortex-A7 and present in r0p2, r0p3,
>> +         r0p4, r0p5.
> It would be good to say that this should be enabled if so-and-so.
> 
> also consider the cost to have it always enabled. It is a single asm
> instruction but I do not know the impact on a typical boot.

I don't know either, but as there are two in favor of doing away with the Kconfig
option, I'll do so in v2.

Cheers
Ahmad

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
