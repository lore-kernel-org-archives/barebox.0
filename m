Delivery-date: Thu, 19 Mar 2026 15:59:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3EqM-002gMy-0L
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 15:59:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3EqL-00034I-DW
	for lore@pengutronix.de; Thu, 19 Mar 2026 15:59:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z6XEILtiZRGmIGoecMB5PyWBCuUZMxYTpW8Q/vxrxIE=; b=FwGDw4KG+IFldaqvKdlbFLeLxE
	QZiMaQKm9bfCXob0HRidZMEX1caPOd2AqAp1gqYbjEhzOZUDu9qnLuOzQIr5f9tgaRH4Sis4Q5bhe
	VGDJF/1XeY482EgmV8G9ZqIQU6TLLkA1vih0/tPi63W1aL6jRWrIH4VQz1EcX2HoPIPjU1GOiTvxt
	+0bJSxTXXXSSMvlAgaxhCbdlcWKuLykan8Gi06Yph/95JCVqcxwqB5E9/U1B5bzaRnmxcFESPZYEY
	KJ5znaSvktI9mZGByBiia2SNp+4xQIsT++G8br1p7DMGFPFG5U5QS2QimdosDBpnPx5RC5RgeX2hx
	gW5tAtWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Eps-0000000AqlP-3IAz;
	Thu, 19 Mar 2026 14:58:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Eps-0000000Aqkh-0Xr7
	for barebox@bombadil.infradead.org;
	Thu, 19 Mar 2026 14:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=z6XEILtiZRGmIGoecMB5PyWBCuUZMxYTpW8Q/vxrxIE=; b=XX6IrmnCWrpgVqZVgO4GX2ARYZ
	aBLhyKEApnvQe1Ln2vsANXrr53fuQb0rAvHiHbOoOrF32/tS43MR703l4vsWyFn6jXhomIVENYXZ7
	e7p6xMfis+AG/x2qnnZo7eGvRho5p1K/Cck/+jEj7aHcvHCxcDiAAnrhEIuAy+7Rtx6rC555yQFMA
	AWApO/8FMqiygJogDMCpR/c678QYGMN4a9hKOzcmfVKofFOQyly2ImuqWkihx2oloo1gedO4EWQmX
	4PPJzj4xlvnkjpvled+Zqb18/ndjwurXNzHauokCtUl6xt2CBiB17kJhq0Xa0i/J93SkXHddGqDKB
	jBgkXGXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Epo-0000000Dl1e-3cLE
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 14:58:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w3Epn-0002xk-82; Thu, 19 Mar 2026 15:58:51 +0100
Message-ID: <7f39ce24-1240-4c5d-bf73-0be7d712c7c2@pengutronix.de>
Date: Thu, 19 Mar 2026 15:58:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
 <20260318-v2026-02-0-topic-sconfig_console-v3-3-e26055294723@pengutronix.de>
 <f9d5e454-6721-4467-8a6d-2f42f8754ed8@pengutronix.de>
 <7a04e3afc4460bfb232c688470f384e413d92a94.camel@pengutronix.de>
 <deef5591-a697-415d-93fd-6e02412f49aa@pengutronix.de>
 <31126663492156424ddfba2d0a7c4411ea5ecfc0.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <31126663492156424ddfba2d0a7c4411ea5ecfc0.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_145853_037782_B1F3A2B0 
X-CRM114-Status: GOOD (  29.73  )
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

Hi,

