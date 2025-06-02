Delivery-date: Mon, 02 Jun 2025 11:54:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1sA-002upd-1d
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 11:54:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uM1s9-0002nT-Tg
	for lore@pengutronix.de; Mon, 02 Jun 2025 11:54:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kIr9WAewpNoLoeS0JsUS0PdL3Pnml/VEBF378MfdOOo=; b=ctuKi9K86laFgm7L5B/4l59RhH
	p6NVIX+f+IJZytXZRygv4vRXps0l0h5eDlD2Cq5HBQTIsUjPXh9/MwteZMhtMXezfVbEkeiC8ZIu5
	QLfdqebtBhbkVql5lG73+yI4K4SWa8gte+ulidRXIdQure87CwNXh1utu34/sw8XV0TO06kKLB/lH
	/rKSPFAQ7ti+BJMNJbxk86hM+raOM+oQVUS/RtnU+DEp1//9YuUqwwQAIWqGA3z+e5IxZ68b8t+ob
	zdIDoimx1+LLYMMUqqsQ7S9lGuWm0uMOK2TgmAda+BlG8SFNAoPrl6JbBxRPWuZehwnzT1cPCrbDN
	7/nddiUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1re-000000077RE-2SQK;
	Mon, 02 Jun 2025 09:53:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uM1rb-000000077QI-1sev
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 09:53:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uM1rZ-0002X8-5y; Mon, 02 Jun 2025 11:53:49 +0200
Message-ID: <5ab3d160-8696-45ad-9ef7-ae537be9be62@pengutronix.de>
Date: Mon, 2 Jun 2025 11:53:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20250528131411.935668-1-a.fatoum@barebox.org>
 <20250528131411.935668-2-a.fatoum@barebox.org>
 <20250528152431.db7nmbovzxkllf2u@pengutronix.de>
 <2bde04b0-5caa-4b06-aa00-fc7b24afb2dc@pengutronix.de>
 <20250528154650.rubzl2djaq4x6m5h@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250528154650.rubzl2djaq4x6m5h@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250602_025351_493433_204A5257 
X-CRM114-Status: GOOD (  18.11  )
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
Subject: Re: [PATCH 2/5] common: deep-probe: support specifying support in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

On 28.05.25 17:46, Marco Felsch wrote:
> On 25-05-28, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 5/28/25 17:24, Marco Felsch wrote:
>>> On 25-05-28, Ahmad Fatoum wrote:
>>>> New boards should be deep probe enabled by default, which is currently
>>>> done via board code. We want to support second stage boot on new boards
>>>> without board code however, which means we need the possibility to make
>>>> deep probe opt-out instead of opt-in.
>>>>
>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
>>>> ---
>>
>> [snip]
>>
>>>> +	/* deep probe requires resources to be described in DT */
>>>> +	root = of_get_root_node();
>>>> +	if (!root)
>>>> +		return false;
>>>
>>> 	if (!root) {
>>> 		boardstate = DEEP_PROBE_NOT_SUPPORTED;
>>
>> No, the omission is intentional. I want to repeat the check for the
>> root node on every call to avoid issues where this function is
>> called once too early.
> 
> Good point albeit I wouldn't assume that this happens.
> 
> Also what if caller-1 receives "no" does the "no-deep-probe-handling"
> accordingly and shortly after caller-2 receives "yes". Sounds like a
> source of trouble. 

If a driver requests a resource and it is not available, it returns
-EPROBE_DEFER, even with deep probe enabled, so I think barebox
shouldn't handle such a case too badly.

> Anyway could we add a comment that this is intentional please?

Done for v2.

Thanks,
Ahmad

> 
> Regards,
>   Marco
> 
> 
>>
>>>> -	boardstate = DEEP_PROBE_NOT_SUPPORTED;
>>>> -	pr_info("not activated\n");
>>>> -	return false;
>>>
>>> Can we please add a comment about the below if-else, e.g. referencing
>>> the barebox,deep-probe.rst as well?
>>
>> Yes, will do for v2.
>>
>> Thanks for reviewing,
>> Ahmad
>> -- 
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


