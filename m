Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZI2-00068a-JB
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 07:43:16 +0000
References: <20191001090939.11941-1-a.fatoum@pengutronix.de>
 <ce509f3679fe77b0bba26812a4adeb172f29b9d3.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d341943d-9833-aa58-e8bc-438611e9c93c@pengutronix.de>
Date: Wed, 2 Oct 2019 09:43:06 +0200
MIME-Version: 1.0
In-Reply-To: <ce509f3679fe77b0bba26812a4adeb172f29b9d3.camel@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: cache_64: invalidate icache in
 arm_early_mmu_cache_flush
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>, barebox@lists.infradead.org
Cc: andrew.smirnov@gmail.com, lst@pengutronix.de

On 10/2/19 9:38 AM, Rouven Czerwinski wrote:
> Hello Ahmad,
> 
> with these two patches applied, the NXP i.MX8MQ no longer starts into
> barebox.

Can you try each patch separately to see which one is the culprit?

Thanks for testing,
Ahmad

> 
> - rcz
> 
> On Tue, 2019-10-01 at 11:09 +0200, Ahmad Fatoum wrote:
>> So far arm_early_mmu_cache_flush has only been used in preparation
>> for
>> executing newly-written code. For this reason, on ARMv7 and below,
>> it had always invalidate the icache after the dcache flush.
>> We don't do this on ARM64, but sync_caches_for_execution depends on
>> this,
>> which had this comment that didn't hold true for ARM64:
>>
>>> Despite the name arm_early_mmu_cache_flush not only flushes the
>>> data cache, but also invalidates the instruction cache.
>>
>> It might be worthwhile to decouple dcache flushing from icache
>> invalidation, but for now, align what we do on ARM64 with what we do
>> for
>> 32-bit ARMs.
>>
>> This fixes a potential read of stale instructions when loading
>> second-stage barebox from the PBL with MMU disabled.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/cpu/cache_64.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm/cpu/cache_64.c b/arch/arm/cpu/cache_64.c
>> index 45f01e8dc9cf..847323525424 100644
>> --- a/arch/arm/cpu/cache_64.c
>> +++ b/arch/arm/cpu/cache_64.c
>> @@ -27,6 +27,7 @@ int arm_set_cache_functions(void)
>>  void arm_early_mmu_cache_flush(void)
>>  {
>>  	v8_flush_dcache_all();
>> +	v8_invalidate_icache_all();
>>  }
>>  
>>  void arm_early_mmu_cache_invalidate(void)
> 
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
