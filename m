Delivery-date: Thu, 22 Jan 2026 15:21:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivZJ-0049Ot-2M
	for lore@lore.pengutronix.de;
	Thu, 22 Jan 2026 15:21:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vivZI-0003wJ-Oh
	for lore@pengutronix.de; Thu, 22 Jan 2026 15:21:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Exvbi7eMiton57NAuwaAu8M/xDsjBhrbx22hvFXoewI=; b=dL0j2YYr1Po5rX
	nYmYPKHPNgAyDuwUs7EVoqd/W8Ns+o4svLls6yV7NNvhDIa7jGlgNYNLDg5gUcygj6bGCmmomisjn
	HKkWdwnxs0ARLbwAO4bg9BTbtJrMPyBfXgGfo79SrRTBACjqVD55fLgoIHOdwkspk2ue1v8qk8FND
	PXt9rVGrg3AVo1d/LIkyWQc8U7UlnwF/FpJyBWWcEDOl2ZDpNs1GThId3p1qmW1vb9V6/rRHcEeka
	GqhsEL5ulZV9eNK0DI+UjEjcFuQNp8jiNwEh2ficuD7z6DleeDsIot8qVFZN3s3muw92MhrIlCRup
	/pSOdF4lW4l1Nw0pUxpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivYu-00000007EQv-1qv2;
	Thu, 22 Jan 2026 14:21:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vivYr-00000007EQI-3P7j
	for barebox@lists.infradead.org;
	Thu, 22 Jan 2026 14:21:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vivYq-0003mH-7z; Thu, 22 Jan 2026 15:21:24 +0100
Message-ID: <887d7b8b-bae2-4590-a9dc-649c68a5921e@pengutronix.de>
Date: Thu, 22 Jan 2026 15:21:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-19-8f0625ac5471@pengutronix.de>
 <5dda172a-9321-4bdf-b5bf-9b80d22532d0@pengutronix.de>
 <20260118201126.vywp76jpisnpouub@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260118201126.vywp76jpisnpouub@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_062125_854307_1B68C1AE 
X-CRM114-Status: GOOD (  14.98  )
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
Subject: Re: [PATCH 19/23] security: optee: add helpers to apply OP-TEE FDTO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/18/26 9:11 PM, Marco Felsch wrote:
> Hi,
> 
> On 26-01-15, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 11/10/25 9:34 PM, Marco Felsch wrote:
>>>  config OF_FIXUP_OPTEE
>>>  	def_bool y
>>>  	depends on HAVE_OPTEE && ARM
>>> +	select LIBFDT
>>
>> AFAIK, we use LIBFDT only in PBL as we don't want to unflatten the whole
>> tree there. Why would you want to use it in barebox proper?
> 
> I used it due to the fdt_check_header() check within
> optee_register_overlay(). I think we can drop this check and the LIBFDT
> since barebox PBL is creating the HANDOFF_DATA_BL32_DT_OVL entry.

As mentioned before, I prefer we do the device tree fragment stuff in
barebox proper if at all possible.

In that case, the select here makes sense.

Thanks,
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



