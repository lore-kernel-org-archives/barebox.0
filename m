Delivery-date: Mon, 03 Jan 2022 11:42:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4KnM-009kzV-EG
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 11:42:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4KnL-00059s-A3
	for lore@pengutronix.de; Mon, 03 Jan 2022 11:42:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wlZ0q+8TH8eQeNVsfYLc3HM3QZdBj/b53d2vEISKMKc=; b=wkGwhm6EpPF28EklsWKfLUBdfy
	hx1n3zjdgnVCEQVuPzsxnVokpNRS/v4m8l25BgU2YGSFKTzvI56Rb5Q3Cb/BzzmZNerS3xhKFHMUp
	PYqxxf0aQPJXMmJsHXaS+b5/T8mgMt/RrZiHtL92dcbFt6IQnHbGaSvqTDGHANWnETsLKVVTBznbb
	tGg4CVjeQCjxaLSSpdTS4uKqwTCk5jLIvpRK4+P9AvAt1+ICjNlwfeiLVnWB2d32T6IwYq7HZVRVE
	7Nj9Lfn6R2i2B/fr61MleEtIXiMQVrOCMdFQlIW87hEHuDcgKnkAHUFO2wVbkha1bUIJKwAw9HOhz
	BOepvKGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4Km0-008okl-0V; Mon, 03 Jan 2022 10:41:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4Klv-008okJ-4o
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 10:41:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n4Klt-00053i-U8; Mon, 03 Jan 2022 11:40:57 +0100
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20211209105708.3517684-1-a.fatoum@pengutronix.de>
 <20211213222808.GL6003@pengutronix.de>
 <6780849f-e1f9-fdae-ffb6-02cdde4cdb55@pengutronix.de>
 <20211214072747.GM6003@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <92020314-afcc-e694-e12c-07399f0747c8@pengutronix.de>
Date: Mon, 3 Jan 2022 11:40:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211214072747.GM6003@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_024059_223754_21CE2815 
X-CRM114-Status: GOOD (  21.56  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] vsprintf: add support for printing raw buffers as hex
 (%*ph)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 14.12.21 08:27, Sascha Hauer wrote:
> On Tue, Dec 14, 2021 at 07:57:01AM +0100, Ahmad Fatoum wrote:
>> On 13.12.21 23:28, Sascha Hauer wrote:
>>> On Thu, Dec 09, 2021 at 11:57:06AM +0100, Ahmad Fatoum wrote:
>>>> Import from Linux support for printing buffers as a hex string
>>>> with a certain separator. For larger buffers consider using
>>>> print_hex_dump(). Examples:
>>>>
>>>>   %*ph	00 01 02  ...  3f
>>>>   %*phC	00:01:02: ... :3f
>>>>   %*phD	00-01-02- ... -3f
>>>>   %*phN	000102 ... 3f
>>>>
>>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> ---
>>>>  lib/Kconfig    |  3 +++
>>>>  lib/vsprintf.c | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
>>>>  2 files changed, 53 insertions(+)
>>>>
>>>> diff --git a/lib/Kconfig b/lib/Kconfig
>>>> index 718033e56e64..27e7bea6852f 100644
>>>> --- a/lib/Kconfig
>>>> +++ b/lib/Kconfig
>>>> @@ -166,6 +166,9 @@ config PRINTF_UUID
>>>>  config PRINTF_WCHAR
>>>>  	bool
>>>>  
>>>> +config PRINTF_HEXSTR
>>>> +	bool
>>>
>>> So hexdumps are silently ignored when this option is disabled. Not sure
>>> if this should really be configurable, but I think when it is
>>> configurable it should be default y to avoid surprises.
>>
>> It will be printed as a raw pointer when the option is disabled.
>> There's no code in-tree that uses this format specifier yet,
>> so I prefer to not make this the default and increase binary size.
> 
> Ok for now, but we should revise it once this actually gets used.

This is still left after a rebase.

Cheers,
Ahmad

> 
> Sascha
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

