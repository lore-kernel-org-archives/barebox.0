Delivery-date: Fri, 07 Nov 2025 14:57:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMxz-00GJby-2G
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 14:57:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHMxz-0000US-5i
	for lore@pengutronix.de; Fri, 07 Nov 2025 14:57:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nRgkdguFAZbNw3+P9yh0td+IG5Zosrir2ZQZsB5fq8E=; b=sFpbB08kjuR1O7M3tVuGjZFiVS
	0d0uif381NcKivqOsR4J5m1V7DvpnXJF9ZZryeOfXn1Y0tXM6CY2QSZtOlzArtf1RbnCwik7R5CLd
	frF9JpvNbiFFh90djPXEPClu9trjwlCtQxRe85KnOYhBidhn5mGvMnkzOFCl+vS/Iz+8XN8ehunzz
	NDNvaLnqbfjHd4o6GyNZ8AYyCZZIgGoTNwKnoI1q2Sey4gBwMIwTH7pKvegdPZAILvA/zbyaaWsMD
	TVRnUWV8FYPP2AcfMTFD0tfBp5V1NNxvngt1DrwDEChADVOFAawTxwXFQcNZD/S/1Jt9U53CDmQly
	ymjPEAIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMxa-0000000HRUc-1JJC;
	Fri, 07 Nov 2025 13:57:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHMxX-0000000HRTe-11pA
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 13:57:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHMxU-0000MR-6K; Fri, 07 Nov 2025 14:56:56 +0100
Message-ID: <1f546406-1d93-425e-928d-1b3a5452362e@pengutronix.de>
Date: Fri, 7 Nov 2025 14:56:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20251027075438.2480311-1-a.fatoum@barebox.org>
 <aQCP95IqfhGo1zJg@pengutronix.de>
 <94867b83-cde8-449f-8ed4-d97855831d09@pengutronix.de>
 <aQ36OuSKNw7m45LD@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aQ36OuSKNw7m45LD@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_055659_302370_97AA263B 
X-CRM114-Status: GOOD (  17.59  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFC 1/3] lib: add talloc for overlaying a tree onto
 allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 11/7/25 2:55 PM, Sascha Hauer wrote:
> On Tue, Oct 28, 2025 at 11:26:02AM +0100, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 10/28/25 10:42 AM, Sascha Hauer wrote:
>>> On Mon, Oct 27, 2025 at 08:54:32AM +0100, Ahmad Fatoum wrote:
>>>> +#ifndef __TALLOC_H__
>>>> +#define __TALLOC_H__
>>>> +
>>>> +#include <linux/types.h>
>>>> +
>>>> +struct talloc {
>>>> +	struct talloc *child;
>>>> +	struct talloc *next;
>>>> +	union {
>>>> +		struct talloc *prev;
>>>> +		struct talloc *parent; /* Valid only when is_first(mem) */
>>>> +	};
>>>> +};
>>>
>>> Currently tlsf allocations are 8 byte aligned. On 32bit architectures
>>> struct talloc will be 12 bytes, so talloc allocations will only have 4
>>> byte alignment.
>>
>> Good catch. On 32-bit, there is 4 bytes of unused padding inside TLSF
>> and feels bad sacrificing 4 more bytes here. :/
> 
> I find the memory leak checker extremly useful and it becomes even more
> useful with the memory leaks in hush fixed.
> 
> I suggest we add an __aligned(8) here and be done with it for now.
> 
> We can still think about it when widening the talloc use for
> dev_kmalloc(), but as long as it's only used by hush we shouldn't hold
> this series up.

Fair enough.

Thanks,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



