Delivery-date: Fri, 24 Nov 2023 08:23:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6QXa-00776v-3A
	for lore@lore.pengutronix.de;
	Fri, 24 Nov 2023 08:23:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r6QXa-0006D5-TU
	for lore@pengutronix.de; Fri, 24 Nov 2023 08:23:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5JIcSCZ/MZ35Yt0l+oxJPr0SSWK4Nr2Jc8meJbaPD8Q=; b=WPAupHS6O4tg+XeBU/1el3yEhj
	2L7TjX7ascV4u4FG7yg+kkPQiwHjM0ZM+qNnbRMNjiA/Pv1l/w1wTpuTEhqqoB3x8SivXFKnUOr8c
	SaZKCjWvgo+HALFNgOlR6zDyPvojgX9Yptgvfu90Z7ZX8DMMvPE+/sHvj70rdXTI75ZzdyPnhLj7Q
	zknAYnNGf6WpcGY2OidLP5z7yq7TvpH35HCdRc9ZJT476uImA9tcvqy0diOKbcQ9GZzuXGOqd0GnZ
	QPW1RiFJCxv5L7AWoQ7vrfMl+LGk0Rekcn/CohXMJAwEQsV31R9GYb6S16eMthKu1ZqSbqnpRZZmX
	SFT3HRxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6QWI-006NZZ-1Y;
	Fri, 24 Nov 2023 07:22:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6QWE-006NWI-0v
	for barebox@lists.infradead.org;
	Fri, 24 Nov 2023 07:22:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r6QWC-0005y0-01; Fri, 24 Nov 2023 08:22:28 +0100
Message-ID: <abeb91af-f3dc-552d-9889-f250e7dd6a3f@pengutronix.de>
Date: Fri, 24 Nov 2023 08:22:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org,
 =?UTF-8?Q?Leonard_G=c3=b6hrs?= <lgo@pengutronix.de>
References: <20230930121720.770d90611fc199200445dda3@gmail.com>
 <4275cfd4-3edc-785a-6fbd-7c5dea901b47@pengutronix.de>
 <f75521f6-87cb-c6f9-1102-7eb437352c87@pengutronix.de>
In-Reply-To: <f75521f6-87cb-c6f9-1102-7eb437352c87@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_232230_322020_3451A2D9 
X-CRM114-Status: GOOD (  22.55  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox.org browser demo uses barebox-v2022.02
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24.11.23 07:57, Ahmad Fatoum wrote:
> Hi Antony,
> 
> On 06.10.23 12:24, Ahmad Fatoum wrote:
>> Hello Antony,
>>
>> On 30.09.23 11:17, Antony Pavlov wrote:
>>> Hi Ahmad!
>>>
>>> barebox browser demo (https://www.barebox.org/jsbarebox/) looks very impressive.
>>> But it uses old barebox-v2022.02. Could you update it please.
>>
>> You're right. I will try to find some time to update it. Eventually, I'd like
>> the tutorial to actually boot a kernel as well and have at github.com/barebox/
>> a separate project (maybe Yocto-based?) that builds all the necessary artifacts,
>> but there's still some work to be done until we can do that...
> 
> I have updated it to v2023.10.0. Sorry for the delay.
> To use it, you'll have to clear browser cache for the site.
> 
> If you know how one could force an update for cache older than a given time,
> I'd be happy to add that.

We have migrated the barebox.org host a while back and Leonard tells me that
the HTTP header now sports the correct Last-Modified timestamp, so manual
cache clearing shouldn't be necessary anymore to force a new version.

Can you confirm?

Cheers,
Ahmad

> 
>>
>>>
>>> As barebox browser demo runs on top of RISC-V machine can we add RISC-V mention
>>> to barebox.org/index.html page?
>>
>> I guess. Sascha, is that ok for you?
> 
> I went ahead and replaced PowerPC with RISC-V. Sascha, let me know if that's
> not ok.
> 
> Cheers,
> Ahmad
> 
>>
>> Cheers,
>> Ahmad
>>
>>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



