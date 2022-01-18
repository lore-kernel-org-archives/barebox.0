Delivery-date: Tue, 18 Jan 2022 06:41:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9hF1-005IGi-M6
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 06:41:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9hF0-0000wx-9o
	for lore@pengutronix.de; Tue, 18 Jan 2022 06:41:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UMhB/PVh3Y9b36Vy6r1wQhS3F1aVybjDcR0t+XsG5hA=; b=mz6GN6pImXYzkJNqmHbA4gEgOC
	rCdnfQE1Sedj4Dm6cFTbnzmV02SNMnsrpJiEx8SqoDDcV+JjnHdCoYyLMgh5QrsFYEjK/b04Z0DVS
	fxKFNrrlR0G4bxTgbKW2VLQM7gv2iBYsjQjbWeHBZs2gq27R/46H2a4y/no/0KfQot/iDAmr5uBVk
	n8nfIZ46UB+a7sC5gvrVDdhfTSOCrFN/umHY9c+ATU4KgsmbDB/HStop15z/VEE6tOjz0eDzQIbgL
	G+UUwQHBOf3vJDlZoErj8BotmfbmvKob8CdhFOr2yW0O4cZgx2xEeMY9g9GnTVeM1fE56Sa54GzaC
	u18ngPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9hDL-000Ll7-Ao; Tue, 18 Jan 2022 05:39:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9hDF-000LkR-C1
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 05:39:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n9hDB-0000hY-BW; Tue, 18 Jan 2022 06:39:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Lucas Stach <dev@lynxeye.de>, barebox@lists.infradead.org
References: <20220116213221.3466936-1-dev@lynxeye.de>
 <095bafc0-7261-aa13-a9c7-8022cc78b26c@pengutronix.de>
 <10192ccb41be58fd4e53044b17e6a5838c3629d7.camel@lynxeye.de>
 <0ecb57c3-e0a3-076f-5bd7-4b12c59fa80e@pengutronix.de>
Message-ID: <262dfcb7-416d-e537-12ab-680c020bc4a7@pengutronix.de>
Date: Tue, 18 Jan 2022 06:39:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <0ecb57c3-e0a3-076f-5bd7-4b12c59fa80e@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_213921_453954_1119CA66 
X-CRM114-Status: GOOD (  24.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] clk: ignore of_device_ensure_probed error in clock
 lookup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.01.22 11:20, Ahmad Fatoum wrote:
> On 17.01.22 10:16, Lucas Stach wrote:
>> Hi Ahmad,
>>
>> Am Montag, dem 17.01.2022 um 06:12 +0100 schrieb Ahmad Fatoum:
>>> Hello Lucas,
>>>
>>> On 16.01.22 22:32, Lucas Stach wrote:
>>>> For CLK_OF_DECLARE clocks there is no driver that is bound to the device,
>>>> so the lookup fails before even trying to find the provider, breaking
>>>> the parent_ready() logic used when initializing the declared providers.
>>>>
>>>> Ignore the return code from of_device_ensure_probed to allow the lookup
>>>> to proceed as usual. If of_device_ensure_probed the lookup will also fail,
>>>> as no provider will be found.
>>>
>>> This seems to be an alternate fix for the issue addressed by:
>>> bd516e38dd14 ("clk: handle CLK_OF_DECLARE in deep probe")
>>>
>>> What do you think?
>>
>> Yes, it seems to be aimed at the same issue. However, your fix in
>> bd516e38dd14 doesn't fix my specific issue, as we still don't get the
>> correct -EPROBE_DEFER error code for the logic in parent_ready() in
>> drivers/clk/clk.c to work.
>>
>> I guess we could even revert your fix if we agree that ignoring the
>> return code here is the right thing to do? Attaching a dummy driver 
>> doesn't seem to be totally correct, as I think it isn't prohibited to
>> have both a CLK_OF_DECLARE clock controller and a real platform driver
>> for other uses attached to the same OF node. While I'm not aware of any
>> clock controllers where this would be the case, I have seen such
>> constructs with IRQ controllers.
> 
> Sounds logical. I'll test with my fix reverted and yours applied
> and report back.

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

"clk: handle CLK_OF_DECLARE in deep probe" can be dropped again.

> 
>>
>> Regards,
>> Lucas
>>
>>>
>>>>
>>>> Signed-off-by: Lucas Stach <dev@lynxeye.de>
>>>> ---
>>>>  drivers/clk/clk.c | 6 ++----
>>>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
>>>> index 189c9c62df5c..a1d1d7f1a467 100644
>>>> --- a/drivers/clk/clk.c
>>>> +++ b/drivers/clk/clk.c
>>>> @@ -643,11 +643,9 @@ struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
>>>>  {
>>>>  	struct of_clk_provider *provider;
>>>>  	struct clk *clk = ERR_PTR(-EPROBE_DEFER);
>>>> -	int ret;
>>>>  
>>>> -	ret = of_device_ensure_probed(clkspec->np);
>>>> -	if (ret)
>>>> -		return ERR_PTR(ret);
>>>> +	/* Ignore error, as CLK_OF_DECLARE clocks have no proper driver. */
>>>> +	of_device_ensure_probed(clkspec->np);
>>>>  
>>>>  	/* Check if we have such a provider in our array */
>>>>  	list_for_each_entry(provider, &of_clk_providers, link) {
>>>>
>>>
>>>
>>
>>
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

