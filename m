Delivery-date: Sat, 06 Sep 2025 02:13:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugYV-008daM-0w
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:13:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugYT-0000jR-M5
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:13:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ymsafi9DP4jPF7bfHssHGgtjqU03EUbHCkkACLJPwR8=; b=hZrCP09eQtHo+jHTyCMjqbo7+a
	4xJ9Y+j+8H084WNLYUFVnY6rWhx96WSKhs59xubNB+g8qBMJCQ+WmbgZptiyVpcoAMECUt74E4oPt
	EAggdH0w55LjuaTjj0xSpjVf193qGN7BCEkXROE6N4K1NCbRtnCo9KNtW6FTYjeRkj0LDlYkSHQdc
	AABLY76z0aWYU7HImR89+1YbhnSPoc2XJgdnLAcpUn7s7JdzazHSBzVR2IxqdTUBxY21Z30v4Gfiv
	o14no25xwiKcMKG8kmNF1mu5JIRBkscLUq6DLv8HL3fYm0CfBTIPunp9FZzyT4Tc0FUQlbRr+atGP
	Ng9f6kjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugXq-00000005VyU-3KQi;
	Sat, 06 Sep 2025 00:12:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubxZ-000000044lJ-2ySX
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 19:18:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uubxY-0007Hv-Ew; Fri, 05 Sep 2025 21:18:56 +0200
Message-ID: <20815bf1-dd84-4e96-915b-ddbbe5163ab7@pengutronix.de>
Date: Fri, 5 Sep 2025 21:18:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: anis chali <chalianis1@gmail.com>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250831035542.1623695-1-chalianis1@gmail.com>
 <20250831035542.1623695-7-chalianis1@gmail.com>
 <4e375172-1a65-40f8-a3a5-f35ae6a515c5@pengutronix.de>
 <2d921c4127fd496c668ab5ef1a6ee874352ef25d.camel@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <2d921c4127fd496c668ab5ef1a6ee874352ef25d.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_121857_754827_A1AFC4BC 
X-CRM114-Status: GOOD (  33.97  )
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
Subject: Re: [PATCH 7/7] efi: payload: add options for FDT force and initrd
 direct install
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 9/5/25 12:30 AM, anis chali wrote:
> 
> Hello Ahmad,
> 
>>> ---
>>>  efi/Kconfig | 17 +++++++++++++++++
>>>  1 file changed, 17 insertions(+)
>>>
>> diff --git a/efi/Kconfig b/efi/Kconfig
>>> index 84f670fd23d3..c3811574920d 100644
>>> --- a/efi/Kconfig
>>> +++ b/efi/Kconfig
>>> @@ -50,4 +50,21 @@ config EFI_PAYLOAD_DEFAULT_PATH
>>>  
>>>  endif
>>>  
>>> +config EFI_FDT_FORCE
>>> +	bool "Force EFI provided FDT"
>>> +	default n
>>>
>>
>> n is the default
>>
>> +	help
>>> +	  with this options we keep the fdt passed by EFI in the
>>> +	  system configuration table, EFI has to suppot FDT otherwise
>>> +	  an empty fdt will be generated when linux boots by efi.
>>>
>>
>> These things should be runtime configurable and not in Kconfig.
>> Why can't you take a user-supplied FDT if there is one and otherwise
>> fall back to of_get_fixed_tree_for_boot() as fallback?
> 
> The reason why I ignore a user supplied fdt is the secure boot, in that case
> I only accept a signed fit image fdt or keep the efi supplied fdt which is
> already in the configuration tables so we can trust it, it is probably signed
> and verified by efi.

There's CONFIG_BOOTM_FORCE_SIGNED_IMAGES that should be used to disallow
booting unsigned images. If that option is disabled, we should give the
user the runtime choice to select which initrd and which device tree to use.

> concerning the of_get_fixed_tree_for_boot, I think we can not
> use it at least for now because, maybe I'm wrong but we didn't implement any code
> to tell barebox to use efi.dtb, we only implemented code to extract the fdt from
> configuration tables and write to /efi.dtb.

Ah, that's correct of course. Maybe we should just register the EFI dtb
as the barebox device tree... We will need to avoid things like
detecting the memory banks, but apart from that it would be useful to
e.g. probe drivers that are not exposed by the EFI firmware.

Anyways, even without that, of_get_fixed_tree_for_boot() should still be
used, so the user can specify a device tree.

>> +config EFI_INITRD_INSTALL
>>> +	bool "Install the initramfs by barebox"
>>> +	default n
>>> +	help
>>> +	  with this option barebox will install the initrd to the
>>> +	  system configuration table, same as what kernel do after
>>> +	  calling read file2 boot services, in this case the initrd
>>> +	  will be read directly by the kernel as an initramfs.
>>>
>>
>> Same thing, why can't we check for data->initrd and use that?
> to answer your question, the same reason as for fdt, in case of secure boot
> we ignore user supplied initrd. I think booti or bootm do the same thing, in
> secure boot mode they ignore overrides.

Maybe I am missing the big picture here, please apply the review
feedback so far and send a v2, then we can look into this again.

> concerning the EFI_INITRD_INSTALL, it is an option to early install the initrd 
> in barebox, instead of exposing a boot service protocol to linux, then linux calls back
> to barebox to get the initrd data and after that installing it to the system configuration
> data, I added this code in the begining to debug and after that I implemented as what did by grub2, u-boot...etc.

I am not familiar with the EFI protocols. I will read up on it and
compare for v2.

Thanks for your patches!
Ahmad

> 
> Thank you for your support, 
> 
> cheers
> Anis C.
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



