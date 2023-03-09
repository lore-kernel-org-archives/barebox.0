Delivery-date: Thu, 09 Mar 2023 13:49:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paFi4-00Eqp4-T3
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 13:49:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paFi4-0006hM-MI
	for lore@pengutronix.de; Thu, 09 Mar 2023 13:49:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CHqekiWl4Ylijg/kDWGJiKxqxxxKvCQP3LBflqkRacY=; b=dBAcArPIkeQUGTJhSqCdcwz2JC
	xbJdaWiuPnt+Hxer+U6C18K7IzhR1ehHs27y5wBSfwZu9L+yr+BfDDX3X5om9kNLE5NAeLqv+RIEO
	WV6sdFNEv72qlRsKX4E7vytTTNIIWzPWfnpMB5wx3BkDZacMq4QGdGz4sG4IcDZbinI0B3AWTr9vv
	/MLgGuqjts/qztlmCV7Cvp6HZdF2FgGOyqiDCZcUFEfpCZI1sohcJGc1lqOhqYvJU8baBxdQr7TGX
	d9MQg61p8b1MQ2C9WKQGGGDDuReNhUwVo5hVsmOIrVeMmYT7ZRSmP9vMRfMlTbafXlBXFPBy/+g2+
	WPCfKJ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFgi-009vFz-2S; Thu, 09 Mar 2023 12:48:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paFgc-009vFC-SA
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 12:48:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1paFgX-0006ap-Ol; Thu, 09 Mar 2023 13:47:53 +0100
Message-ID: <1f25f1f7-366e-7fe8-96af-50e836b05e26@pengutronix.de>
Date: Thu, 9 Mar 2023 13:47:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230210165353.3601175-1-a.fatoum@pengutronix.de>
 <20230210165353.3601175-4-a.fatoum@pengutronix.de>
 <20230213084512.GF10447@pengutronix.de>
 <071333d6-49e4-a247-cd79-d8d71730e055@pengutronix.de>
In-Reply-To: <071333d6-49e4-a247-cd79-d8d71730e055@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_044758_959141_91C2B1E3 
X-CRM114-Status: GOOD (  23.54  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 4/4] boards: qemu-virt: support passing in FIT public
 key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.02.23 14:03, Ahmad Fatoum wrote:
> The intention of this patch series is to provide the exact same mechanism,
> we already use in non-emulated platforms somehow for QEMU as well.

Ping.

> 
> I agree that in the future, we may want to generally restructure how we
> do this:
> 
> Instead of decompiling mkimage output and including it into a device tree,
> let's have /env/signatures/, where the user can place any number of DTBs.
> 
> All DTB within the directory would have their keys then "installed".
> 
> I'll keep this in mind for when I do some secure-boot related thing the
> next time.
> 
> Cheers,
> Ahmad
> 
>>
>>
>> diff --git a/crypto/rsa.c b/crypto/rsa.c
>> index fc21efdb6d..6939513db9 100644
>> --- a/crypto/rsa.c
>> +++ b/crypto/rsa.c
>> @@ -491,16 +491,13 @@ static struct rsa_public_key *rsa_key_dup(const struct rsa_public_key *key)
>>  extern const struct rsa_public_key * const __rsa_keys_start;
>>  extern const struct rsa_public_key * const __rsa_keys_end;
>>  
>> -static void rsa_init_keys_of(void)
>> +static void rsa_init_keys_of(struct device_node *root)
>>  {
>>  	struct device_node *sigs, *sig;
>>  	struct rsa_public_key *key;
>>  	int ret;
>>  
>> -	if (!IS_ENABLED(CONFIG_OFTREE))
>> -		return;
>> -
>> -	sigs = of_find_node_by_path("/signature");
>> +	sigs = of_find_node_by_path_from(root, "/signature");
>>  	if (!sigs)
>>  		return;
>>  
>> @@ -519,6 +516,26 @@ static void rsa_init_keys_of(void)
>>  	}
>>  }
>>  
>> +extern char __dtb_fitimage_pubkey_start[];
>> +
>> +static void rsa_of_init_keys(void)
>> +{
>> +	struct device_node *root;
>> +
>> +	if (!IS_ENABLED(CONFIG_OFTREE))
>> +		return;
>> +
>> +	root = of_get_root_node();
>> +	if (root)
>> +		rsa_init_keys_of(root);
>> +
>> +#ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
>> +	root = of_unflatten_dtb(__dtb_fitimage_pubkey_start, INT_MAX);
>> +	if (root)
>> +		rsa_init_keys_of(root);
>> +#endif
>> +}
>> +
>>  static int rsa_init_keys(void)
>>  {
>>  	const struct rsa_public_key * const *iter;
>> @@ -533,7 +550,7 @@ static int rsa_init_keys(void)
>>  			       key->key_name_hint, strerror(-ret));
>>  	}
>>  
>> -	rsa_init_keys_of();
>> +	rsa_of_init_keys();
>>  
>>  	return 0;
>>  }
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



