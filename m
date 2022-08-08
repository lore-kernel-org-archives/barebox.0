Delivery-date: Mon, 08 Aug 2022 13:45:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1By-00G76j-Vt
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:45:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1Bz-0003Yi-Uf
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:45:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oEhV/itckmF4yAXBjntiiPKFPJuUAj17OVfMjzZNAVQ=; b=1e1ZVWBEtG78JMF26zzM9HCEkG
	WdtHZ/9mNpWx3Kx3462FBL1e0zFGipSNHy8L94GhMFbOQxR0iW0H3dB8Kaqnf8m/VVOWKzmk94KLn
	/UplCKtIu3VXTtGy5jN3yPL6OcmzYs/ORU78E7a0cW56EjckXOZGaq/gkCo+/Rt/dkqZ1QytoMdyk
	v0XFlP6eMi3phHjqe9nZ5E1teLw54R/8/i9gyeghUB+l9Sp8B9Ml19fuIBxrBqQhxpuqhN0Gnt+x1
	fkojVbbRvr7xrD+NCmG8kUhUhC5TI716jAuFoM+lqDG8IsUCHzcGKM7RJ14nxn45xPz/J5i1sRP5X
	IrGZs1ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1Ah-00DICQ-KG; Mon, 08 Aug 2022 11:43:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1Ab-00DI8g-O5
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:43:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oL1AZ-0003TM-M2; Mon, 08 Aug 2022 13:43:39 +0200
Message-ID: <06be733d-03f6-4bc5-0b40-c1f763728e60@pengutronix.de>
Date: Mon, 8 Aug 2022 13:43:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220808062010.390394-1-a.fatoum@pengutronix.de>
 <20220808114024.GH7333@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220808114024.GH7333@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_044341_861126_7F70A768 
X-CRM114-Status: GOOD (  24.00  )
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
Subject: Re: [PATCH master 1/3] common: machine_id: simplify early exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 08.08.22 13:40, Sascha Hauer wrote:
> On Mon, Aug 08, 2022 at 08:20:08AM +0200, Ahmad Fatoum wrote:
>> We don't need the goto if we haven't done anything to clean up anyway.
>> also globalvar_add_simple("machine_id", NULL) is a no-op when we have
>> just called globalvar_add_simple above with an actual argument.
>> It doesn't clean the parameter, nor should it, because the code is
>> executed for the successful code as well and there is nothing that can
>> fail that late.
>>
>> No functional change.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/machine_id.c | 6 ++----
>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>
>> diff --git a/common/machine_id.c b/common/machine_id.c
>> index 6480806cd287..a530fdeb1da8 100644
>> --- a/common/machine_id.c
>> +++ b/common/machine_id.c
>> @@ -30,11 +30,11 @@ static int machine_id_set_globalvar(void)
>>  	unsigned char machine_id[SHA1_DIGEST_SIZE];
>>  	char hex_machine_id[MACHINE_ID_LENGTH];
>>  	char *env_machine_id;
>> -	int ret = 0;
>> +	int ret;
>>  
>>  	/* nothing to do if no hashable information provided */
>>  	if (!__machine_id_hashable)
>> -		goto out;
>> +		return 0;
>>  
>>  	digest = digest_alloc_by_algo(HASH_ALGO_SHA1);
>>  	ret = digest_init(digest);
>> @@ -58,8 +58,6 @@ static int machine_id_set_globalvar(void)
>>  	free(env_machine_id);
>>  
>>  out:
>> -	globalvar_add_simple("machine_id", NULL);
> 
> Without this patch we always created a global.machine_id variable,
> either empty or with a value. With this patch we only create this
> variable when it's non-empty. I think this change is ok as we also
> don't have this variable when CONFIG_MACHINE_ID is disabled.
> 
> Still the "No functional change" doesn't hold true, so we should remove
> it from the commit message.

You're right. I missed that. Can you replace the last line with:

  This slightly alters behavior: Whereas before $global.machine_id was
  always defined when CONFIG_MACHINE_ID is enabled, it's now only
  defined when it's non-empty.

Thanks,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


