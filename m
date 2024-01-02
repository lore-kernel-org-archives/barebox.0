Delivery-date: Tue, 02 Jan 2024 09:49:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKaTD-000NoW-1k
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 09:49:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKaTC-0004lV-Gn
	for lore@pengutronix.de; Tue, 02 Jan 2024 09:49:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L3J+7lJI22OJvDuohKeDp693S1NFOy38QSL3eE6xFKw=; b=0A/hyCCeDaIZ8nqkwvcDqwPOXp
	2EijFA4aBIWJsP/UfdcJ87edLswYAymoVq5MwPAYoSEeUXkBMndwPHHJas7IEFnzkkTicsQ3ghD6R
	IAuu+xYJn0Bcfto8PMmCFuukjW1ukK4FMKmiNaExrVTMrP33yERw9oxbzfUD3aeozt/j2SR3WAi5b
	nD+TCNsJdFvi6gNHwNry/ai9gE0202CQYkUjRwPtvzDkLTz8BYZdnCnIbUgs722Oh4Iu5iRs2Ir7q
	jnzoXdylTOveD+/1Ag/wr9QKlZU7k3h9b+fCOHRKPM5isl81aIEToDwXO5+/MI16R/h/nJ05+LM3M
	DQ9nW6gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaRm-007NVM-2c;
	Tue, 02 Jan 2024 08:48:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKaRi-007NSi-2y
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 08:48:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKaRe-0004bR-Un; Tue, 02 Jan 2024 09:48:18 +0100
Message-ID: <dc144f47-dc8a-4341-840d-5d86d06a5c6b@pengutronix.de>
Date: Tue, 2 Jan 2024 09:48:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org,
 =?UTF-8?Q?Leonard_G=C3=B6hrs?= <lgo@pengutronix.de>
References: <20230930121720.770d90611fc199200445dda3@gmail.com>
 <4275cfd4-3edc-785a-6fbd-7c5dea901b47@pengutronix.de>
 <f75521f6-87cb-c6f9-1102-7eb437352c87@pengutronix.de>
 <abeb91af-f3dc-552d-9889-f250e7dd6a3f@pengutronix.de>
 <20231127002154.fb6e1eddc6710cc6bbbdf76d@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231127002154.fb6e1eddc6710cc6bbbdf76d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_004822_954688_FCDBE31F 
X-CRM114-Status: GOOD (  14.63  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox.org browser demo uses barebox-v2022.02
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Antony,

On 26.11.23 22:21, Antony Pavlov wrote:
> On Fri, 24 Nov 2023 08:22:27 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> Thanks for updating demo!
> 
> I have no browser cache issue. The browser demo works perfectly!

Good to hear.

> I see only one thing that can confuse a new user: the blue uncommented toggle button is used for
> selecting demo mode "just console" (default) or "doom autoboot". I propose to add more instruction
> on running Doom or even change toggle button to radio buttons with appropriate comments.

I wanted to keep it minimal, but some text that's not only in the tooltip
may be useful indeed. The site is static HTML, so feel free to send a patch
against it to the mailing list.

Cheers,
Ahmad

> 
>>>
>>>>
>>>>>
>>>>> As barebox browser demo runs on top of RISC-V machine can we add RISC-V mention
>>>>> to barebox.org/index.html page?
>>>>
>>>> I guess. Sascha, is that ok for you?
>>>
>>> I went ahead and replaced PowerPC with RISC-V. Sascha, let me know if that's
>>> not ok.
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>> Cheers,
>>>> Ahmad
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



