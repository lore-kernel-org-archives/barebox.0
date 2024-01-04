Delivery-date: Thu, 04 Jan 2024 12:18:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLk1-003SlZ-0c
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 12:18:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLk0-0005iO-3B
	for lore@pengutronix.de; Thu, 04 Jan 2024 12:18:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I4+n1xzv2qX8lUPxDWg+/SKol4a/B42KEqZdLApr4AA=; b=tbvaVRi799MO2QpoT5Mr9D+6RQ
	t25HI+4F5syao+SgicoYp1NuBY6Z6lhMmk2AzniU47FxSWMTujfLWuzeykdVO4OH/s5w4kxjx3qVQ
	D2XGHp++BxQgAk5/mR6gwStTAAsgk+A8dml3PO72+1Yg8NyKiwTXnbJGjh9DDN+6k//q8dGMWkzdi
	KjRYtxoO/R2Ic+9sEfgYkp9CNQMcTAhISwkZEmAUUMtZrjSaHRNEiVFkFKO5sDP+1zLIzVana8Y3z
	g9nAJsX0aKXXifWLmnJYYNuhe1t4LA+bntwFLbWYcEEEUih0C7dRm6FXaYsKjrznGHC5su4rjIgcd
	YEr9TacA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLiw-00Dfrf-1W;
	Thu, 04 Jan 2024 11:17:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLit-00Dfp8-0a
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 11:17:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rLLiq-0005La-JF; Thu, 04 Jan 2024 12:17:12 +0100
Message-ID: <af116cd9-ce59-4152-b19f-d654897df04c@pengutronix.de>
Date: Thu, 4 Jan 2024 12:17:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: barebox@lists.infradead.org, Michael Olbrich <mol@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-60-a.fatoum@pengutronix.de>
 <ZZWuTmS6DichQw5g@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZZWuTmS6DichQw5g@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_031715_215188_2B75B399 
X-CRM114-Status: GOOD (  26.43  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 059/112] efi: payload: init: restrict barebox mem to first
 1G only on x86
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 03.01.24 19:58, Michael Olbrich wrote:
> On Wed, Jan 03, 2024 at 07:12:19PM +0100, Ahmad Fatoum wrote:
>> When run as EFI payload, barebox will not have full access to DRAM and will
>> have to ask the EFI firmware for memory. It does so once at the beginning
>> and since commit 356aaef5a37d ("efi: improve malloc pool allocation"),
>> the buffer was always placed beneath the 1G boundary.
>>
>> Aforementioned commit didn't elaborate why a maximum of 1G in particular
>> was chosen. Anyways, non-PC architectures have different memory maps, so
>> a 1G limit doesn't make sense there. Therefore restrict the limit to
>> ARCH_X86. On non-x86, we allow the memory pages to be located anywhere.
> 
> The 1G is somewhat arbitrary but if you don't restrict the memory to 32bit,
> then loading the kernel may fail: The addresses in "struct
> linux_kernel_header" are only 32bit. So if you impose no restrictions at
> all, then this memory cannot be used for the kernel and initrd.

The limit for x86 remains at 1G. It's only for other architectures, that we
remove the limit. I suspect that other architectures won't have this kind
of problems though , because they would boot the kernel image via EFI load
and start image boot services, where the EFI firmware takes care to layout
the boot artifacts.

Once we have that in place, we could even use it on x86 instead of
using struct linux_kernel_header, but I haven't investigated this yet.

Thanks,
Ahmad


> 
> Regards,
> Michael
> 
>> This can break PCI drivers on systems that so far assumed barebox memory
>> is located in the first 4G, but that's ok. That code will need to be
>> fixed eventually anyway.
>>
>> Cc: Michael Olbrich <m.olbrich@pengutronix.de>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  efi/payload/init.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/efi/payload/init.c b/efi/payload/init.c
>> index 4b612e61afb3..0c2f38e9c86a 100644
>> --- a/efi/payload/init.c
>> +++ b/efi/payload/init.c
>> @@ -292,7 +292,7 @@ void efi_main(efi_handle_t image, struct efi_system_table *sys_table)
>>  		BS->handle_protocol(efi_loaded_image->device_handle,
>>  				&efi_device_path_protocol_guid, (void **)&efi_device_path);
>>  
>> -	mem = 0x3fffffff;
>> +	mem = IS_ENABLED(CONFIG_X86) ? 0x3fffffff : ~0ULL;
>>  	for (memsize = SZ_256M; memsize >= SZ_8M; memsize /= 2) {
>>  		efiret  = BS->allocate_pages(EFI_ALLOCATE_MAX_ADDRESS,
>>  					     EFI_LOADER_DATA,
>> -- 
>> 2.39.2
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



