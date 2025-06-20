Delivery-date: Fri, 20 Jun 2025 18:15:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSeOl-009Kd8-29
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 18:15:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSeOl-0004Wq-2D
	for lore@pengutronix.de; Fri, 20 Jun 2025 18:15:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YxdJYXJ3XhAxzuvofFUEHWVFvPyzPmQZvqaPsjzCnAg=; b=Rc9ZLSq5qed8x5m/DqB63Z/1xs
	CjIEzo5vwPHp8GlzxXZpAw9VwHP+9m0tB2R6MNqm+m+Kq4KIHwjtKMsH9C59mxrvyAJYT41PQmHDn
	1tsFe1+VvwKbHSST1PWUYszNMWlTB/EabRfE5NCLuQ+6HeCwcAanm07YAUFXT0YpRsMm/dtZwEWTF
	Nn+Xo/zNgM6/YGfc1mI8SqfaZp4BMcjcwp16aWbAu/e8JBeMz1M1NVolw5EjxXtAJwVT5qeT57upU
	o5LcO+neUVEQzrYArHNR5FGE7kHh1k48Gapb/FgUDgxsLXZ/kHSCD+8cTeolIHHQi5VpfNcBUcoQd
	6wduV8gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSeO1-0000000G6rM-17ex;
	Fri, 20 Jun 2025 16:14:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSdw5-0000000G226-0VUn
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 15:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uSdw2-0000pf-0b; Fri, 20 Jun 2025 17:45:46 +0200
Message-ID: <0c5b58a4-bc8a-4775-a265-f1bb2b46eea0@pengutronix.de>
Date: Fri, 20 Jun 2025 17:45:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20250618123642.1432610-1-a.fatoum@barebox.org>
 <aFVYBJikCmjGpupI@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aFVYBJikCmjGpupI@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_084549_178574_8FBD7392 
X-CRM114-Status: GOOD (  24.75  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mmu: explicitly map executable non-SDRAM regions with
 MAP_CODE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.06.25 14:45, Sascha Hauer wrote:
> On Wed, Jun 18, 2025 at 02:36:42PM +0200, Ahmad Fatoum wrote:
>> So far we have been setting eXecute Never on MAP_UNCACHED regions and
>> left it out for the default MAP_CACHED region.
>>
>> We have at least three places, which depend on this to remap non-SDRAM
>> regions executable, so ROM code or newly uploaded code can be run.
>>
>> Switch them over to use a new MAP_CODE mapping type. For now, this is
>> equivalent to MAP_CACHED, but with the addition of W^X support in
>> barebox, this will be required to avoid a prefetch abort when MMU
>> attributes are used.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>> Sascha, I think this should be ordered before your MMU patches to avoid
>> the known regressions. Let's see what else there is. :)
>> ---
>>  arch/arm/mach-imx/romapi.c | 3 ++-
>>  drivers/firmware/socfpga.c | 3 ++-
>>  drivers/hab/habv4.c        | 2 +-
>>  include/mmu.h              | 1 +
>>  4 files changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
>> index 10af42f28a76..a4143d372ae8 100644
>> --- a/arch/arm/mach-imx/romapi.c
>> +++ b/arch/arm/mach-imx/romapi.c
>> @@ -299,7 +299,8 @@ void imx93_bootsource(void)
>>  		goto out;
>>  	}
>>  
>> -	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CACHED);
>> +	/* TODO: restore uncached mapping once we no longer need this? */
>> +	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CODE);
>>  
>>  	OPTIMIZER_HIDE_VAR(rom_api);
>>  
>> diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
>> index 0f7d11abb588..4b10ca009798 100644
>> --- a/drivers/firmware/socfpga.c
>> +++ b/drivers/firmware/socfpga.c
>> @@ -353,7 +353,8 @@ static int socfpga_fpgamgr_program_finish(struct firmware_handler *fh)
>>  		return status;
>>  	}
>>  
>> -	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CACHED);
>> +	/* TODO: restore uncached mapping once we no longer need this? */
>> +	remap_range((void *)CYCLONE5_OCRAM_ADDRESS, PAGE_SIZE, MAP_CODE);
> 
> This is done before the code is copied to this page. I moved it after
> the fncpy call to avoid writing to readonly memory.

fncpy calls memcpy internally though, so we should either leave the MAP_CACHED
as is and add a further MAP_CODE after the fncpy or introduce a fncpy_toio
that calls memcpy_toio internally.

What do you think?

> While at it I also added the remapping to MAP_UNCACHED.

Thanks,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


