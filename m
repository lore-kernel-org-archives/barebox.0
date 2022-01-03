Delivery-date: Mon, 03 Jan 2022 11:29:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4Kad-009kXe-9Q
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 11:29:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4Kab-00043Y-CJ
	for lore@pengutronix.de; Mon, 03 Jan 2022 11:29:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z65Sa/dGJzpe+byggxXV/Jz0bUrt+xjHOIE59aQoaWg=; b=OsIm/L7ExKPszVHpAbBcqKnfrh
	IRop8oCyjOY0kVVpQD4MQUiHCZrAcX3W4oq7SXikPVbBlXuu3CEThmxhNM2/S1FojFhyi522V+GyC
	lhB963d9ptAMDyuInJvitKHL2aoAIgH98le9TFO1nJzeMn8/xlAS/dRpb6GO0V6rWhDOebFf8HRJd
	+NJ5U7MTciA2u7AcE4GYJ/HugB5ZOEo4t/bCjr/j5jYxhEWM8HLCOia7uaa5lnG7jyqeJnNwx21DS
	IFytvD9kcRSF6HX9bA8AbWMOvainoVpGxmbfy/eBOg4S4RMPN3TUwp69eH/BXww78T2MPUquOfDV8
	jA0IoTDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4KZN-008n8O-6p; Mon, 03 Jan 2022 10:28:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4KZH-008n7M-UL
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 10:27:57 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n4KZG-0003zV-OT; Mon, 03 Jan 2022 11:27:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20211129072235.2016324-1-ahmad@a3f.at>
 <20211130102302.GP28260@pengutronix.de>
 <93265eaa-3a16-9253-b6f5-35dae8a9f3ab@pengutronix.de>
Message-ID: <2ed28579-71e0-a0ec-e36a-c83c81bd97c2@pengutronix.de>
Date: Mon, 3 Jan 2022 11:27:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <93265eaa-3a16-9253-b6f5-35dae8a9f3ab@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_022756_016873_8500A914 
X-CRM114-Status: GOOD (  23.77  )
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
Subject: Re: [PATCH] state: make first boot with uninitialized legacy state
 less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 30.11.21 11:39, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 30.11.21 11:23, Sascha Hauer wrote:
>> On Mon, Nov 29, 2021 at 08:22:35AM +0100, Ahmad Fatoum wrote:
>>> With non-legacy state, barebox checks a header for a specific magic
>>> signature. This can be all zero on an uninitialized state, so in that
>>> particular case, bump down the log message severity.
>>>
>>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>>> ---
>>> Applies on top of https://lore.barebox.org/barebox/20211125161042.3829996-3-a.fatoum@pengutronix.de/
> 
> Yes, please see ^ first.

Is this ok for next?

Cheers,
Ahmad

> 
>>> ---
>>>  common/state/backend_bucket_direct.c | 4 ++--
>>>  common/state/backend_storage.c       | 7 +++++--
>>>  2 files changed, 7 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
>>> index 517aec60634b..117cdfb46c9e 100644
>>> --- a/common/state/backend_bucket_direct.c
>>> +++ b/common/state/backend_bucket_direct.c
>>> @@ -76,9 +76,9 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
>>>  		if (meta.magic != ~0 && !!meta.magic)
>>>  			bucket->wrong_magic = 1;
>>>  		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
>>> -			dev_err(direct->dev, "No meta data header found\n");
>>>  			dev_dbg(direct->dev, "Enable backward compatibility or increase stride size\n");
>>> -			return -EINVAL;
>>> +			return dev_err_state_init(direct->dev, meta.magic ? -EINVAL : -ENOMEDIUM,
>>> +						  "No meta data header found\n");
>>
>> What is dev_err_state_init()? I don't have that in my tree.
>>
>>>  		}
>>>  		read_len = direct->max_size;
>>>  		if (lseek(direct->fd, direct->offset, SEEK_SET) !=
>>> diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
>>> index 72f8bcf521ad..c55d22e37f70 100644
>>> --- a/common/state/backend_storage.c
>>> +++ b/common/state/backend_storage.c
>>> @@ -156,10 +156,13 @@ int state_storage_read(struct state_backend_storage *storage,
>>>  		totalbuckets++;
>>>  
>>>  		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
>>> -		if (ret == -EUCLEAN)
>>> +		if (ret == -EUCLEAN) {
>>>  			bucket->needs_refresh = 1;
>>> -		else if (ret)
>>> +		} else if (ret) {
>>> +			if (ret == -ENOMEDIUM)
>>> +				zerobuckets++;
>>
>> This variable also does not exist. Does this patch depend on other
>> patches?
> 
> It does. I
> 
>>
>> Sascha
>>
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

