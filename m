Delivery-date: Wed, 11 Feb 2026 13:57:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq9mP-000XHk-02
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 13:57:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vq9mP-0002oS-7A
	for lore@pengutronix.de; Wed, 11 Feb 2026 13:57:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qYxSDC2HEtzo0ZW2q4BnFzzwTFcFkUDrSjcaOxljNVo=; b=OtdPoASRnDvH3Lc4HJ3qVV0ddN
	0LShn5mJGG7I2dHuB7aSs6A4QSomH0eCFsmOh8IeJKLgtJGTDdC6Yi2bHcxKn2pzuF5DVM1pJPcOR
	Jb/bh6VFQP2Ih2wqQ2hVBFPRNBQiNR0vB1W+r8/P5aH/+kel3o1esf85hgEqWpAvCL2gPD5aS+W39
	TKVxEs4a5U2f9rQIMzeqSaOsN+TLLKSGL5SjEVqBI8Zx//Law6rV5z1gn2xlx+yYbV27ydiDyzB3R
	KcMlEPcD8PuenGNWM1CEqdKj59cP/k4AEQSCAJa3J5PTMY0bprdntA9btzGMjKtnQjo7lAOZLIFJQ
	daJU44JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq9m3-00000000ehC-1w1D;
	Wed, 11 Feb 2026 12:56:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq9m0-00000000egk-1sAC
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 12:56:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vq9ly-0002kv-Vk; Wed, 11 Feb 2026 13:56:51 +0100
Message-ID: <a4d6b828-e1a6-4888-ac86-aa442a47934b@pengutronix.de>
Date: Wed, 11 Feb 2026 13:56:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260210221343.3431882-1-m.felsch@pengutronix.de>
 <aYw1kgLBfDsrVpx_@pengutronix.de>
 <1672b0e8-65ac-4f92-afb7-e5c9eb798537@pengutronix.de>
 <20260211101451.lyhzyyzxmdydfldj@pengutronix.de>
 <aYx7vH9JdJo_IMz8@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aYx7vH9JdJo_IMz8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_045652_495043_6F71CD2A 
X-CRM114-Status: GOOD (  29.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH] ARM: dts: i.MX8MP: remove barebox environment
 handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 2/11/26 1:53 PM, Sascha Hauer wrote:
> On Wed, Feb 11, 2026 at 11:14:51AM +0100, Marco Felsch wrote:
>> Hi Sascha, Ahmad,
>>
>> On 26-02-11, Ahmad Fatoum wrote:
>>> Hi,
>>>
>>> On 2/11/26 8:53 AM, Sascha Hauer wrote:
>>>> On Tue, Feb 10, 2026 at 11:13:40PM +0100, Marco Felsch wrote:
>>>>> While specifying the barebox environment within the barebox dts is very
>>>>> helpful for standalone barebox development it's difficult for BSPs which
>>>>> use this development platform and want to use the GPT mechanism.
>>>>> As a result BSPs had to manually delete the nodes via a external
>>>>> provided dts, because we wanted to keep the comfort for the standalone
>>>>> development flow.
>>>>>
>>>>> Lucky commit 86531d4bf7aa ("commands: create createnv command")
>>>>> introduced a convenient helper to create a barebox environemnt on
>>>>> demand exactly for this purpose:
>>>>>
>>>>> | "We want to move away from describing the barebox environment explicitly
>>>>> | in the device tree and instead motivate usage of GPT partitions.."
>>>>>
>>>>> So start with the i.MX8MP-EVK to encourage the use of GPT partitions and
>>>>> to make the BSP integration for these development platforms easier.
>>>>
>>>> Generally I like this idea, but it breaks the existing users
>>>> environment and doing this sharp cut might be annoying for the phase
>>>> where you switch between different barebox versions which could be quite
>>>> common for development boards.
>>
>> Good point, albeit commit 86531d4bf7aa is part of v2025.08.0, so it's
>> ~6months old. I also don't know how often i.MX8MP-EVK barebox features
>> are implemented which require to jump between barebox versions.
> 
> Jumping between versions is something that just happens, be it for
> bisecting or you have a development and stable branch for a BSP with
> different barebox versions.

Worth noting that we already have a way out: If someone's bisecting,
they can set global.env.autoprobe=0 (or disable CONFIG_INSECURE..) to
restore the old behavior.

> 
>>
>>>> Would be great to have a grace period in which we prefer the UUID
>>>> environment over the device tree environment (we might do this already)
>>>> and warn in case we still use the latter. We could stick the warning to
>>>> a device tree property like "warn-deprecated-env" and remove the
>>>> environment once they carry this property for a year or so.
>>>>
>>>> Just the ideas from the top of my head. Thoughts?
>>>
>>> Here's my opinion from a year back:
>>> https://lore.barebox.org/barebox/1ff0f545-effa-4b87-81b7-524919333777@pengutronix.de/
>>
>> Thanks for the link, I fogot that I've send somthing similar already ^^
>>
>>> I am interested to hear thoughts on it.
>>> Compared to our suggestion, there will be no eventual removal of the node.
>>
>> Both your suggestions are very similar and provide a smother transistion
>> though. I would like to get rid of the old OF-env handling completely
>> and therefore prefer Sascha's approach a bit more. Having a fallback is
>> good, but fallbacks tend to crumble over time since they aren't tested.
> 
> I like Ahmads approach with a different compatible better as it makes
> clear that it's only used as a fallback. Whether we
> remove the device tree nodes from the repository or not doesn't matter
> now, we can decide that later with both approaches.
> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



