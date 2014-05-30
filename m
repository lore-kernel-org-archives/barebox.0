Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp02.atmel.com ([204.2.163.16] helo=SJOEDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqBrE-000380-1A
 for barebox@lists.infradead.org; Fri, 30 May 2014 01:43:44 +0000
Message-ID: <5387E231.9030403@atmel.com>
Date: Fri, 30 May 2014 09:43:13 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1401357333-6426-1-git-send-email-matteo.fortini@gmail.com>
 <08875C68-8986-4E67-A4ED-2C3F9C203A73@jcrosoft.com>
In-Reply-To: <08875C68-8986-4E67-A4ED-2C3F9C203A73@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] sama5d3x: fix AT91_SMC_CS offset stride
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>, Matteo Fortini <matteo.fortini@gmail.com>
Cc: barebox@lists.infradead.org

Hi J,

On 05/29/2014 08:11 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>
> On May 29, 2014, at 5:55 PM, Matteo Fortini <matteo.fortini@gmail.com> wrote:
>
>>
>> Acked-by: Bo Shen <voice.shen@atmel.com>
>> ---
>> arch/arm/mach-at91/sam9_smc.c | 4 ++++
>> 1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
>> index a137da4..65c4558 100644
>> --- a/arch/arm/mach-at91/sam9_smc.c
>> +++ b/arch/arm/mach-at91/sam9_smc.c
>> @@ -16,7 +16,11 @@
>>
>> #include <mach/at91sam9_smc.h>
>>
>> +#ifdef CONFIG_ARCH_SAMA5D3
>> +#define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x14))
>> +#else
>> #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * 0x10))
>> +#endif
> NACK no ifdef
>
> this need to be runtime

Oh, this make me read more and think more. The mode register in SMC on 
sama5d3 SoC also has different offset.

So, how about move this into <mach/at91sam9_smc.h>, or create a new 
<mach/sama5_smc.h>, and then, use #ifdef to choose different SoC? If 
this not acceptable, can we use #ifdef in <mach/at91sam9_smc.h>?

> and you need to put our SOB
>>
>> static void __iomem *smc_base_addr[2];
>>
>> --
>> 2.0.0.rc2

Best Regards,
Bo Shen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
