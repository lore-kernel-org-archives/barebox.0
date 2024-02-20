Delivery-date: Tue, 20 Feb 2024 15:17:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcQwL-00G6Ak-24
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 15:17:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcQwL-0004pF-0y
	for lore@pengutronix.de; Tue, 20 Feb 2024 15:17:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SA+LGqq8Nj9NwIwon2qipg7ok0KY8KNhVZpz1AuGov8=; b=rfUVJcVOwmShae
	TfzvYk+5NwxJ1MBJV11V1c04T3Mn02VCLY895NwPerl94DB6Bdg4tuW2hMNSJGTTAfT3d/Du7t+HG
	x1hTemQNtsIhQsU2vmachb7DJ1BGG+bv0xPD0GEZsUDo8gGLxnhU3ipNq6qVlC13+x8/WsIatQm4D
	x6WnKzxuYb0REvIUJDHayEurG1QoFPUq6JC19WxU/uMe4WHqtuq0vUB/KN79jjxUOhuBYYbB2uwkP
	5mevlFrH+QOe39+0ZwXzPu7me0FHchG8hU3Vub2vN4YOrwV86TSW5wIT/EjYqMH8QGFxCrUM384U4
	x6vOjGju7tM1IjR/mPiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQvn-0000000F4Nf-2abj;
	Tue, 20 Feb 2024 14:17:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQvj-0000000F4Le-3rVK
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 14:17:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rcQve-0004gE-SH; Tue, 20 Feb 2024 15:17:02 +0100
Message-ID: <c7901b53-d0a7-4686-9498-3673201d0f62@pengutronix.de>
Date: Tue, 20 Feb 2024 15:17:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Dan Shelton <dan.f.shelton@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
References: <CAAvCNcCZhS8mkvdgcJ2L-eiur+OxgWEXRLnadO_HFyHfSi7WFA@mail.gmail.com>
 <a154ae13-86e1-4c2b-9c38-3774fde6a6c8@pengutronix.de>
 <20240205125900.c4b182f57b6efe0152beee24@gmail.com>
 <90de314f-b7a7-4b49-8c72-ec45aa3d38e2@pengutronix.de>
 <CAAvCNcBMxLkEKgqysqiP66T7fEbtWjb5uFfz-MEOfc-oJKfYig@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAAvCNcBMxLkEKgqysqiP66T7fEbtWjb5uFfz-MEOfc-oJKfYig@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_061707_991555_532B5E58 
X-CRM114-Status: GOOD (  17.77  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: NFSv4 boot support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Dan,

On 19.02.24 03:17, Dan Shelton wrote:
> On Sat, 17 Feb 2024 at 09:51, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> Hello Antony,
>>
>> On 05.02.24 10:59, Antony Pavlov wrote:
>>> On Wed, 31 Jan 2024 22:37:50 +0100
>>> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>
>>> Hi All!
>>>
>>>> Hello Dan,
>>>>
>>>> On 31.01.24 22:03, Dan Shelton wrote:
>>>>> Hello!
>>>>>
>>>>> Does barebox support booting from a NFSv4 filesystem, e.g. boot from
>>>>> NFSv4 filesystem into a Linux NFSv4 netroot (diskless machine)?
>>>>
>>>> The barebox network stack only does UDP/IP. There have been attempts to
>>>> bring a TCP stack into barebox, but none have so far succeeded to
>>>> make it mainline. This is a hard requirement before we can consider
>>>> supporting NFSv4. I hope that lwIP could fill this gap in the future,
>>>> but no one is actively continuing this work as far as I am aware[1].
>>>
>>> I have started integration on picotcp into barebox in 2015, see
>>>   https://lore.barebox.org/barebox/1436991230-14251-10-git-send-email-antonynpavlov@gmail.com/T/
>>>
>>> At the moment I have WIP barebox-v2023.11 with integrated picotcp 2.1:
>>>
>>>   https://github.com/frantony/barebox/tree/20231127.picotcp
>>
>> Cool. Looking at Oleksij's repo, it was based on your work. How well does
>> picotcp work for you? What open issues remain with the patch stack? Is the
>> barebox integration actively used in projects?
>>
>> Is https://github.com/tass-belgium/picotcp the official repository? This hasn't
>> seen development activity in 5 years. lwIP on the other hand still sees active
>> development.
>>
>> Regarding the license, inclusion of BSD-licensed code is ok. You can check out
>> the LICENSES/ subdirectory for the licenses covering barebox.
> 
> If TCP support lands in barebox, how fast can NFSv4 support be implemented?

Depends on who's volunteering to do it. :-)
If your question instead is how much effort a NFSv4 port would be, Uwe did the
NFSv3 port and may have an guesstimate for this?

Cheers,
Ahmad

> 
> Dan

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



