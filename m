Delivery-date: Wed, 28 Feb 2024 10:07:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfFuL-00D5q3-22
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 10:07:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfFuH-0007XF-TE
	for lore@pengutronix.de; Wed, 28 Feb 2024 10:07:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a+PeXm+pEFiwV45JPfz4LRfaLcFL3juQTtDkNfJxWwA=; b=Gk6B3h2xjDbWQGce5+jvDa6/Uy
	Xn3O7fZPSSWtEhvFhKd5mBNHAe5VW5kcLpxKUuvABlXcbl6gRxQLXn2M9V9YnFoFcSQtkiHrj1Z5a
	N58IiCXNXz275lqMRR2pHE2+yNtuhqJiDXJDFKpRnxpkBC9eV/EpZwU0YjoGFo5U7k4wYkSJk6YBK
	kCyO6dlJbPRT+6seIs7wvkKesjaod6vnk0HLqfYPOmzAveiYzQQVA6g+ZVtOVOtSW+uYhIbzV5oFu
	01LXBo2f00PZazSJIPzAFHUflUA2OwUq9ygBPzWxjGxQPpgqsQ03hAfPlyLMV9FRFJ7eK4eX8CKm3
	1qdUeP8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFtg-00000008bPv-1Ozx;
	Wed, 28 Feb 2024 09:06:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFtc-00000008bOn-3bdM
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 09:06:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfFtb-0007OH-Hf; Wed, 28 Feb 2024 10:06:35 +0100
Message-ID: <9edcf72b-5d07-486d-bbd9-2afc8e7af167@pengutronix.de>
Date: Wed, 28 Feb 2024 10:06:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de>
 <20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-3-2df2430da984@pengutronix.de>
 <Zd2hCMY_b_KvSz4I@pengutronix.de>
 <893fb843-8c6d-411e-b67f-c0df0b28efab@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <893fb843-8c6d-411e-b67f-c0df0b28efab@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_010636_936429_3CC3DFC0 
X-CRM114-Status: GOOD (  18.11  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefan,
Hello Sascha,

On 28.02.24 09:46, Stefan Kerkmann wrote:
>> Another thing is that the usage of cpu_is() has the tendency to lead to
>> cascades of if (cpu_is_x() || cpu_is_y() || cpu_is_z()) which is not
>> paticularly nice to read.
>>
> 
> That is arguably subjective :-).
> 
> For me as a developer that is new to barebox, it was confusing to find two different styles of arch dependent code. I prefer the `cpu_is_xyz` style approach which is used in barebox proper much more.
> 
> In the case of the TZC380 driver the pseudo (as they are probably optimized away) runtime arguments to the init functions seem unnecessarily complicated,

I would suspect they aren't even optimized away, because it's only known
at link-time that the function is only called once, so a late inlining
would require LTO. This means your approach may have a lower overhead
than what we are doing right now... :-)

> as does the approach to define aliases to the same function for all arches. The if style is clearer in intend as it keeps the distinction between the arches local to the parts that are actually different. Which is straight forward to read IMHO.

I also think it's a good idea that in future we should extend to more places
in the i.MX8M init code. The code duplication in ./arch/arm/mach-imx/atf.c
is not a pretty sight.

Cheers,
Ahmad

> 
>> Both are not really strong points, but on the other hand there's not
>> much improvement in this patch, so I tend to not take it.
>>
>>> -bool tzc380_is_enabled(void)
>>> +bool imx8m_tzc380_is_enabled(void)
>>
>> This change is good though as the function is clearly i.MX8 specific.
>>
>> Sascha
>>
> 
> Cheers,
> Stefan
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



