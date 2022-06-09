Delivery-date: Thu, 09 Jun 2022 10:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDtX-008a5N-E0
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 10:51:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzDtV-0004UJ-3j
	for lore@pengutronix.de; Thu, 09 Jun 2022 10:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTDkuu5ICCH97+Rwg3fpS9L3jvJgI3cxWYUkoQ45714=; b=LhmnFkTrXJIKK5
	GQqe5vgCBw+N4eie9jKyHIGtTJAU+gsyiiaPxx0IJrdgqlEZkuLZXviMsKroQE0Z+hGPaQlRdsjuq
	lCZhc3lWgeOswnDlNIXeRkKiV9Z6KHcz7H3J5uXqYQedb7ZEAdxXW+uWUqM5aslm84It8GdKlNJX8
	5VJDjcvKmfij3H08OTSzxOLqLhfYggmVOk+hCC1ZVy1lYyHlFdY+j/cu4zvHREOjnG6eQi60Vba6q
	Z+mPsyZTGQo4nIPHxpxvAYuqiygcMGa6i86V1q//HnBr/6Tc6fpuVKimhEJZKrxIVDtt/5cGlD0ZT
	7919l3XjHF4YkCoMHgig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDs0-000Ocu-QZ; Thu, 09 Jun 2022 08:50:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDeE-000I4F-Bz
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 08:36:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1nzDeC-0001Ru-VO; Thu, 09 Jun 2022 10:36:09 +0200
Message-ID: <faa595b2-2b48-a2c8-8dd0-436583b59eee@pengutronix.de>
Date: Thu, 9 Jun 2022 10:36:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20220609054342.661505-1-a.fatoum@pengutronix.de>
 <20220609054342.661505-5-a.fatoum@pengutronix.de>
 <20220609083119.GG1615@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220609083119.GG1615@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_013610_486677_712D4FD2 
X-CRM114-Status: GOOD (  29.63  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] of: request reserved memory regions so other code
 can't
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.06.22 10:31, Sascha Hauer wrote:
> On Thu, Jun 09, 2022 at 07:43:42AM +0200, Ahmad Fatoum wrote:
>> From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
>>
>> Add a reserved_mem_read initcall which parses the reserved-memory
>> entries and adds barebox of reserve entries. This avoids e.g. bootm
>> trying to place the kernel into a reserved region.
>>
>> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Compared with Rouven's v2, rename OF_RESERVE_ENTRY_FLAG_NO_RESERVE
>> to NO_FIXUP and read both /reserved-memory and /memreserve
>> to request memory regions.
>> ---
>>  common/memory.c     | 21 +++++++++++++++++++--
>>  drivers/of/Makefile |  1 +
>>  drivers/of/fdt.c    | 12 ++++++++----
>>  include/of.h        |  2 ++
>>  4 files changed, 30 insertions(+), 6 deletions(-)
>>
>> diff --git a/common/memory.c b/common/memory.c
>> index 95995bb6e310..b40c74bfe97f 100644
>> --- a/common/memory.c
>> +++ b/common/memory.c
>> @@ -12,6 +12,7 @@
>>  #include <asm-generic/memory_layout.h>
>>  #include <asm/sections.h>
>>  #include <malloc.h>
>> +#include <of.h>
>>  
>>  /*
>>   * Begin and End of memory area for malloc(), and current "brk"
>> @@ -53,9 +54,12 @@ void mem_malloc_init(void *start, void *end)
>>  	mem_malloc_initialized = 1;
>>  }
>>  
>> -#if !defined __SANDBOX__
>>  static int mem_malloc_resource(void)
>>  {
>> +	struct of_reserve_map *map;
>> +	int i;
>> +
>> +#if !defined __SANDBOX__
>>  	/*
>>  	 * Normally it's a bug when one of these fails,
>>  	 * but we have some setups where some of these
>> @@ -80,10 +84,23 @@ static int mem_malloc_resource(void)
>>  #ifdef STACK_BASE
>>  	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
>>  #endif
>> +#endif
>> +
>> +	map = of_get_reserve_map();
>> +	if (!map)
>> +		return 0;
>> +
>> +	for (i = 0; i < map->num_entries; i++) {
>> +		const char *name;
>> +
>> +		name = map->runtime_fw & BIT(i) ? "protected code" : "protected data";
>> +		request_sdram_region(name, map->start[i],
>> +				     map->end[i] - map->start[i] + 1);
>> +	}
> 
> Regions for entries that are present up to this point are always requested
> whereas regions for entries that are added later are never requested.
> This only works for you because all regions you are interested in
> (OPTEE, ppa) happen to be registered before this point while all others
> that you can't do a request_sdram_region() on happen to be added after
> this point. That looks quite fragile.

I can't do request_sdram_region before the SDRAM is registered. 

> If you want to protect OPTEE resources then call request_sdram_region()
> from the code instantiating OPTEE. In case of OPTEE this happens too
> early when the resource system is not yet ready, so pick it up in a
> later initcall.

This here is the later initcall doing the requesting?

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

