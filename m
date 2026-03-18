Delivery-date: Wed, 18 Mar 2026 12:54:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pUJ-002B7k-0K
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 12:54:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2pUI-0003ox-FD
	for lore@pengutronix.de; Wed, 18 Mar 2026 12:54:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p7Syu+ryGneXfwAwLsagZA/xSY2Ig7qxY1AgQlGQV64=; b=E0jsM5csTB7rFEcYWzOpvaEslt
	yPotO8AzSAIByi9CXSVuigbeulIhdwvua7cRBBgfIa28hYnPQAr3F34JeR0nZ2+o8Psy77tZpEjPm
	fpIJc8njjnuEKtLlZ8rTvETGMsQ8EGzkBU2NyYUcvHnZd0cMyHrTHBDf/JLWREsGff158z74UG27m
	Oasphvc1omkwJtjGv8jp7y+3lYbQMmOSbKPr1zMnsz719w7D4OM/k2v6PNfLCebEAuGWrtPGNPI4/
	0dgs1Ae2Ud/0h8hsMvznVzrq+drvjmRJCNhNvmGm//t27Y5iO+PC5YeF4Uf7de+FW2kXuhGwH5cqn
	GRs+jeIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pTx-00000008LlK-1N2B;
	Wed, 18 Mar 2026 11:54:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2pTt-00000008Lkw-1EDL
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 11:54:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w2pTr-0003j3-OP; Wed, 18 Mar 2026 12:54:31 +0100
Message-ID: <deef5591-a697-415d-93fd-6e02412f49aa@pengutronix.de>
Date: Wed, 18 Mar 2026 12:54:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
 <20260318-v2026-02-0-topic-sconfig_console-v3-3-e26055294723@pengutronix.de>
 <f9d5e454-6721-4467-8a6d-2f42f8754ed8@pengutronix.de>
 <7a04e3afc4460bfb232c688470f384e413d92a94.camel@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <7a04e3afc4460bfb232c688470f384e413d92a94.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_045433_334746_6CE4DBA0 
X-CRM114-Status: GOOD (  27.77  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/5] security: policy: set active policy on boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/18/26 12:38, Fabian Pflug wrote:
> On Wed, 2026-03-18 at 12:28 +0100, Ahmad Fatoum wrote:
>> On 3/18/26 10:22, Fabian Pflug wrote:
>>> If init name has been set at compiletime and the policy is available,
>>> because it is part of the path, then set the active policy to the policy
>>> selected by compiletime.
>>> Since this is so early in the bootchain, there is no need to call
>>> security_policy_activate, because there should not be any registered
>>> callbacks at this moment in time.
>>> If no policy could be found, then it will be filled as before by the
>>> first call to is_allowed.
>>
>> The code in is_allowed is:
>>
>> if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
>>         security_policy_select(CONFIG_SECURITY_POLICY_INIT);
>>         policy = active_policy;
>> }
>>
>> It becomes dead code with your change here as CONFIG_SECURITY_POLICY_INIT
>> is a compile-time constant, there is no filling on the first call anymore.
> 
> I also thought about it, but if the initial policy is not part of the compiletime policies, but instead gets added
> during board setup code, then the change in init will not find the specified policy, resulting in policy being NULL and
> this code still working.

I can't follow. policy is an argument and CONFIG_SECURITY_POLICY_INIT
is not settable from any board, so that's dead code now AFAICS.

Cheers,
Ahmad 

> 
>>
>>>
>>> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>>> ---
>>>  security/policy.c | 3 +++
>>>  1 file changed, 3 insertions(+)
>>>
>>> diff --git a/security/policy.c b/security/policy.c
>>> index 85333d9e6f..e2d1b10a78 100644
>>> --- a/security/policy.c
>>> +++ b/security/policy.c
>>> @@ -235,6 +235,9 @@ static int security_init(void)
>>>  	if (*CONFIG_SECURITY_POLICY_PATH)
>>>  		security_policy_add(default);
>>>  
>>> +	if (*CONFIG_SECURITY_POLICY_INIT)
>>> +		active_policy = security_policy_get(CONFIG_SECURITY_POLICY_INIT);
>>> +
>>
>> I think I decided initially against this, because there was initially
>> a Sconfig option against changing the active security policy.
>>
>> I believe now a single option is too limiting, it should instead be
>> a directed graph that explains which policies are reachable from a given
>> policy.
>>
>> Anyways, the change here invalidates the Kconfig help text for
>> SECURITY_POLICY_INIT.
>>
>> I am not fully sure if this change is a good idea, but it needs to
>> be fixed to be considered. I assume you do this, because checking
>> the name of the policy doesn't trigger a selection like IS_ALLOWED does?
> 
> exactly.
> during device_probe, there is a need to know the current policy name, if there is a policy active.
> 
> I will have a look into it.
> 
> Fabian
> 
>>
>> Thanks,
>> Ahmad
>>
>>
>>>  	return 0;
>>>  }
>>>  pure_initcall(security_init);
>>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


