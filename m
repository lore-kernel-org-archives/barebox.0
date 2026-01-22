Delivery-date: Thu, 22 Jan 2026 15:16:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivUO-0049KF-25
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 15:16:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivUN-0002vc-9e
	for lore@pengutronix.de; Thu, 22 Jan 2026 15:16:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2QK1GW8eRTc3tbqWepUvt0wZXdS9N+36BsW1o4hFTk=; b=HhvdR/U8E+HRT+
	rJi9XH2onCPVhwmKCOujL19eI53Fyx19nBkuyKGbmicpkzy22xUZaxMM2+8g6DOjmXPb1plDKflzj
	We3Vtn6NDeoKsn02x9mAMmF/TfRabYr+yz3DFfvxEMQxykr/j5e5lXV74j/ufsa6Mf+voOZzyB64N
	nur/VlYjRnF20bEDsF1Iq0bP+uKFIttbYm1vjy/h6y1YzvJfDIRESUShJgbYgXEYo5NnJmzuW7rqh
	UrCjNGowDniYje57ww6xmqA8KWtlb3Wsb1qQjMnRKl6m+EUcipaYpUy7viKuXLBzCN0e1K38ZJf4a
	OUdCm696h3UXIPXifLDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivTs-00000007Dbn-0aoP;
	Thu, 22 Jan 2026 14:16:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivTp-00000007DbN-1BIZ
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 14:16:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vivTn-0002nr-OK; Thu, 22 Jan 2026 15:16:11 +0100
Message-ID: <49aaee62-89ec-4681-bbd6-f517d889057a@pengutronix.de>
Date: Thu, 22 Jan 2026 15:16:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-9-8f0625ac5471@pengutronix.de>
 <500efc62-d8d0-4057-9afd-03d8993cdda9@pengutronix.de>
 <20260118191856.56dwjwn62hltbnnb@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260118191856.56dwjwn62hltbnnb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_061613_482532_E3D9945E 
