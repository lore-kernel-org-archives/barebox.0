Delivery-date: Tue, 30 Nov 2021 11:41:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0ZQ-0003PZ-Bn
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:41:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0ZP-0002bu-Bg
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:41:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bfKGjGoTmcF3r2V+sHKXxbOcuyc6Aag2oFYXmaHcha4=; b=lb0MxLLYNpJL7umiUy6ev/1W+c
	mB8rh3x9ZFkk5Xvz4euY03/3/Jb5PyQktzyvuP3CXeBoPJOceXVzXq7Zc44zcKz1nL99O1PXf05kM
	OMJbs9vI1SJT3b/i7iTOdf+621sQyAnp0YdTYHXPmqc1I+zztrXgoqHuygmQowwiZyFM/tD6sYPbT
	q6DJtnKccYBaXlwpwz4GRj2RewKMGAVKDufdo0mmPyzSCITBymGU7kKs6GcpwLK1hFqSEK89kwt9t
	5GLkQH6j3AKDelzlUFs6J7PadjNKYtHSi4K6YHHtrwRxoCeR/ajju8TrVQOm58C96UyZIz1BGEs0I
	WZBlGbUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0YA-004fuE-Fm; Tue, 30 Nov 2021 10:39:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms0Xt-004fqC-Ox
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 10:39:36 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ms0Xs-00025I-FX; Tue, 30 Nov 2021 11:39:32 +0100
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20211129072235.2016324-1-ahmad@a3f.at>
 <20211130102302.GP28260@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <93265eaa-3a16-9253-b6f5-35dae8a9f3ab@pengutronix.de>
Date: Tue, 30 Nov 2021 11:39:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211130102302.GP28260@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_023933_898047_8B36FF09 
X-CRM114-Status: GOOD (  25.16  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] state: make first boot with uninitialized legacy state
 less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 30.11.21 11:23, Sascha Hauer wrote:
> On Mon, Nov 29, 2021 at 08:22:35AM +0100, Ahmad Fatoum wrote:
>> With non-legacy state, barebox checks a header for a specific magic
>> signature. This can be all zero on an uninitialized state, so in that
>> particular case, bump down the log message severity.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>> Applies on top of https://lore.barebox.org/barebox/20211125161042.3829996-3-a.fatoum@pengutronix.de/

Yes, please see ^ first.

>> ---
>>  common/state/backend_bucket_direct.c | 4 ++--
>>  common/state/backend_storage.c       | 7 +++++--
>>  2 files changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
>> index 517aec60634b..117cdfb46c9e 100644
>> --- a/common/state/backend_bucket_direct.c
>> +++ b/common/state/backend_bucket_direct.c
>> @@ -76,9 +76,9 @@ static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
>>  		if (meta.magic != ~0 && !!meta.magic)
>>  			bucket->wrong_magic = 1;
>>  		if (!IS_ENABLED(CONFIG_STATE_BACKWARD_COMPATIBLE)) {
>> -			dev_err(direct->dev, "No meta data header found\n");
>>  			dev_dbg(direct->dev, "Enable backward compatibility or increase stride size\n");
>> -			return -EINVAL;
>> +			return dev_err_state_init(direct->dev, meta.magic ? -EINVAL : -ENOMEDIUM,
>> +						  "No meta data header found\n");
> 
> What is dev_err_state_init()? I don't have that in my tree.
> 
>>  		}
>>  		read_len = direct->max_size;
>>  		if (lseek(direct->fd, direct->offset, SEEK_SET) !=
>> diff --git a/common/state/backend_storage.c b/common/state/backend_storage.c
>> index 72f8bcf521ad..c55d22e37f70 100644
>> --- a/common/state/backend_storage.c
>> +++ b/common/state/backend_storage.c
>> @@ -156,10 +156,13 @@ int state_storage_read(struct state_backend_storage *storage,
>>  		totalbuckets++;
>>  
>>  		ret = bucket->read(bucket, &bucket->buf, &bucket->len);
>> -		if (ret == -EUCLEAN)
>> +		if (ret == -EUCLEAN) {
>>  			bucket->needs_refresh = 1;
>> -		else if (ret)
>> +		} else if (ret) {
>> +			if (ret == -ENOMEDIUM)
>> +				zerobuckets++;
> 
> This variable also does not exist. Does this patch depend on other
> patches?

It does. I

> 
> Sascha
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

