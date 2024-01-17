Delivery-date: Wed, 17 Jan 2024 08:46:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ0dI-003NRi-36
	for lore@lore.pengutronix.de;
	Wed, 17 Jan 2024 08:46:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ0dJ-0005HN-Ib
	for lore@pengutronix.de; Wed, 17 Jan 2024 08:46:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NmQw+6hhiD58dZW+UwnCvXQd2uOKrkH1IF+dPpEVT3s=; b=SFimrY5qUyZPCqCW8k0o3E40sL
	gt7xiHhQpYyZw3lQ8xedTRf5UgPQp7vxwRsziq704XW9QQnBD73wgLsaH+ZDdREytlXC31gLNRZeW
	pD/tothLjevZcq8k8PqotZDmOJo+3XK4dt80J/jiH1lkyQdCSFPi3Izn6/CM/YdCrZOAgD3Q7bOfB
	pevKq/RNUFippMTW7g20HRn2OlTmk9cT2g+Hf53VY9Lcskzh130oizaFREguwXh9q/4nnmEH3F3z1
	f9EjjWowWtnoR1BXgN416yGsIscIoVnBpNZ0VM68Ouo6qWR5yiMJMMFZHvq3W527VzWgev4yUiwAf
	1Xd+r2Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ0cD-00Ejuy-2I;
	Wed, 17 Jan 2024 07:45:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ0cA-00Ejth-08
	for barebox@lists.infradead.org;
	Wed, 17 Jan 2024 07:45:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rQ0c8-00059N-K0; Wed, 17 Jan 2024 08:45:32 +0100
Message-ID: <b9430a6f-7de6-49e5-b8ca-52eb6aeb23ea@pengutronix.de>
Date: Wed, 17 Jan 2024 08:45:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20240112-fix-habv4-event-report-v2-0-1c91bc857935@pengutronix.de>
 <20240112-fix-habv4-event-report-v2-2-1c91bc857935@pengutronix.de>
 <15aa742d-9670-4da5-a65b-263d44e260cb@pengutronix.de>
 <20240117072025.GE4700@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240117072025.GE4700@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_234534_097095_C740B15F 
X-CRM114-Status: GOOD (  16.55  )
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
Subject: Re: [PATCH v2 2/2] habv4: use hab rom implementation of report_event
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad, Hello Sascha,

On 17.01.24 08:20, Sascha Hauer wrote:
> On Tue, Jan 16, 2024 at 09:13:48AM +0100, Ahmad Fatoum wrote:
>> Hello Stefan,
>>
>> On 12.01.24 16:21, Stefan Kerkmann wrote:
>>> +static enum hab_status hab_sip_report_event(enum hab_status status,
>>> +					    uint32_t index, uint8_t *event,
>>> +					    size_t *bytes)
>>> +{
>>> +	struct arm_smccc_res res;
>>> +
>>> +	v8_flush_dcache_range((unsigned long)bytes,
>>> +			      (unsigned long)bytes + sizeof(*bytes));
>>> +
>>> +	if (event)
>>> +		v8_flush_dcache_range((unsigned long)event,
>>> +				      (unsigned long)event + *bytes);
>>
>> I am not too happy about the cache maintenance here. *event and *bytes
>> are both stack memory, which share a cache line with other stack variables.
>>
>> This issue exists in hab_sip_report_status too, so this need not delay
>> application of the series, but it would nice to get this cleaned up,
>> eventually.
>>
>> A first attempt was here:
>> https://lore.barebox.org/barebox/20230921095649.310666-1-a.fatoum@pengutronix.de/
>>
>> I am also unsure if cache maintenance is correct, see:
>> https://lists.trustedfirmware.org/archives/list/tf-a@lists.trustedfirmware.org/message/D3PIAW7G2B3JQIH5BGMUZZKHPGNMXUUT/
>>

When implementing the cache maintenance I had a quick talk with a 
colleague and it wasn't clear if this is needed at all. In the end I 
opted for "better safe than sorry". I suggest to wait a bit if there is 
a definitive answer from the TF-A list and remove it altogether if it 
turns out to be unnecessary.

>>> +static enum hab_status imx8m_report_event(enum hab_status status,
>>> +					  uint32_t index, uint8_t *event,
>>> +					  size_t *bytes)
>>> +{
>>> +	if (cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_imx8mp())
>>
>> I suggest we swap the if else clauses and use cpu_is_mx8mq(). imx8m_read_sram_events
>> only supports that one SoC now and it's likely that new SoCs (e.g. i.MX9) will
>> also reuse hab_sip_report_event. Could you send a fixup?
> 
> I fixed this part up here.

Thank you!

> 
> Sascha
>

Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |


