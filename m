Delivery-date: Mon, 08 Aug 2022 13:55:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1M6-00G7yG-Q4
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:55:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1M6-0005L5-BN
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M/bgPXtDzISyzRYDeP0MRw6VjSKq/6YMKxxd/PDUS+E=; b=Ff14cW5Bkdat/An0sD1R3j1o1o
	CRJtqooEyf/LK7uJEtTGjCt4D2CM/a11ZBfZqEQ+mmrvTDCaXymt0D194ES541OsgV0XObinuQYpi
	8W308zXiYyZhRqYyEihDw1RDauitJ52ethL+xftHuLEVUmflzfcF1K/AjEYGUX3OATtUfKtib9uq0
	uegAUoxUEP8tCPyM9QclZ2//aVJRjalcVgXtijlgixR2yJKNnu9OkkCMCVOZqpqJAHzY+tsseFgMf
	aHDfnlDYVkyRr0ZXmb4oDD/LsV5nJhsFpZ70bizKcnVOKJlegFCkgfe/8EwBj7S6fKkD7a7sljPv9
	16EWwY2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1Kh-00DNpt-55; Mon, 08 Aug 2022 11:54:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1H3-00DLhh-5T
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:50:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oL1H1-0004K7-NH; Mon, 08 Aug 2022 13:50:19 +0200
Message-ID: <bd4db464-ea76-0bc4-1967-739798a00300@pengutronix.de>
Date: Mon, 8 Aug 2022 13:50:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220808062010.390394-1-a.fatoum@pengutronix.de>
 <20220808062010.390394-2-a.fatoum@pengutronix.de>
 <20220808114852.GI7333@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220808114852.GI7333@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_045021_254207_385C3834 
X-CRM114-Status: GOOD (  22.30  )
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
Subject: Re: [PATCH master 2/3] common: machine_id: guard against digest algo
 being unavailable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.08.22 13:48, Sascha Hauer wrote:
> On Mon, Aug 08, 2022 at 08:20:09AM +0200, Ahmad Fatoum wrote:
>> All callsites of digest_alloc(_by_algo) check for NULL pointer before
>> proceeding except for machine_id_set_globalvar(). Fix this to fail
>> more gracefully instead of the crash I ran into.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/machine_id.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/common/machine_id.c b/common/machine_id.c
>> index a530fdeb1da8..189e74bd6796 100644
>> --- a/common/machine_id.c
>> +++ b/common/machine_id.c
>> @@ -30,14 +30,15 @@ static int machine_id_set_globalvar(void)
>>  	unsigned char machine_id[SHA1_DIGEST_SIZE];
>>  	char hex_machine_id[MACHINE_ID_LENGTH];
>>  	char *env_machine_id;
>> -	int ret;
>> +	int ret = -EOPNOTSUPP;
>>  
>>  	/* nothing to do if no hashable information provided */
>>  	if (!__machine_id_hashable)
>>  		return 0;
>>  
>>  	digest = digest_alloc_by_algo(HASH_ALGO_SHA1);
> 
> Had to read this twice to be sure it's correct. A plain
> 
> 	if (!digest) {
> 		ret = -EOPNOTSUPP;
> 		goto out;
> 	}
> 
> seems easier to follow.

Fine by me. Can you fixup or should I?

Cheers,
Ahmad

> 
> Sascha
> 
>> -	ret = digest_init(digest);
>> +	if (digest)
>> +		ret = digest_init(digest);
>>  	if (ret)
>>  		goto out;
>>  
>> -- 
>> 2.30.2
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