X-CRM114-Status: GOOD (  28.96  )
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/23] pbl: fdt: add pbl_load_fdt helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 1/18/26 8:18 PM, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 26-01-15, Ahmad Fatoum wrote:
>> Hello Marco.
>>
>> On 11/10/25 9:34 PM, Marco Felsch wrote:
>>> The helper provides a common FDT load mechanism to load the (compressed)
>>> DTB to the provided destination address. Early FDTs may required by
>>> other BL3x binaries like BL31 (TF-A) and BL32 (OP-TEE).
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>  arch/Kconfig  |  3 +++
>>>  include/pbl.h |  2 ++
>>>  pbl/Kconfig   | 11 +++++++++
>>>  pbl/fdt.c     | 75 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>  4 files changed, 91 insertions(+)
>>>
>>> diff --git a/arch/Kconfig b/arch/Kconfig
>>> index 55618bf896c25f2afa2786706e27fce6ab4b3a39..edd574879b244d3843f1b5a06e1e25c5d4acbc8d 100644
>>> --- a/arch/Kconfig
>>> +++ b/arch/Kconfig
>>> @@ -62,6 +62,9 @@ config ARCH_DMA_DEFAULT_COHERENT
>>>  config ARCH_HAS_DMA_WRITE_COMBINE
>>>  	bool
>>>  
>>> +config ARCH_HAS_EARLY_FDT_SUPPORT
>>> +	bool
>>> +
>>>  config ARCH_HAS_ASAN_FIBER_API
>>>  	bool
>>>  
>>> diff --git a/include/pbl.h b/include/pbl.h
>>> index 9db4652e833bf5e82fd42a1cae19e94c4f2f868f..bf0c9e2ba29428361cb16a572295e66f20acdd82 100644
>>> --- a/include/pbl.h
>>> +++ b/include/pbl.h
>>> @@ -31,6 +31,8 @@ fdt_device_get_match_data(const void *fdt, const char *nodepath,
>>>  
>>>  int pbl_barebox_verify(const void *compressed_start, unsigned int len,
>>>  		       const void *hash, unsigned int hash_len);
>>> +int pbl_load_fdt(const void *fdt, void *dest, int destsize);
>>> +
>>>  #endif
>>>  
>>>  void __noreturn barebox_pbl_entry(ulong, ulong, void *);
>>> diff --git a/pbl/Kconfig b/pbl/Kconfig
>>> index cab9325d16e8625bcca10125b3281062abffedbc..ea2086f33ea405ecd7b00065eaf9874218152b3a 100644
>>> --- a/pbl/Kconfig
>>> +++ b/pbl/Kconfig
>>> @@ -65,6 +65,17 @@ config PBL_VERIFY_PIGGY
>>>  	depends on ARM || MIPS || RISCV
>>>  	bool "Verify barebox proper hash before decompression" if COMPILE_TEST
>>>  
>>> +config PBL_EARLY_FDT_LOAD
>>> +	bool "Enable early FDT loading"
>>> +	depends on ARCH_HAS_EARLY_FDT_SUPPORT
>>> +	select LIBFDT
>>> +	help
>>> +	  This enables the support to decompress and load the barebox builtin DTB
>>> +	  during the pbl (BL2) phase.
>>> +
>>> +	  This is useful for BL31 and BL32 firmwares which may use the DTB for
>>> +	  device configuration.
>>
>> There are ARM terms, but this is the generic pbl/Kconfig. I should the
> 
> Yes, these terms are very ARM specific. I didn't wanted to mention
> OP-TEE by name since there are other TEEs as well.
> 
>> symbol here should have no prompt and instead should be selected by an
>> architecture specific symbol if and only if the functionality will
>> actually be used.
> 
> I don't know since in the end, this is board-specific decision made by
> the system-integrator.
> 
> That beeing said, I think it shouldn't be a Kconfig symbol at all,
> instead each board has to decide during runtime because this decision
> influences the system-boot-time.
> 
> ARCH_HAS_EARLY_FDT_SUPPORT - is independt, this should be set by the
> Platform/Arch for sure.

Yes, but the user visible option should be arch-specific as well.
It's ok to have a config symbol in pbl/ to reduce compile time, but it
should be promptless IMO.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>> Thanks,
>> Ahmad
>>
>>> +
>>>  config PBL_CLOCKSOURCE
>>>  	bool
>>>  
>>> diff --git a/pbl/fdt.c b/pbl/fdt.c
>>> index ac377446caeafb1beaeb211aa8bdec8767ae21fe..0cd9f5a0f11723e9f9b6848e8553da481b92f2be 100644
>>> --- a/pbl/fdt.c
>>> +++ b/pbl/fdt.c
>>> @@ -1,8 +1,10 @@
>>>  // SPDX-License-Identifier: GPL-2.0
>>> +#include <compressed-dtb.h>
>>>  #include <linux/libfdt.h>
>>>  #include <pbl.h>
>>>  #include <linux/printk.h>
>>>  #include <stdio.h>
>>> +#include <uncompress.h>
>>>  
>>>  static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
>>>  				   uint64_t *val)
>>> @@ -185,3 +187,76 @@ const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
>>>  
>>>  	return NULL;
>>>  }
>>> +
>>> +static int pbl_open_dtbz_into(const void *fdt, void *buf, int bufsize)
>>> +{
>>> +	const struct barebox_boarddata_compressed_dtb *compressed_dtb;
>>> +	int ret;
>>> +
>>> +	if (!fdt_blob_can_be_decompressed(fdt)) {
>>> +		pr_warn("DTB can't be decompressed\n");
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	compressed_dtb = fdt;
>>> +
>>> +	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION_NONE)) {
>>> +		ret = fdt_open_into(compressed_dtb->data, buf, bufsize);
>>> +		if (ret)
>>> +			pr_warn("Failed to open uncompressed DTB with %s\n",
>>> +				fdt_strerror(ret));
>>> +		return ret ? -EINVAL : 0;
>>> +	}
>>> +
>>> +	if (bufsize < compressed_dtb->datalen_uncompressed) {
>>> +		pr_warn("FDT buffer to small, min. %u bytes required\n",
>>> +			compressed_dtb->datalen_uncompressed);
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	ret = pbl_dtbz_uncompress(buf, (void *)compressed_dtb->data,
>>> +				  compressed_dtb->datalen);
>>> +	if (ret) {
>>> +		pr_warn("Failed to uncompress DTB err=%d\n", ret);
>>> +		return ret;
>>> +	}
>>> +
>>> +	if (!blob_is_fdt(buf)) {
>>> +		pr_warn("Failed to determine FDT type for uncompressed DTB\n");
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	/* Required to setup size data structures to allow runtime adaptions */
>>> +	ret = fdt_open_into(buf, buf, bufsize);
>>> +	if (ret)
>>> +		pr_warn("Failed to open decompressed DTB with %s\n", fdt_strerror(ret));
>>> +
>>> +	return ret ? -EINVAL : 0;
>>> +}
>>> +
>>> +int pbl_load_fdt(const void *fdt, void *dest, int destsize)
>>> +{
>>> +	int ret;
>>> +
>>> +	if (!IS_ENABLED(CONFIG_PBL_EARLY_FDT_LOAD))
>>> +		return -ENOTSUPP;
>>> +
>>> +	if (destsize == 0) {
>>> +		pr_warn("Skip early FDT load due to dest buffer size of 0-bytes\n");
>>> +		return -EINVAL;
>>> +	}
>>> +
>>> +	if (blob_is_fdt(fdt)) {
>>> +		ret = fdt_open_into(fdt, dest, destsize);
>>> +		if (ret)
>>> +			pr_warn("Failed to uncompressed DTB with %s\n",
>>> +				fdt_strerror(ret));
>>> +		return ret ? -EINVAL : 0;
>>> +	} else if (blob_is_compressed_fdt(fdt)) {
>>> +		return pbl_open_dtbz_into(fdt, dest, destsize);
>>> +	}
>>> +
>>> +	pr_warn("FDT detection failed\n");
>>> +
>>> +	return -EINVAL;
>>> +}
>>>
>>
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