On 3/18/26 1:47 PM, Fabian Pflug wrote:
> On Wed, 2026-03-18 at 12:54 +0100, Ahmad Fatoum wrote:
>> On 3/18/26 12:38, Fabian Pflug wrote:
>>> On Wed, 2026-03-18 at 12:28 +0100, Ahmad Fatoum wrote:
>>>> On 3/18/26 10:22, Fabian Pflug wrote:
>>>>> If init name has been set at compiletime and the policy is available,
>>>>> because it is part of the path, then set the active policy to the policy
>>>>> selected by compiletime.
>>>>> Since this is so early in the bootchain, there is no need to call
>>>>> security_policy_activate, because there should not be any registered
>>>>> callbacks at this moment in time.
>>>>> If no policy could be found, then it will be filled as before by the
>>>>> first call to is_allowed.
>>>>
>>>> The code in is_allowed is:
>>>>
>>>> if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
>>>>         security_policy_select(CONFIG_SECURITY_POLICY_INIT);
>>>>         policy = active_policy;
>>>> }
>>>>
>>>> It becomes dead code with your change here as CONFIG_SECURITY_POLICY_INIT
>>>> is a compile-time constant, there is no filling on the first call anymore.
>>>
>>> I also thought about it, but if the initial policy is not part of the compiletime policies, but instead gets added
>>> during board setup code, then the change in init will not find the specified policy, resulting in policy being NULL
>>> and
>>> this code still working.
>>
>> I can't follow. policy is an argument and CONFIG_SECURITY_POLICY_INIT
>> is not settable from any board, so that's dead code now AFAICS.
> 
> policy is the argument, but the argument could be NULL, for example if `IS_ALLOWED` is used in the code.
> Then policy is replaced by active_policy, which could also be NULL, if `security_policy_get(CONFIG_SECURITY_POLICY_INIT)
> ` during init returns NULL, which is the case, if the policy is not registered at the time of call.
> During security_init only CONFIG_SECURITY_POLICY_PATH are registered. So for example, you could add multiple policys
> with `security_policy_add` inside your boardcode and have one of them declared as init policy with
> CONFIG_SECURITY_POLICY_INIT. Then this path is taken during the first call to `IS_ALLOWED` (after board init)

I talked it over with Fabian. I see now what I misunderstood: The policy
is selected only if it exists. If it's not registered yet, we still need
the later policy select.

Still, I feel this complicates the logic more than I'd like.

Instead we can factor out the CONFIG_SECURITY_POLICY_INIT logic in
is_allowed into security_policy_ensure (or some better name) and then
call that explicitly on entry to functions that expect the policy
selection to be settled.

Cheers,
Ahmad

> 
> Kind regards
> Fabian
>>
>> Cheers,
>> Ahmad 
>>
>>>
>>>>
>>>>>
>>>>> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
>>>>> ---
>>>>>  security/policy.c | 3 +++
>>>>>  1 file changed, 3 insertions(+)
>>>>>
>>>>> diff --git a/security/policy.c b/security/policy.c
>>>>> index 85333d9e6f..e2d1b10a78 100644
>>>>> --- a/security/policy.c
>>>>> +++ b/security/policy.c
>>>>> @@ -235,6 +235,9 @@ static int security_init(void)
>>>>>  	if (*CONFIG_SECURITY_POLICY_PATH)
>>>>>  		security_policy_add(default);
>>>>>  
>>>>> +	if (*CONFIG_SECURITY_POLICY_INIT)
>>>>> +		active_policy = security_policy_get(CONFIG_SECURITY_POLICY_INIT);
>>>>> +
>>>>
>>>> I think I decided initially against this, because there was initially
>>>> a Sconfig option against changing the active security policy.
>>>>
>>>> I believe now a single option is too limiting, it should instead be
>>>> a directed graph that explains which policies are reachable from a given
>>>> policy.
>>>>
>>>> Anyways, the change here invalidates the Kconfig help text for
>>>> SECURITY_POLICY_INIT.
>>>>
>>>> I am not fully sure if this change is a good idea, but it needs to
>>>> be fixed to be considered. I assume you do this, because checking
>>>> the name of the policy doesn't trigger a selection like IS_ALLOWED does?
>>>
>>> exactly.
>>> during device_probe, there is a need to know the current policy name, if there is a policy active.
>>>
>>> I will have a look into it.
>>>
>>> Fabian
>>>
>>>>
>>>> Thanks,
>>>> Ahmad
>>>>
>>>>
>>>>>  	return 0;
>>>>>  }
>>>>>  pure_initcall(security_init);
>>>>>
>>>>
>>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



