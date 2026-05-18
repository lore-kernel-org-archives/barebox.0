Delivery-date: Mon, 18 May 2026 14:21:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOwyn-00187n-2A
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 14:21:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOwym-0003a3-Rm
	for lore@pengutronix.de; Mon, 18 May 2026 14:21:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RYuf1tOssAhakXP4sBiDVwCpZekWwmWNwCisCVo2CQw=; b=p7zkt3cXwXXj0ECxqQ+kSxtw2T
	ND1S+vJO62UorWZHSwrbwxjwCCe1TsJCqt3cOmDT6X2GAmZCv7wVcThvdzuHL9J/nDlJsghDCq5DL
	7hSj/3GKEYGGD9vDzzVCGVjfFEJv/8H50VdFHP2vIDeKAY9SeK3VdzMzi/yDb3XURrM4zpDlUeD7C
	2Gm+vGHhwY0PMKjb0qGKoxd0DVMV7zsrbK37uDOJMK07N2WVFtR6faxBKEQvMwzOhhtTCHIhdVRur
	Iby2/HhhZw+5UWonBTNZBpDXIZyuplJDWKVYV/ZvkC1vdG+KJ5DTicTGdx0nXuPL3AIZ9K+lPCcne
	n4airYrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwxn-0000000Fbii-0QMw;
	Mon, 18 May 2026 12:20:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwxl-0000000FbiE-0LUp
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 12:20:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=RYuf1tOssAhakXP4sBiDVwCpZekWwmWNwCisCVo2CQw=; b=JS08MYMQNYo74XWk/InBoE17T7
	fxq3KeI0/RY1UqYQwlZOlCcEn5stSIZy3M3bLp4W20o6P4C7Jvhg/eGQuDgJl8JCZlVCEU+rMMmeo
	LNIytzeCOpW46cVJ7MajKa8A49jEOO/AOEffyfzN3gaIOBS6rwU/kH4Qbq+Qw6scrp/69w9r5HsbB
	rfQjOD1MlT7DcIcqN9/Icc7rfPPgYBNVkbkfBWeitKkzmzfmS9YO5lNph3RJPz2awpgjjur9bSef2
	GJWfMBeUlm/32L7sES52avDqi3m+Zl1WY8imBlSsVI2tUJ/my6KtbkNNiCcOFngygHJ37I/GJ5ooH
	WuJiKyuw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOwxf-0000000B6mM-2EX6
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 12:20:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOwxe-0003NV-Hr; Mon, 18 May 2026 14:20:42 +0200
Message-ID: <a93d394f-665c-445f-961f-4fdbd03a4162@pengutronix.de>
Date: Mon, 18 May 2026 14:20:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 "Claude Opus 4.7" <noreply@anthropic.com>
References: <E1wOwtx-0000000Ethi-1WB2@pty.whiteo.stw.pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <E1wOwtx-0000000Ethi-1WB2@pty.whiteo.stw.pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_132044_376370_69F92D9E 
X-CRM114-Status: GOOD (  27.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/10] mci: sdhci: add ADMA2 descriptor helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 5/18/26 2:16 PM, Sascha Hauer wrote:
> On 2026-05-18 11:18, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 5/11/26 2:07 PM, Sascha Hauer wrote:
>>> Add reusable ADMA2 (32-bit and 64-bit) support to the SDHCI core so
>>> drivers can opt in to ADMA without each having to reimplement descriptor
>>> table management.
>>>
>>> A driver enables ADMA by calling sdhci_setup_adma() after
>>> sdhci_setup_host(). The helper allocates a DMA-coherent descriptor
>>> table sized for SDHCI_DEFAULT_ADMA_DESCS entries (drivers can override
>>> adma_table_cnt before calling), picks the descriptor format based on
>>> SDHCI_USE_64_BIT_DMA, sets SDHCI_USE_ADMA in host->flags and caps
>>> mci->max_req_size so the MCI core splits requests to fit. From there,
>>> sdhci_setup_data_dma() builds an ADMA2 descriptor chain for the
>>> contiguous transfer buffer (one descriptor per up-to-64 KiB chunk plus
>>> a terminating nop/end entry) and programs SDHCI_ADMA_ADDRESS instead
>>> of the SDMA address. sdhci_config_dma() now selects ADMA32/ADMA64 in
>>> HOST_CONTROL accordingly.
>>>
>>> If sdhci_setup_adma() fails (no SDHCI_CAN_DO_ADMA2, no memory, or
>>> unaligned table), the host transparently falls back to the existing
>>> SDMA path.
>>
>> See below for feedback.
>>
>>>
>>> Assisted-by: Claude Opus 4.7 <noreply@anthropic.com>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>> ---
>>>  drivers/mci/sdhci.c | 154 +++++++++++++++++++++++++++++++++++++++++++++++++++-
>>>  drivers/mci/sdhci.h |  59 ++++++++++++++++++++
>>>  2 files changed, 212 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
>>> index f7172347e1..0c3ca69e9a 100644
>>> --- a/drivers/mci/sdhci.c
>>> +++ b/drivers/mci/sdhci.c
>>> @@ -585,6 +585,13 @@ static void sdhci_config_dma(struct sdhci *host)
>>>  	ctrl = sdhci_read8(host, SDHCI_HOST_CONTROL);
>>>  	/* Note if DMA Select is zero then SDMA is selected */
>>>  	ctrl &= ~SDHCI_CTRL_DMA_MASK;
>>> +
>>> +	if (host->flags & SDHCI_USE_ADMA) {
>>> +		ctrl |= SDHCI_CTRL_ADMA32;
>>> +		if (host->flags & SDHCI_USE_64_BIT_DMA && !host->v4_mode)
>>> +			ctrl |= SDHCI_CTRL_ADMA64;
>>> +	}
>>> +
>>>  	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
>>>  
>>>  	if (host->flags & SDHCI_USE_64_BIT_DMA) {
>>> @@ -601,11 +608,67 @@ static void sdhci_config_dma(struct sdhci *host)
>>>  	}
>>>  }
>>>  
>>> +static void sdhci_adma_write_desc(struct sdhci *host, void **desc,
>>> +				  dma_addr_t addr, int len, unsigned int cmd)
>>> +{
>>> +	struct sdhci_adma2_64_desc *dma_desc = *desc;
>>
>> This should be a union between sdhci_adma2_32_desc and sdhci_adma2_64_desc.
> 
> This exactly matches the Kernel. Might be cleaner to make this a union,
> but having the same code as the kernel here is also nice.

I don't like that, it's not standards-compliant and will just makes it
harder for static analysis.. :/

>> Please add at least a BUG, so it fails reliably or propagate an error.
> 
> This problem is pre-existing in the tree. Yes, we should catch this, but
> should be another patch.

Okay.

>> I think the min_t is unneeded and if it is, just give len the same type
>> as SDHCI_ADMA2_MAX_LEN?
> 
> That would be int. But should we really allow negative lengths as input
> to this function?

Fair enough.

>>>  	sdhci_config_dma(sdhci);
>>> -	sdhci_set_sdma_addr(sdhci, *dma);
>>> +
>>> +	if (sdhci->flags & SDHCI_USE_ADMA) {
>>> +		ret = sdhci_adma_build_table(sdhci, *dma, nbytes);
>>> +		if (ret) {
>>> +			dev_err(dev, "ADMA table build failed: %pe\n",
>>> +				ERR_PTR(ret));
>>> +			dma_unmap_single(dev, *dma, nbytes,
>>> +					 (data->flags & MMC_DATA_READ) ?
>>> +					 DMA_FROM_DEVICE : DMA_TO_DEVICE);
>>
>> Why is the data umapped here?!
> 
> We have to. We are returning SDHCI_NO_DMA as dma address, so the caller
> can't unmap it.

I somehow missed that this is error handling.
That's fine then.

Thanks,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



