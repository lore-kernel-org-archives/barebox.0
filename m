Delivery-date: Tue, 09 Aug 2022 11:25:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLUT-00HClk-BQ
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:25:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLUU-0005F9-5L
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:25:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=77A9wfzibZxdELcDfiCqkMXPdnRulN0EhOk/dC0fzbM=; b=dbBUL9LeDjWiZangpqmjvgiJY1
	nYnXPRUQ6e8MoAP0V3CxbWkwZbFZtlbleGfmj/tTpPiDHriURhHCZoMoHFAFY5PXQaMD1wE+TUJIZ
	N7C78h7zngj04IfKP6uBCKnSZIO+tb73Xi03QJu3ntviMm7T18uEEoLmWF2z6V3tUigPS9cg3HOw7
	o4M20aVtGLArwrxy6guoQv5jxiLEVcPZW+gBES5tVXLJQvM9X68MxNUdQcNXZ+mTUGTdAXAnIKFd3
	rqqgza1WLkvfh6A17yz7jy2WMFvwOechvZmIxFoN0GZRsKO+isC1LL37YRrVWzI2UuOHJ9xFzJPxm
	li987lLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLTI-0031nu-VU; Tue, 09 Aug 2022 09:24:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLTD-0031l2-T9
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:24:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oLLTA-0004ww-U7; Tue, 09 Aug 2022 11:24:12 +0200
Message-ID: <808e86b2-38bd-0f45-8f10-0ba0f290ee34@pengutronix.de>
Date: Tue, 9 Aug 2022 11:24:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220808065648.458142-1-a.fatoum@pengutronix.de>
 <20220808111117.GD7333@pengutronix.de>
 <e99b3667-d0e5-afd8-b9e9-0e3c06a71529@pengutronix.de>
 <20220808120335.GJ7333@pengutronix.de>
 <cced647c-2ea4-6c8c-4d68-6e8535e6fb93@pengutronix.de>
 <20220808144021.GX31528@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20220808144021.GX31528@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_022415_971671_AFE636AD 
X-CRM114-Status: GOOD (  26.07  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] FIT: add first support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 08.08.22 16:40, Sascha Hauer wrote:
> On Mon, Aug 08, 2022 at 02:12:01PM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 08.08.22 14:03, Sascha Hauer wrote:
>>> On Mon, Aug 08, 2022 at 01:38:28PM +0200, Ahmad Fatoum wrote:
>>>> Hello Sascha,
>>>>
>>>> On 08.08.22 13:11, Sascha Hauer wrote:
>>>>> On Mon, Aug 08, 2022 at 08:56:48AM +0200, Ahmad Fatoum wrote:
>>>>>> +			/* associate buffer with FIT, so it's not leaked */
>>>>>> +			data = dataprop->value = uc_data;
>>>>>> +			dataprop->length = data_len;
>>>>>
>>>>> Why are you fiddling with struct property fields directly?
>>>>> of_get_property() and of_set_property() should do what you want.
>>>>
>>>> of_set_property copies the data into a new buffer, which I want
>>>> to avoid doing again.
>>>
>>> Ah, yes. Ok then.
>>>
>>> Still the
>>>
>>> 	if (!dataprop->value) {
>>> 		...
>>> 	}
>>>
>>> part confuses me. With the current code it won't be set. If it will be
>>> set due to future changes then your code won't uncompress the buffer and
>>> silently continues. I think this should rather be
>>>
>>> 	free(dataprop->value);
>>> 	dataprop->value = uc_data;
>>>
>>> As a bonus you'll save an indention level.
>>
>> I don't want to free dataprop->value. I want to cache the uncompressed
>> data alongside the FIT, so a renewed call to fit_open_image()
>> doesn't decompress again. I haven't checked if this can happen currently,
>> but it feels natural to keep value_const for the uncompressed data
>> and populate value with the compressed data and do the uncompression
>> only once on first fit_open_image().
> 
> IMO the fields in struct property should only be used inside the core OF
> code. In the core OF code "value" and "value_const" hold the same data,
> once allocated dynamically and once allocated externally. "value_const"
> purely exists to optimize memory usage for FIT images.
> 
> We shouldn't overload this and now start to store an uncompressed
> version of "value_const" in "value". It also doesn't look very useful as
> fit_open_image() isn't called multiple times for the same image. If that
> becomes a usecase, then we should cache the data in some other data
> structure, not in the device tree property.

We need to link the uncompressed data buffer with the FIT image,
so it doesn't leak. Any of the multiple images can be compressed, so we need
to hold multiple buffers. Storing this as a property in the device tree node
is quite elegant IMO. I agree now that the value/value_const dichotomy
is not the best way, so I added a new uncompressed-data property in v2.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


