Delivery-date: Fri, 06 Feb 2026 14:02:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLTf-009UVG-37
	for lore@lore.pengutronix.de;
	Fri, 06 Feb 2026 14:02:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1voLTe-0007q7-Sh
	for lore@pengutronix.de; Fri, 06 Feb 2026 14:02:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=be4LEpAXaXzmw2IKqnmyhEn60f0cJru55V9AoGsOvhY=; b=F6IQHkG3th8ou9
	yvd4ZQRR+qQdxS0yf7BxpnQHlSWcunFhono+OM5KDjsVq8K9wkUr+O3TxZeYx/7Jsgnzv57mlWjJ3
	g//S+qp0aB5Bj5mRm3GALAoe4TAppN8470cvP14DGxFR8gMLxn/3F7+Os79B46hgVkO12o8k8Gq6n
	rq+TIUpWHF6g0T3EzkmXs7eA/8FM7n4Wqm3vFtTiVLFFwQ4SujEaxFETlvI4gDCPTfbMvjujIH4Ad
	PtsIjMESvJqy390lGmXQ6AaPdvuRf2jMMXLiUhC56vn7DouWAwrgtQxKs4BC6WaRwicEuyV0UbkdX
	VY4H4uDOUaAub29o+HmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLT5-0000000BKoN-29TR;
	Fri, 06 Feb 2026 13:01:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voLT2-0000000BKnx-28Eo
	for barebox@lists.infradead.org;
	Fri, 06 Feb 2026 13:01:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1voLT0-0007bc-SO; Fri, 06 Feb 2026 14:01:46 +0100
Message-ID: <a871ce2a-00e9-46ec-912a-f64cce27b7b9@pengutronix.de>
Date: Fri, 6 Feb 2026 14:01:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20260204-v2025-09-0-topic-optee-of-handling-v2-0-da075e6818e0@pengutronix.de>
 <20260204-v2025-09-0-topic-optee-of-handling-v2-6-da075e6818e0@pengutronix.de>
 <d6b5bd70-4b23-4650-ac5a-b3a83d092d29@pengutronix.de>
 <20260206100243.dah3jz6r6pzebexe@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260206100243.dah3jz6r6pzebexe@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_050148_704631_E3558E09 
X-CRM114-Status: GOOD (  26.40  )
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
Subject: Re: [PATCH v2 06/15] ARM: i.MX: scratch: add FDT support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/6/26 11:02 AM, Marco Felsch wrote:
>> On 2/4/26 9:01 PM, Marco Felsch wrote:
>>> Add support to store a FDT within the scratch area. The user needs to
>>> query the location and size via imx_scratch_get_fdt() which can be used
>>> afterwards to write the actual FDT into it.
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

>>> +config SCRATCH_FDT_SIZE
>>> +	hex
>>> +	default 0x0
>>> +	prompt "Scratch FDT size"
>>> +	help
>>> +	  The size of the scratch area used as destination to load and optional
>>> +	  decompress the barebox builtin DTB into it. Can be 0x0 if early FDT
>>> +	  support is not requied.
>>> +
>>> +	  If specified, SCRATCH_FDT_SIZE <= SCRATCH_SIZE must be ensured.
>>> +
>>> +	  This option should match the OP-TEE's CFG_DTB_MAX_SIZE configuration
>>> +	  if used by OP-TEE.
>>
>> AFAIU, this is a workaround because OP-TEE doesn't accept outside
>> information about how big the DTB buffer is, just its base address.
> 
> This is correct for the bl_params case. In case of transfer-lists the
> size could be detected by OP-TEE OS.
> 
>> In that case, this should go to security/Kconfig and be named something
>> like PBL_OPTEE_DTB_MAX_SIZE. There's no need to ask every user that
>> configures barebox about this.
> 
> This would bind the FDT support to OP-TEE but the FDT could be used by
> other boot binaries as well.In the speak of ARM, it could be used by
> the TF-A. In the speak of RISC-V, it could be used by opensbi. Therefore
> I made it generic.
> 
> I wanted to avoid multiple Kconfig options to configure the scatch space
> for:
>  - OP-TEE FDT
>  - OpenSBI FDT
>  - TF-A FDT
> 
> I'm currently unsure if dropping the OP-TEE note from the help message
> helps. But I have no hard feelings about PBL_OPTEE_DTB_MAX_SIZE either.

How about:

struct imx_scratch_space {
        union {
                u8 __b[CONFIG_SCRATCH_SIZE];
                struct {
                        u32 bootrom_log[128];
                        u32 reserved[128];
                        struct optee_header optee_hdr;
                        u8 fdt[] __aligned(8);
                };
        };
};
static_assert(sizeof(struct imx_scratch_space)
          - offsetof(struct imx_scratch_space, fdt)
			<= PBL_OPTEE_DTB_MAX_SIZE);

The benefits I see:
  - Just one argument to tune (CONFIG_SCRATCH_SIZE) like we already use
    for Rockchip
  - We still have a dedicated option that can be kept in-sync with the
    exact option value in OP-TEE to find problems at compile-time
  - Only those who actually use OP-TEE will be asked about
    PBL_OPTEE_DTB_MAX_SIZE



Would this work for you?

Cheers,
Ahmad


> 
> Regards,
>   Marco
> 
> 
>>
>>
>> Cheers,
>> Ahmad
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



