Delivery-date: Fri, 12 Jan 2024 17:06:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOK2j-00EgxG-3D
	for lore@lore.pengutronix.de;
	Fri, 12 Jan 2024 17:06:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOK2j-0006nK-5B
	for lore@pengutronix.de; Fri, 12 Jan 2024 17:06:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bgpwJ9084GX7ysIJaxmljPybJB8gZ4L8m8jxJhbxJt4=; b=iT2FKglyme0bJJlfBac9d7nW1O
	PTnix6lnzB1YlCYj/BWpK8bnqtQxm3n5h4xWbRq7h3aYRYzPzi15dzxhuMj2aFo+GbHavk/2RSVfr
	4ViM33GKMgOJ0P7oi1gdVdZL7mEC6YmcxGoM6CPeJP6Ley9iljgLIasoICUp27rjiL8OZJMnZ3dWf
	Nlz3Ut21AZeTdBEs/jtI+GLaJB5P47Tsy+NWi+pH8GgKVt0xGzDcNvDX520xjj4Qf3PZSE44U60wm
	MVJwr8fswsk6GTfC6vOVmdGEAqkTdqtLr0rweOVFXcaFAqg0dRFLpxTGmkjtiyuhp39Ty18PFgc5D
	9bOHqqlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOK1X-003G2D-0f;
	Fri, 12 Jan 2024 16:04:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOK1U-003G1j-2B
	for barebox@lists.infradead.org;
	Fri, 12 Jan 2024 16:04:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rOK1R-0006Vg-UE; Fri, 12 Jan 2024 17:04:41 +0100
Message-ID: <17c001bc-e000-4d19-9710-b6a0bd7906ee@pengutronix.de>
Date: Fri, 12 Jan 2024 17:04:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
 <20240111-fix-habv4-event-report-v1-1-15d9a990f01e@pengutronix.de>
 <2f94ac17-fb2e-4ebd-ad49-c48f0b06d875@pengutronix.de>
 <e7e3a93a-8764-488a-9f03-46656421adbd@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <e7e3a93a-8764-488a-9f03-46656421adbd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_080444_709142_A5B6A418 
X-CRM114-Status: GOOD (  15.35  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] habv4: correct habv4 rom vector table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12.01.24 16:26, Stefan Kerkmann wrote:
> Hello Ahmad,
> 
> On 11.01.24 16:57, Ahmad Fatoum wrote:
>> Hello Stefan,
>>
>>> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
>>> index ed6d4db77c..dfa0207435 100644
>>> --- a/drivers/hab/habv4.c
>>> +++ b/drivers/hab/habv4.c
>>> @@ -144,31 +144,41 @@ struct hab_header {
>>>       uint8_t par;
>>>   } __packed;
>>>   -typedef enum hab_status hab_loader_callback_fn(void **start, uint32_t *bytes, const void *boot_data);
>>> +typedef enum hab_status hab_loader_callback_fn(void **start, size_t *bytes, const void *boot_data);
>>> +typedef void (*hab_image_entry_fn)(void);
>>
>> While it only matter for forward declaration, perhaps, change this
>> to be a non-pointer like hab_loader_callback_fn above?
> 
> Done in v2.
> 
>>> +    enum hab_status (*run_dcd)(const uint8_t *dcd);
>>> +    enum hab_status (*run_csf)(const uint8_t *csf, uint8_t cid, uint32_t srkmask);
>>>       enum hab_status (*assert)(enum hab_assertion assertion, const void *data, uint32_t count);
>>> -    enum hab_status (*report_event)(enum hab_status status, uint32_t index, void *event, uint32_t *bytes);
>>> +    enum hab_status (*report_event)(enum hab_status status, uint32_t index, uint8_t *event, size_t *bytes);
>>>       enum hab_status (*report_status)(enum hab_config *config, enum habv4_state *state);
>>>       void (*failsafe)(void);
>>> +    hab_image_entry_fn(* authenticate_image_no_dcd)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader);
>>
>> And here you rely on a function pointer being automatically derived.
>> While that's ok from a correctness point of view, for symmetry, it
>> would be better to stick to one type.
> 
> Done in v2.
> 
>>> +    uint32_t(* get_version)(void);
>>
>> Nitpick: space after uint32_t and not before get_version.
>>
> 
> Done in v2.
> 
>>> +    enum hab_status (*authenticate_container)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader, uint32_t srkmask, int skip_dcd);
>>>   } __packed;
>>>   -#define FSL_SIP_HAB             0xC2000007
>>
>> This is removed without replacement?
>>
> 
> No it is still there, the diff is a bit misleading.

Ah, its whitespace was changed..

> 
> Regards,
> Stefan
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



