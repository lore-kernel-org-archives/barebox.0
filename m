Delivery-date: Fri, 02 Dec 2022 10:05:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11yq-008M1N-ER
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 10:05:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11yp-0005ld-5F
	for lore@pengutronix.de; Fri, 02 Dec 2022 10:05:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3N4KolA+RoBra39/K3uEATK0xM02qv/8i2a59B5LKSU=; b=zpnxTGldAkZNtvpD2PoppTfooR
	IFS8zlhWhweZ6R+Q+CQ5a5olShFeZnxQMSeaQ55a+qVgDlVe2zbtpSkjJ1pz16xCIA9mrDJgUmEag
	z+7aR8q4/Uc+FF7/KY0X6tGCY9C8Y9aRWijLglJTjjkTwht29ET5jKJZ4Dn6vR1lXhL9ngrVGpNyR
	pQ9zS6ooKXN+oy/tdLmkXAlZvHmXHWCnuHPGFjSNEAgDsj3A87VnmlVGp6pI/vP6j0kCmd5HRq8fq
	FZkhGXwV9uV42N7v5m4qZqx1O8r4WEVMRndl2LIvmfpgFR+dNCVfeoZopd4je+U0Ex8vCUarUsW7Q
	sNN65itA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11xc-00EmO6-9m; Fri, 02 Dec 2022 09:03:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11xW-00EmLw-QL
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 09:03:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1p11xV-0005NA-Ff; Fri, 02 Dec 2022 10:03:49 +0100
Message-ID: <e308926f-74db-f117-2d8e-947b947bb634@pengutronix.de>
Date: Fri, 2 Dec 2022 10:03:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221201133853.639287-1-a.fatoum@pengutronix.de>
 <20221202085038.m3pygfh4hojzjcez@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221202085038.m3pygfh4hojzjcez@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_010350_879233_A703A5E3 
X-CRM114-Status: GOOD (  18.75  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regulator: core: don't call of_regulator_get with NULL
 argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.12.22 09:50, Marco Felsch wrote:
> On 22-12-01, Ahmad Fatoum wrote:
>> regulator_get calls either of_regulator_get or dev_regulator_get, both
>> of which accept a supply parameter. Only dev_regulator_get gracefully
>> handles a NULL supply by considering all registered regulators.
> 
> Wouldn't it be better to align of_regulator_get behaviour with
> dev_regulator_get?

Nope, not specifying a supply id is legacy behavior. Consumers
should be expected to know the name of the supply they want to
control. In Linux, regulator_get(dev, NULL) is already an error. 

> 
>> of_regulator_get on the other hand, will complain at debug level,
>> before returning NULL:
>>
>>   uart-pl011 fe201000.serial@7e201000.of: No <NULL>-supply node found,
>>   using dummy regulator
>>
>> Avoid this message by skipping of_regulator_get if no supply was found
>> and directly call dev_regulator_get.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/regulator/core.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
>> index 4876f0f44bdd..d25aba38c3e2 100644
>> --- a/drivers/regulator/core.c
>> +++ b/drivers/regulator/core.c
>> @@ -388,7 +388,7 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
>>  	struct regulator *r;
>>  	int ret;
>>  
>> -	if (dev->device_node) {
>> +	if (dev->device_node && supply) {
>>  		ri = of_regulator_get(dev, supply);
>>  		if (IS_ERR(ri))
>>  			return ERR_CAST(ri);
> 
> Nevertheless the change is correct, so:
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> 
> Regards,
>   Marco
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



