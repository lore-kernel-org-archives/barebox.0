Delivery-date: Fri, 12 Jan 2024 16:27:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOJRi-00EdwH-0p
	for lore@lore.pengutronix.de;
	Fri, 12 Jan 2024 16:27:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rOJRh-00087A-LQ
	for lore@pengutronix.de; Fri, 12 Jan 2024 16:27:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CBP7ePMR3A6CB3b/VE6HgQgoMh2g+Z4ERD1KnQIwSas=; b=AVUtJBdSo0mtx8oSqGCWSI7TCC
	CIOJA5+/7tUQcNT3H2lakHs7D2M7i/CYRsWcUHioReXmmyWP6ccpK7Tg9euHAhrwkxIk3P6aivKde
	I+rwj/A34rNwnAjE0MiRCs/V631bG4NTwwCoTJoyJgGQnYW9nQSBTDcvPX9oSFQ2vxD7pfMdDwE+R
	FqXJ8OulrRzqdT3IT8WJjCdamTlqjgMAEI6xTdQxH1qff8P4EjoyafWQR/mt+2HIpO8pZajc/kLw/
	Fsvq/QIxJ1R+4xFhpLqwlMdEGyeOSDFgRb4oWEuZMpaGbNu6RJvN6oqqT4rKXjF8IHWI76kvyysbm
	5h4Fh6/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJQk-0039Rg-06;
	Fri, 12 Jan 2024 15:26:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJQg-0039RG-2K
	for barebox@lists.infradead.org;
	Fri, 12 Jan 2024 15:26:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rOJQf-0007vP-6c; Fri, 12 Jan 2024 16:26:41 +0100
Message-ID: <e7e3a93a-8764-488a-9f03-46656421adbd@pengutronix.de>
Date: Fri, 12 Jan 2024 16:26:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240111-fix-habv4-event-report-v1-0-15d9a990f01e@pengutronix.de>
 <20240111-fix-habv4-event-report-v1-1-15d9a990f01e@pengutronix.de>
 <2f94ac17-fb2e-4ebd-ad49-c48f0b06d875@pengutronix.de>
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <2f94ac17-fb2e-4ebd-ad49-c48f0b06d875@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_072642_754682_A95B440E 
X-CRM114-Status: GOOD (  13.25  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] habv4: correct habv4 rom vector table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On 11.01.24 16:57, Ahmad Fatoum wrote:
> Hello Stefan,
> 
>> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
>> index ed6d4db77c..dfa0207435 100644
>> --- a/drivers/hab/habv4.c
>> +++ b/drivers/hab/habv4.c
>> @@ -144,31 +144,41 @@ struct hab_header {
>>   	uint8_t par;
>>   } __packed;
>>   
>> -typedef enum hab_status hab_loader_callback_fn(void **start, uint32_t *bytes, const void *boot_data);
>> +typedef enum hab_status hab_loader_callback_fn(void **start, size_t *bytes, const void *boot_data);
>> +typedef void (*hab_image_entry_fn)(void);
> 
> While it only matter for forward declaration, perhaps, change this
> to be a non-pointer like hab_loader_callback_fn above?

Done in v2.

>> +	enum hab_status (*run_dcd)(const uint8_t *dcd);
>> +	enum hab_status (*run_csf)(const uint8_t *csf, uint8_t cid, uint32_t srkmask);
>>   	enum hab_status (*assert)(enum hab_assertion assertion, const void *data, uint32_t count);
>> -	enum hab_status (*report_event)(enum hab_status status, uint32_t index, void *event, uint32_t *bytes);
>> +	enum hab_status (*report_event)(enum hab_status status, uint32_t index, uint8_t *event, size_t *bytes);
>>   	enum hab_status (*report_status)(enum hab_config *config, enum habv4_state *state);
>>   	void (*failsafe)(void);
>> +	hab_image_entry_fn(* authenticate_image_no_dcd)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader);
> 
> And here you rely on a function pointer being automatically derived.
> While that's ok from a correctness point of view, for symmetry, it
> would be better to stick to one type.

Done in v2.

>> +	uint32_t(* get_version)(void);
> 
> Nitpick: space after uint32_t and not before get_version.
>

Done in v2.

>> +	enum hab_status (*authenticate_container)(uint8_t cid, ptrdiff_t ivt_offset, void **start, size_t *bytes, hab_loader_callback_fn loader, uint32_t srkmask, int skip_dcd);
>>   } __packed;
>>   
>> -#define FSL_SIP_HAB             0xC2000007
> 
> This is removed without replacement?
>

No it is still there, the diff is a bit misleading.

Regards,
Stefan



-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |


