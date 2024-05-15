Delivery-date: Wed, 15 May 2024 08:35:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s78En-00FRdI-2P
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 08:35:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s78El-0001Lk-Nx
	for lore@pengutronix.de; Wed, 15 May 2024 08:35:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O+MXkXJ/COXmkWUcdUk5shqXotG6igpsny3aZhCpHNE=; b=aBZ8npZnp00yNIMRlvwCll3hbL
	Lu0Dw5+PZ3ZjaP1LvdFKzFylyXzN5mov29Bnq7jxIqrVugu/8ea/MQDvbzqOpUJCVYvnvpOOPFWJF
	8GfrmJRNTQh7jgh2mrTU6sANQ5i+JmgtcooCeB0DvTgcN6QT+BB1WA7dGd/+bXyTeItKXlIPRlrk6
	f9xCOFDAIwu/OKMlj62JoEksJ9WM4fp4sEtqsRejc2uZtYON5+k937NwS/46A3cai+crT2gCcG60J
	AIoJAW4BjsZh3VF2lNgFcKRwgRvarixuq/EIKKtdiYL2iEyLOsCtZkjkrfaENHztUsUiDO4BlM/El
	oTFMOPGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s78EG-00000000fCG-3siW;
	Wed, 15 May 2024 06:35:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s78ED-00000000fBm-3QMx
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 06:35:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s78EB-00019z-K8; Wed, 15 May 2024 08:35:03 +0200
Message-ID: <2973f005-e781-496a-b8ec-43b982a76750@pengutronix.de>
Date: Wed, 15 May 2024 08:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Riesch <michael.riesch@wolfvision.net>,
 barebox@lists.infradead.org
References: <20240515060736.3580327-1-a.fatoum@pengutronix.de>
 <008b5e2e-85b9-4a15-845e-70af7809f769@wolfvision.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <008b5e2e-85b9-4a15-845e-70af7809f769@wolfvision.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_233505_955587_5D4D41B2 
X-CRM114-Status: GOOD (  21.03  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: boards: wolfvision: use state_by_alias instead of
 opencoding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michael,

On 15.05.24 08:29, Michael Riesch wrote:
> Hi Ahmad,
> 
> Thanks a lot for your patch!
> 
> On 5/15/24 08:07, Ahmad Fatoum wrote:
>> This introduces no functional change, but makes code a bit more compact.
>>
>> Cc: Michael Riesch <michael.riesch@wolfvision.net>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  common/boards/wolfvision/common.c | 6 +-----
>>  1 file changed, 1 insertion(+), 5 deletions(-)
>>
>> diff --git a/common/boards/wolfvision/common.c b/common/boards/wolfvision/common.c
>> index f483918cecfe..5484a8ac6b06 100644
>> --- a/common/boards/wolfvision/common.c
>> +++ b/common/boards/wolfvision/common.c
>> @@ -62,11 +62,7 @@ int wolfvision_register_ethaddr(void)
>>  	char mac[ETH_ALEN];
>>  	int ret;
>>  
>> -	ret = of_device_ensure_probed_by_alias("state");
> 
> Just to be on the safe side: of_device_ensure_probed_by_alias makes sure
> that the underlying drivers are probed, right?

Yes.

> 
>> -	if (ret)
>> -		return ret;
>> -
>> -	state = state_by_name("state");
>> +	state = state_by_alias("state");
> 
> state_by_alias, on the other hand, calls only of_find_node_by_alias,
> which (as I presume) does not ensure that.

Yes, but afterwards it calls state_by_node(), which calls of_device_ensure_probed().

> IIRC the of_device_ensure_... magic was necessary in our setup, but I
> can give your patch a test during the next round of barebox board code
> cleanups.

Yes, I ran into these problems before too on a deep probe system, which is
why state_by_alias was added.

Cheers,
Ahmad

> 
> Best regards,
> Michael
> 
>>  	if (!state)
>>  		return -ENOENT;
>>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



