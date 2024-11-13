Delivery-date: Wed, 13 Nov 2024 18:46:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBHS8-001WLB-1R
	for lore@lore.pengutronix.de;
	Wed, 13 Nov 2024 18:46:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBHS7-0004Yz-Np
	for lore@pengutronix.de; Wed, 13 Nov 2024 18:46:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tUi5AAeTWnaLNnwoiMZRJNubQ2jvoaTfvJM16gpx9es=; b=jUrUF3fhyQvlJH2ppUQk+20gB+
	kCplwDmWl8pHzeO9ZW1Hj5ebNL1rkETr8QY4d/vwX4p/ME7gi+tFfoZIT+qNLAbn+FWpqENOCvh0c
	0B/4Ti32NwHsu7nt2yco7PBCqb48eaDFIAGUe5CStJ/aCvfRpm+TDRi95fUadbRCdmo2BdCy1B695
	wL2QyP2smBYD9a6rkP62sO+aLkWMkKaWoBA2rPW/QKnYj4pzxD6i4VI/sX6ZU0D3NY2Dpn7U+zmFU
	yYgBjWNtABcEwe62XI31gEtsZ0/8kWxHPOvtxxrvh5wn/k6gzHCB+r2TzECHea0/z9LeSwSBncQMq
	ZvEcx2RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBHRU-00000007bPG-1tGv;
	Wed, 13 Nov 2024 17:46:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBHRR-00000007bON-01nY
	for barebox@lists.infradead.org;
	Wed, 13 Nov 2024 17:46:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBHRM-0004LY-QP; Wed, 13 Nov 2024 18:46:04 +0100
Message-ID: <cebcef57-6a3a-4403-921f-255b0e5a3864@pengutronix.de>
Date: Wed, 13 Nov 2024 18:46:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: AbdelRahman Yossef <abdelrahmanyossef12@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20241112191058.397165-1-abdelrahmanyossef12@gmail.com>
 <383d6b94-1152-4257-b18c-9f31857944ca@pengutronix.de>
 <ZzSY1El982Q03Pz5@pengutronix.de>
 <CABwgSGZ4kyiz9Yhh1RevsBg=eMgOK29HttSgNc=+o5xgWmXDvw@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CABwgSGZ4kyiz9Yhh1RevsBg=eMgOK29HttSgNc=+o5xgWmXDvw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_094609_069980_76042E11 
X-CRM114-Status: GOOD (  26.43  )
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
Subject: Re: [PATCH v2] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 13.11.24 13:37, AbdelRahman Yossef wrote:
> I will update the patch and send it as v4.
> 
> Is it enough to just add the changes to Changelog or change the commit message?

The old commit message wouldn't reflect the new changes, so please
rewrite it to be in-line with the diff.

The changelog is separate and should look like this or similar:

---
v3 -> v4:
  - replace < 0 with <= 0 (Sascha)
  - remove + 1 in strnlen (Sascha)
v2 -> v3:
  - did foo to bar ($name_of_person_who_suggested_it)
v1 > v2:
  - did baz to bazzer 
---

Thanks,
Ahmad

> 
> On Wed, Nov 13, 2024 at 2:17 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>>
>> On Tue, Nov 12, 2024 at 08:56:58PM +0100, Ahmad Fatoum wrote:
>>> Hello Abdelrahman,
>>>
>>> Thanks for your patch.
>>>
>>> On 12.11.24 20:10, Abdelrahman Youssef wrote:
>>>> While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
>>>> the struct block area, Causing a heap-overflow.
>>>>
>>>> Since `maxlen` is an unsigned integer representing the length of name,
>>>> It can be negative, So it overflows to large numbers, Causing strnlen()
>>>> to overflow.
>>>>
>>>> So we can just change the type of maxlen to signed and check if it's negative.
>>>>
>>>> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
>>>> ---
>>>
>>> Changelog would've been nice. This also should have been v3 not v2.
>>>
>>>>  drivers/of/fdt.c | 7 ++++++-
>>>>  1 file changed, 6 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
>>>> index 2c3ea31394..d8d8a4922c 100644
>>>> --- a/drivers/of/fdt.c
>>>> +++ b/drivers/of/fdt.c
>>>> @@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>>>>     void *dt_strings;
>>>>     struct fdt_header f;
>>>>     int ret;
>>>> -   unsigned int maxlen;
>>>> +   int maxlen;
>>>>     const struct fdt_header *fdt = infdt;
>>>>
>>>>     ret = fdt_parse_header(infdt, size, &f);
>>>> @@ -210,6 +210,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>>>>                     maxlen = (unsigned long)fdt + f.off_dt_struct +
>>>>                             f.size_dt_struct - (unsigned long)name;
>>>>
>>>> +                   if (maxlen < 0) {
>>>> +                           ret = -ESPIPE;
>>>> +                           goto err;
>>>> +                   }
>>>> +
>>>>                     len = strnlen(name, maxlen + 1);
>>>
>>> Hmm is this + 1 correct? I am wondering if we should be dropping
>>> the + 1 here and make it maxlen <= 0 above.
>>
>> I think maxlen <= 0 is correct indepent of what follows next, because
>> maxlen is the length of a string and a valid string has a minimal length
>> of one byte ('\0').
>>
>> Next we shouldn't look at bytes exceeding maxlen, so indeed
>> strnlen(name, maxlen) should be correct. When changing this we have
>> to adjust the following if (len > maxlen) check to >=.
>>
>> Sascha
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


