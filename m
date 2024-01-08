Delivery-date: Mon, 08 Jan 2024 08:19:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMjvR-008VWU-25
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 08:19:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMjvR-0004Od-0B
	for lore@pengutronix.de; Mon, 08 Jan 2024 08:19:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9RGQzjANtcVagt4SwRONb4jU7bCEt1JXm5EwCFiANXQ=; b=oTrMYpFLgHOGwbNjVh/IghZrlm
	68q0dURvglYpcmOau96Fas/GWHJQWN/Mv9LMYQDn8+UNl4b2OA+DjgY6SfcExSav/sCgjiqHmLNhn
	EVna95N5FbWN6qIf2TsjnP+Wyx29GWiRnocjNeNToR4nHNobchX3JOCVVSM9Cfnm962T1buvpo9A7
	ju2QkTlfa0MWfjYI0baCwswAw6N6xLeEG6eHSpO9raeb3ISuYoCffMTfBeocoWlYoax0ahSfV0m3Q
	uANYYauaQShxoljqMFV2AAd9R3CLFjY3VMwXqkfjuuPM+G6IzoD6kgzQGXso5MnL5/yXuLLiID9mM
	3LeLuEkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMjuP-0049mQ-2S;
	Mon, 08 Jan 2024 07:18:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMjuL-0049lO-37
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 07:18:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMjuJ-0004FL-8F; Mon, 08 Jan 2024 08:18:47 +0100
Message-ID: <b0929d07-a148-407f-9866-a36b79159711@pengutronix.de>
Date: Mon, 8 Jan 2024 08:18:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
 <20240103181312.409668-48-a.fatoum@pengutronix.de>
 <20240108071105.GX1318922@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240108071105.GX1318922@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240107_231850_023915_875FE080 
X-CRM114-Status: GOOD (  24.67  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 047/112] string: reduce strjoin runtime, drop trailing
 separator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.01.24 08:11, Sascha Hauer wrote:
> On Wed, Jan 03, 2024 at 07:12:07PM +0100, Ahmad Fatoum wrote:
>> The implementation of strjoin is a bit suboptimal. The destination
>> string is traversed from the beginning due to strcat and we have a
>> left-over separator at the end, while it should only be in-between.
>>
>> Fix this.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> Originally posted at: https://lore.barebox.org/barebox/20221027073334.GS6702@pengutronix.de/
> 
> Once again I ended up reviewing a suboptimal version of strjoin() first
> just to find my potential comments addressed in the next patch. So my
> comment to the last version still stands: Please implement a good
> version of strjoin() first and then switch over to use it.

The first patch just moves code around. I find it completely valid to move
code before doing changes to it...

> 
>>
>> Changes:
>>   - remove if statemnt in loop (Sascha)
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  lib/string.c | 15 ++++++++++-----
>>  1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/lib/string.c b/lib/string.c
>> index d8e5edd40648..695e50bc8fc1 100644
>> --- a/lib/string.c
>> +++ b/lib/string.c
>> @@ -1005,7 +1005,7 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
>>  {
>>  	size_t separatorlen;
>>  	int len = 1; /* '\0' */
>> -	char *buf;
>> +	char *buf, *p;
>>  	int i;
>>  
>>  	separatorlen = strlen(separator);
>> @@ -1013,13 +1013,18 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
>>  	for (i = 0; i < arrlen; i++)
>>  		len += strlen(arr[i]) + separatorlen;
> 
> Not that it matters much for memory usage, but for consistency you could
> drop the final separatorlen just like you did for copying the strings
> below.
> 
> Sascha
> 
>>  
>> -	buf = xzalloc(len);
>> +	if (!arrlen)
>> +		return xzalloc(1);
>>  
>> -	for (i = 0; i < arrlen; i++) {
>> -		strcat(buf, arr[i]);
>> -		strcat(buf, separator);
>> +	p = buf = xmalloc(len);
>> +
>> +	for (i = 0; i < arrlen - 1; i++) {
>> +		p = stpcpy(p, arr[i]);
>> +		p = mempcpy(p, separator, separatorlen);
>>  	}
>>  
>> +	stpcpy(p, arr[i]);
>> +
>>  	return buf;
>>  }
>>  EXPORT_SYMBOL(strjoin);
>> -- 
>> 2.39.2
>>
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



