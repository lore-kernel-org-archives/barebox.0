Delivery-date: Thu, 22 Jan 2026 15:18:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivWD-0049Lm-2D
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 15:18:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivWC-0003GR-JN
	for lore@pengutronix.de; Thu, 22 Jan 2026 15:18:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdBC5FkFAtAaGYElRVcGxji9P8I2Ln08fTZICmgk6Bw=; b=XIXBz8Wez4VrwE
	vrrpeUMbjv7Qszeq9M1BJiSOD+MW/V1MsMz8lX0iJH0vYD6jnkX4AfEab4tPdxQcGw++AvZWpH745
	JvWLMAwdQp4J51cQneypQhvQavEb8s9mUgHZGmOsVAcFpSob30IgH7E54s1gmqjClEPzi/xn5Po+2
	dy0/DIjLy+M9dgXYmf3EouCMp4eeKYTdy/XTI7i+PszqDnWwdibWJv2R7j5l5ukW8W8tS6TVKP098
	LbFMph+h8hTzc71h8V+OL0LT4uMJVFWq/VCM6+iadvI+zR3KM98pcVF8xCKMccxkxjdiLwLoBO82N
	/6UpmPLT9RKJo5X4c+Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivVl-00000007Dtm-3QvD;
	Thu, 22 Jan 2026 14:18:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivVh-00000007Dt3-2hKE
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 14:18:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vivVg-000390-1z; Thu, 22 Jan 2026 15:18:08 +0100
Message-ID: <19c6a860-0ca2-402d-9277-940d81e879b0@pengutronix.de>
Date: Thu, 22 Jan 2026 15:18:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-14-8f0625ac5471@pengutronix.de>
 <67f78008-804b-4732-bd94-2b2b7bda5ec8@pengutronix.de>
 <20260118182737.bjdtfiqxvwsr3cbc@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260118182737.bjdtfiqxvwsr3cbc@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_061809_685702_6BB04689 
X-CRM114-Status: GOOD (  29.60  )
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
Subject: Re: [PATCH 14/23] ARM: i.MX: scratch: add OP-TEE FDTO support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 1/18/26 7:27 PM, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 26-01-15, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 11/10/25 9:34 PM, Marco Felsch wrote:
>>> OP-TEE has the support to write DTB overlay fragments if enabled via
>>> OP-TEE config switch CFG_EXTERNAL_DTB_OVERLAY.
>>>
>>> The overlay fragments are added to the exisiting DTB if OP-TEE was
>>> started with a DTB provided via arg2 or written to a stand-alone DTB
>>> overlay.
>>>
>>> This adds a dedicated storage slot which can be passed to OP-TEE or be
>>> used by barebox to extract the added overlay fragment into it.
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>
>>
>>> +config SCRATCH_FDTO_SIZE
>>> +	hex
>>> +	default 0x0
>>> +	default 0x4000 if PBL_EARLY_FDT_LOAD
>>> +	prompt "Scratch FDTO size"
>>> +	help
>>> +	  The size of possible FDT overlay areas used by BL3x binaries to store
>>> +	  runtime generated overlays. Can be 0x0 if early FDT support is not
>>> +	  requied e.g. during BL31 and BL32 stage.
>>
>> I understand the need, but I dislike that we add such fine-grained
>> Kconfig symbols here. With Sascha's series to make barebox proper an
>> ELF, PBL will have more insight about how much space barebox proper
>> occupies and I intend to send a series after it to allow easier
>> allocation for hand-off data.
> 
> Don't get me wrong I don't like it either. To be honest, I really
> don't like the current firmware handling since it doesn't scale for
> multi-images.
> 
>> I will include provisions for passing around the device tree and an
>> overlay with that series, so please hold off sending your v2 until then.
> 
> This series is on the list since quite a while. Unfortunately I didn't
> had the time to ping the ML since I was busy with other projects and
> also tried in the mean time to get the missing OP-TEE part mainline.
> 
> However, I would like to get this mainline. Not sure how Sascha is going
> to pick the patchsets but for the purpose of converting behaviours I
> used a generic name like SCRATCH_FDTO_SIZE, instead of going the
> Rockchip way which defined a Rockchip specific variable (unfortunately).
> 
> However, I would like to get this series mainline ASAP since my customer
> is going to rely on the mechanism we implemented here. Furthermore it
> improves the situation for i.MX6/i.MX7 by a lot (with Fabians patchset).

Ack. I am fine with some improvement as long it doesn't break API as
discussed before.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>>
>> Thanks,
>> Ahmad
>>
>>
>>> +
>>>  config MALLOC_ALIGNMENT
>>>  	hex
>>>  	default 8
>>> diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
>>> index 43bf55de48099f1662cd4331620a93303d4dd710..a9745a95732dd961dcae83ec46c3eaa078d62a16 100644
>>> --- a/include/mach/imx/scratch.h
>>> +++ b/include/mach/imx/scratch.h
>>> @@ -15,6 +15,7 @@ const struct optee_header *imx_scratch_get_optee_hdr(void);
>>>  void imx_scratch_save_optee_hdr(const struct optee_header *hdr);
>>>  
>>>  void imx_scratch_get_fdt(void **fdt, unsigned int *fdt_sz);
>>> +void imx_scratch_get_optee_fdto(void **fdto, unsigned int *fdto_sz);
>>>  
>>>  #define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
>>>  #define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)
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



