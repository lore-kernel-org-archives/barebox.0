Delivery-date: Tue, 24 Aug 2021 09:11:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIQb4-0005zQ-RN
	for lore@lore.pengutronix.de; Tue, 24 Aug 2021 09:11:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIQb2-0004ua-9a
	for lore@pengutronix.de; Tue, 24 Aug 2021 09:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5G4yeR2yi6G8MTpeqK22Sw5dRIvlx8TB3axZVP/X08c=; b=KciNt/+fMZHxsDXJt1sHowoL10
	GBi/yRKBbkdjIg0mqHbAe+Km6r6SFVDK+whE2HEsZGvLaI7PEHX/Gz/SUTKb8qWgTy8AVtMb+7Ew6
	4aFK3lTeNd5PSTozYaM5yleVX9dRsyELf4UDlkdF2IqKmwWc9+lsLS6r47VZRVdFF/UzPcG/bJJ+L
	bcKiocjzxOBANRuH2lxYIzIB3qKyD2cBALLfLy69E2YCV1zY9ZTBtT1gYOltXU7u1nFnujnh9FkOW
	R0Nq0doA4VgqQxkDsx/phNYxAyI/F67ZBVGb6SQyLeib+zXyWIGaFyyKMnVVvkuF8FlRI3NeWu5Zu
	jnD73jrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIQZ8-001zc0-OW; Tue, 24 Aug 2021 07:09:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIQZ1-001zah-Lt
 for barebox@lists.infradead.org; Tue, 24 Aug 2021 07:09:43 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mIQZ0-0004Zj-1l; Tue, 24 Aug 2021 09:09:38 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
 <20210803094418.475609-4-r.czerwinski@pengutronix.de>
 <270994d8-2970-5095-2f82-f8cf29054629@pengutronix.de>
 <20210809183042.GF11515@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <501906d6-58ff-7399-9ba4-012dc0a27537@pengutronix.de>
Date: Tue, 24 Aug 2021 09:09:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210809183042.GF11515@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_000939_776191_C20F55B2 
X-CRM114-Status: GOOD (  25.06  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/8] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.08.21 20:30, Sascha Hauer wrote:
> On Thu, Aug 05, 2021 at 04:06:42PM +0200, Ahmad Fatoum wrote:
>> On 03.08.21 11:44, Rouven Czerwinski wrote:
>>> Use the information from the reserved memory entries to modify the
>>> mapping of memory regions to mark them as uncachable and not-executable.
>>> This also prevents the processor from speculating into these regions,
>>> preventing hard to debug scenarios where boots fail for unknown reasons.
>>>
>>> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
>>> ---
>>>  arch/arm/cpu/mmu.c | 34 ++++++++++++++++++++++++++++++++--
>>>  1 file changed, 32 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
>>> index 6388e1bf14..73f4cf5b36 100644
>>> --- a/arch/arm/cpu/mmu.c
>>> +++ b/arch/arm/cpu/mmu.c
>>> @@ -17,6 +17,7 @@
>>>  #include <memory.h>
>>>  #include <asm/system_info.h>
>>>  #include <asm/sections.h>
>>> +#include <of.h>
>>>  
>>>  #include "mmu.h"
>>>  
>>> @@ -407,6 +408,36 @@ static void vectors_init(void)
>>>  	create_vector_table(ARM_LOW_VECTORS);
>>>  }
>>>  
>>> +static void create_sections_with_intersect(struct memory_bank *bank)
>>> +{
>>> +	struct of_reserve_map *res_map;
>>> +	unsigned long j_end;
>>> +	unsigned long end;
>>> +	unsigned long j;
>>> +	u32 pmd_flags;
>>> +	int i;
>>> +
>>> +	res_map = of_get_reserve_map();
>>> +	if (!res_map)
>>> +		return;
>>
>> If there is no reserve map, you should still map the banks cached.
>> So this early exit is wrong.
>>
>>> +
>>> +	end = bank->start + bank->size - 1;
>>> +
>>> +	for (j = bank->start; j < end; j += PGDIR_SIZE) {
>>> +		pmd_flags = PMD_SECT_DEF_CACHED;
>>> +		j_end = j + PGDIR_SIZE - 1;
>>> +
>>> +		for (i = 0; i < res_map->num_entries; i++) {
>>> +			if ((BIT(i) & res_map->xn) &&
>>> +			    j_end >= res_map->start[i] &&
>>> +			    j_end <= res_map->end[i])
>>> +				pmd_flags = PMD_SECT_DEF_UNCACHED | PMD_SECT_XN;
>>> +		}
>>> +
>>> +		create_sections(ttb, j, j_end, pmd_flags);
>>> +	}
>>
>> Do we need the nested loop? Can't we create sections cached first
>> and then iterate once over the reserved map, deduce the sections containing
>> start and end and map those uncached?
> 
> Wouldn't that open a window to speculate into the areas we want to avoid
> speculating into in the first place?

Right. Forgot that MMU is enabled here.

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

