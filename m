Delivery-date: Thu, 27 Oct 2022 09:25:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxH3-003p59-7G
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 09:25:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxH2-00082E-4y
	for lore@pengutronix.de; Thu, 27 Oct 2022 09:25:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GxHSEqx/AawGPtPLrQcCZ0TjD4AOTavv0wzXg8/D05E=; b=E0RCwbON87dk+YRwyqomhhH5aV
	c2A0nduVXnhpNRl7Fj2/fcNl3x/Kg+5x8Rb+L/EyIP6IQDejYMu2slqDXvKp1eeJX7nrK+KTCo6Jn
	JXbtDH3NTNYUqDMZeD9PnP+SeABU/ChoCyoXri4ecN04caLwO0fudhwWDTaphYquEehW2uQsGg6di
	lNglETnyAKMFIJwgCj0jgZ06zx4Rito/v+nmUnQ7LHW8FO/a/hty/DI/98urdkFzhbP4kTcU20jyr
	Q6KSp6T++E+/hgLDhRuIlwgO8+3jELnBBhL0dZn5gIeU01ERUWiRT0GotvRnqZfDIELAeHlhc3TfE
	i6fzRDvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxFd-00CA4m-3P; Thu, 27 Oct 2022 07:24:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxFY-00CA3m-JM
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 07:24:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1onxFV-0007qa-0A; Thu, 27 Oct 2022 09:24:21 +0200
Message-ID: <dc48c8c4-517c-349f-8582-1a718b4d699f@pengutronix.de>
Date: Thu, 27 Oct 2022 09:24:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
 <20221026064205.2360041-3-a.fatoum@pengutronix.de>
 <20221027065651.GQ6702@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221027065651.GQ6702@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_002424_683567_2428E108 
X-CRM114-Status: GOOD (  22.10  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/6] string: reduce strjoin runtime, drop trailing
 separator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 27.10.22 08:56, Sascha Hauer wrote:
> On Wed, Oct 26, 2022 at 08:42:02AM +0200, Ahmad Fatoum wrote:
>> The implementation of strjoin is a bit suboptimal. The destination
>> string is traversed from the beginning due to strcat and we have a
>> left-over separator at the end, while it should only be in-between.
>>
>> Fix this.
> 
> Rather than fixing a just introduced function I would expect a patch
> introducing strjoin() and then another one converting the time command
> over to use it.

What difference does it make?

>> +void *mempcpy(void *dest, const void *src, size_t count)
>> +{
>> +	return memcpy(dest, src, count) + count;
>> +}
>> +EXPORT_SYMBOL(mempcpy);
>>  
>>  #ifndef __HAVE_ARCH_MEMMOVE
>>  /**
>> @@ -943,7 +948,7 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
>>  {
>>  	size_t separatorlen;
>>  	int len = 1; /* '\0' */
>> -	char *buf;
>> +	char *buf, *p;
>>  	int i;
>>  
>>  	separatorlen = strlen(separator);
>> @@ -951,12 +956,14 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
>>  	for (i = 0; i < arrlen; i++)
>>  		len += strlen(arr[i]) + separatorlen;
>>  
>> -	buf = xzalloc(len);
>> +	p = buf = xmalloc(len);
>>  
>>  	for (i = 0; i < arrlen; i++) {
>> -		strcat(buf, arr[i]);
>> -		strcat(buf, separator);
>> +		p = stpcpy(p, arr[i]);
>> +		p = mempcpy(p, separator, separatorlen);
>>  	}
>>  
>> +	p[-separatorlen] = '\0';
> 
> That's a bit hard to read. How about:
> 
> 	for (i = 0; i < arrlen; i++) {
> 		p = stpcpy(p, arr[i]);
> 		if (i < arrlen - 1)
> 			p = stpcpy(p, separator);
> 	}
> 
> That would also allow you to optimize the allocated buffer size above.

I like my version more. I dislike these once-only checks inside loops.

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


