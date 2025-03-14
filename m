Delivery-date: Fri, 14 Mar 2025 15:52:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6OK-00E2ok-2x
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 15:52:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt6OJ-00070t-Na
	for lore@pengutronix.de; Fri, 14 Mar 2025 15:52:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D1kRTqSw6H0lU8XNgVTc4pr678nO4GkRd+CIejQJko0=; b=nZClvrNHPbzv3hYVGnonhgXtme
	7ZmXnC4/f6M7rqEETn3vEFNuneNMMraa6rnAw8dnmWuMw4UxXOTM/WY66ABrhInBJhIYhKcLOMuMe
	HhslmftWQMeyAP80cRw7vS7O7jUPZpskSTD4P914PmedBI9VECdonS6tUe+uhnmzAcoPnSw9DeC3y
	qsf91RaU/LoX+SXSpQi14prILG355pGoIHTCHGpdf97cZTGxsHomeFzcYCwLPo3ciGaRYPcKta6vq
	NgIA/ay6kB/Oolmk47QM9Uz4YQVp4XwjygHbkKIYkd2PlDEPTHg54HRH98lXLTVdiRJUPVZ++J+wC
	mRp65dqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6Ns-0000000ESPv-0Y9o;
	Fri, 14 Mar 2025 14:51:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt6LY-0000000ERtw-151Q
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 14:49:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tt6LX-0006aV-1m; Fri, 14 Mar 2025 15:49:11 +0100
Message-ID: <70cf43af-954d-4cbd-bb2d-0e2be2d8c6f5@pengutronix.de>
Date: Fri, 14 Mar 2025 15:49:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
 <a87dbd9c-10fb-4451-abd3-f3d9d49c13e2@pengutronix.de>
 <D8G2HOCHLZHE.3FCQMJ924J7NR@zdiv.net>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <D8G2HOCHLZHE.3FCQMJ924J7NR@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_074912_296645_3779DBB1 
X-CRM114-Status: GOOD (  10.56  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] compile test fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jules,

On 3/14/25 15:43, Jules Maselbas wrote:
> On Fri Mar 14, 2025 at 2:08 PM CET, Ahmad Fatoum wrote:
>> Hi Jules,
>>
>> On 3/14/25 11:40, Jules Maselbas wrote:
>>> Small patches series of fixes discovered with a compile test on sandbox (x86_64)
>>> The compile test has been against the next branch but all the patches applies on
>>> commits that are already in the master branch.
>>
>> This partially duplicates fixes in my clang-analyzer series here:
>> https://lore.barebox.org/barebox/20250313073445.764875-1-a.fatoum@pengutronix.de/T/#t
>>
>> Can you rebase?
> 
> Only patch 6 is conflicting and can be dropped because it is already fixed by
> 9b815da01ff4b88c6634c4a7541c581a35ad96d8 ("treewide: fix missing headers in sandbox allyesconfig")

Patch 3/6 and 4/6 as well as partially (?) 1/6 are also addressed by my
series. So even without conflict, applying this on top would lead to
addition of a now superfluous include.

Thanks,
Ahmad

> 
>>
>> Thanks,
>> Ahmad
>>
>>>
>>> Jules Maselbas (6):
>>>   dma-devices: k3-udma: cleanup headers
>>>   dma-devices: k3-udma: use snprintf instead of sprintf
>>>   mfd: tps65219: add missing include
>>>   pmdomain: ti-k3: add missing include
>>>   pmdomain: ti-k3: remove trailing whitespace
>>>   regulator: tps65219: add missing include
>>>
>>>  drivers/dma/ti/k3-udma.c               | 5 ++---
>>>  drivers/mfd/tps65219.c                 | 1 +
>>>  drivers/pmdomain/ti/ti-k3.c            | 9 +++++----
>>>  drivers/regulator/tps65219-regulator.c | 1 +
>>>  4 files changed, 9 insertions(+), 7 deletions(-)
>>>
> 
> 



