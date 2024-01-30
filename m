Delivery-date: Tue, 30 Jan 2024 10:51:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUklk-00BlZD-33
	for lore@lore.pengutronix.de;
	Tue, 30 Jan 2024 10:51:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUkll-0003lT-JB
	for lore@pengutronix.de; Tue, 30 Jan 2024 10:51:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7I5sFFIl5xnp6bMP6S7i97/qkHOYwZuWNu1b6Xfu27Y=; b=MOXpXWsXgWa+Te0q2/mGDAje6g
	OHVFGdJtdGjOe6m7iOq9LCrpACZ6YJXT8M2SQ9TkQUsw96q7f46KE9bvBcqprzFYRvbsxafMHEhhp
	HQorxL0JL/c2m2sQmBYhy0KYX64MfOaCCQSnUj1qu2kQWL7vFF3Ztt69dym6osuq9a2Rt2kKTkWZD
	Rl2mvusftrdUGAowNfb4NcoCeXdtI7DknRo4W17nQ/R5tGxfjGg+FTuQp6vmhO3iV1rTDQSQu7TCN
	mPM6F9cEF+PeeTmiJTcI9+HAAIjWVziv+EN3IEct8B8evljrzo4ddcPvieoODBSWOEgditOxwKmyh
	MvPPvhEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUkl6-0000000G1Cb-0NKC;
	Tue, 30 Jan 2024 09:50:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUkki-0000000G0yb-3uSP
	for barebox@lists.infradead.org;
	Tue, 30 Jan 2024 09:50:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rUkke-0003fG-F5; Tue, 30 Jan 2024 10:49:56 +0100
Message-ID: <fba1184f-7c91-43d9-a770-2d3a5557ab02@pengutronix.de>
Date: Tue, 30 Jan 2024 10:49:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org,
 =?UTF-8?Q?Leonard_G=C3=B6hrs?= <lgo@pengutronix.de>
References: <20230930121720.770d90611fc199200445dda3@gmail.com>
 <4275cfd4-3edc-785a-6fbd-7c5dea901b47@pengutronix.de>
 <f75521f6-87cb-c6f9-1102-7eb437352c87@pengutronix.de>
 <abeb91af-f3dc-552d-9889-f250e7dd6a3f@pengutronix.de>
 <20231127002154.fb6e1eddc6710cc6bbbdf76d@gmail.com>
 <dc144f47-dc8a-4341-840d-5d86d06a5c6b@pengutronix.de>
In-Reply-To: <dc144f47-dc8a-4341-840d-5d86d06a5c6b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_015001_248924_F1737B08 
X-CRM114-Status: GOOD (  16.21  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox.org browser demo uses barebox-v2022.02
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Antony,

On 02.01.24 09:48, Ahmad Fatoum wrote:
> Hello Antony,
> 
> On 26.11.23 22:21, Antony Pavlov wrote:
>> On Fri, 24 Nov 2023 08:22:27 +0100
>> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> Thanks for updating demo!
>>
>> I have no browser cache issue. The browser demo works perfectly!
> 
> Good to hear.
> 
>> I see only one thing that can confuse a new user: the blue uncommented toggle button is used for
>> selecting demo mode "just console" (default) or "doom autoboot". I propose to add more instruction
>> on running Doom or even change toggle button to radio buttons with appropriate comments.
> 
> I wanted to keep it minimal, but some text that's not only in the tooltip
> may be useful indeed. The site is static HTML, so feel free to send a patch
> against it to the mailing list.

Clear you cache and check it out again. I bit the bullet and massaged the HTML/CSS
a bit to gave it a caption and make it clearer that it's clickable.

https://barebox.org/jsbarebox is now also a 301 redirect to https://barebox.org/demo
which is shorter and more descriptive.

Cheers,
Ahmad

> 
> Cheers,
> Ahmad
> 
>>
>>>>
>>>>>
>>>>>>
>>>>>> As barebox browser demo runs on top of RISC-V machine can we add RISC-V mention
>>>>>> to barebox.org/index.html page?
>>>>>
>>>>> I guess. Sascha, is that ok for you?
>>>>
>>>> I went ahead and replaced PowerPC with RISC-V. Sascha, let me know if that's
>>>> not ok.
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>>>
>>>>> Cheers,
>>>>> Ahmad
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



