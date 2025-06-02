Delivery-date: Mon, 02 Jun 2025 14:15:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM44n-002xPI-16
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 14:15:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM44m-0007Ir-O1
	for lore@pengutronix.de; Mon, 02 Jun 2025 14:15:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nutNq5Vh3xDx4rJCqhdctrJg5UbCQWju6gP+0nFzglk=; b=BNz5PZIiVScxuEuDk18WSYJaZr
	LL9Qtp6w6lafSRy9bdEaOY5kz3KKUxEv1YysQ2osX5esb8YP1izP23AHv9pNNXJoyrC/o1/7owmz2
	/0PzLX8d8PGFfRHv7K0Tj4wQBjH4HDO12lVIzy0SDl5ul4pa5cl+JrrIzPRbCKyDa/eX68KybJyIh
	aUfSEDKP/CSDLtyYb1W99cqFsFmLKnHkcO7Dcdb0U9+09XqIowZvF4qqOz2Uzsxvt53JIuJDDe/ks
	1bBF8ybrAhKp5rO4Y23RqwLwhAEnQjgHQS8xbCvMn67cVHjJjGUuAPHTvy+hK2auLM8ZJDGyPGiVd
	YOwSUjDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM44K-00000007L4r-0uCX;
	Mon, 02 Jun 2025 12:15:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM43q-00000007L1F-0o8F
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 12:14:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM43o-0006vw-QD; Mon, 02 Jun 2025 14:14:36 +0200
Message-ID: <8d27b9f5-7b0d-4489-884b-38339adb0fec@pengutronix.de>
Date: Mon, 2 Jun 2025 14:14:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20250527212300.575031-1-a.fatoum@barebox.org>
 <20250527212300.575031-8-a.fatoum@barebox.org>
 <aD2VWAhkaVs9txjY@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aD2VWAhkaVs9txjY@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_051438_235562_FAFADF9A 
X-CRM114-Status: GOOD (  19.50  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 07/15] efi: types: implement
 efi_phys_to_virt/efi_virt_to_phys helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/2/25 14:13, Sascha Hauer wrote:
> On Tue, May 27, 2025 at 11:22:52PM +0200, Ahmad Fatoum wrote:
>> From: Ahmad Fatoum <ahmad@a3f.at>
>>
>> We shouldn't have any physical addresses exceeding 32-bit on 64-bit
>> systems,
> 
> Why? Aren't 64bit physical addresses normal on 64bit systems?

Sorry, other way round. We shouldn't have 64-bit addresses on 32-bit
systems.

> 
>> especially as barebox doesn't implement ARM32 LPAE.
> 
> This patch doesn't seem to be Arm specific, so why mention ARM32 LPAE
> here?
> 
> I think I am missing something here.

Sorry for the Switcharoo. Can you fixup or should I resend?

Thanks,
Ahmad

> 
> Sascha
> 
>>
>> Add helpers to convert between the types to be able to drop casts and
>> checks in the code.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>> ---
>>  include/efi/types.h | 17 +++++++++++++++++
>>  1 file changed, 17 insertions(+)
>>
>> diff --git a/include/efi/types.h b/include/efi/types.h
>> index c845d08d62b6..85aaf32f8f1d 100644
>> --- a/include/efi/types.h
>> +++ b/include/efi/types.h
>> @@ -2,7 +2,11 @@
>>  #ifndef _EFI_TYPES_H_
>>  #define _EFI_TYPES_H_
>>  
>> +#ifndef __ASSEMBLY__
>> +
>>  #include <linux/types.h>
>> +#include <linux/limits.h>
>> +#include <linux/stddef.h>
>>  #include <linux/compiler.h>
>>  #include <linux/uuid.h>
>>  
>> @@ -65,4 +69,17 @@ union efi_ip_address {
>>  	struct efi_ipv6_address v6;
>>  };
>>  
>> +static inline void *efi_phys_to_virt(efi_physical_addr_t addr)
>> +{
>> +	if (addr > UINTPTR_MAX)
>> +		__builtin_trap();
>> +
>> +	return (void *)(uintptr_t)addr;
>> +}
>> +
>> +static inline efi_physical_addr_t efi_virt_to_phys(const void *addr)
>> +{
>> +	return (uintptr_t)addr;
>> +}
>> +
>>  #endif
>> -- 
>> 2.39.5
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



