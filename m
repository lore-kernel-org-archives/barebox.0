Delivery-date: Tue, 22 Jul 2025 18:29:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFsI-002cIn-16
	for lore@lore.pengutronix.de;
	Tue, 22 Jul 2025 18:29:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueFsH-0004QW-Pd
	for lore@pengutronix.de; Tue, 22 Jul 2025 18:29:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GG/solHcLKEOB7W2DacJpPJKqnriFIMA/jGMfGCxYQw=; b=wNdHgIkNwmigBfatW3V1JOpe49
	w9EZn/cZMmNPvkY7tWrcS2qQjtuN0LLNIHWZEYrIRd5MZChAbIDpiObhhpllAo4UQcASo56D+FuDg
	HouQQXAGN7R3DU2daI/qd6/BIomb1nDtSkw1FUotrBaIA11Yas5XO56QnwsvGZmandhqfQKEH2iSP
	tfhViNooQkzADti03YAnG638ObjJ/KUXRuV0RnMfaoaEjgaubdzkoSLqbPwb3nQpSwH/QErWTdpii
	fgLEA5LaetVFaEDZrKeB/DVOdhtQm6lqXL5qjaHBX1pumeHNBlqy6pWoZeGmYJCHjW7YbuURqsRl0
	q4e9hADA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFro-000000031WU-2c5B;
	Tue, 22 Jul 2025 16:29:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueFLG-00000002vfW-0yoB
	for barebox@lists.infradead.org;
	Tue, 22 Jul 2025 15:55:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ueFLE-0007Wt-VS; Tue, 22 Jul 2025 17:55:45 +0200
Message-ID: <bca1e5e8-c70e-4b2b-8383-85bcea2f71bb@pengutronix.de>
Date: Tue, 22 Jul 2025 17:55:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrei Lalaev <andrey.lalaev@gmail.com>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20250611175645.144025-1-andrey.lalaev@gmail.com>
 <44e20622-1c1f-4087-8b34-01cf378d3004@pengutronix.de>
 <8258cc5e-4223-4777-9c45-3feb6acba793@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <8258cc5e-4223-4777-9c45-3feb6acba793@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_085546_271654_8129E952 
X-CRM114-Status: GOOD (  18.43  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: fastboot: send FAIL if variable does not exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Andrei,

On 7/22/25 17:53, Andrei Lalaev wrote:
> On 22.07.2025 16:07, Ahmad Fatoum wrote:
>> Hello Andrei,
>>
>> On 6/11/25 19:56, Andrei Lalaev wrote:
>>> According to doc [1], new implementations should send FAIL if the
>>> variable specified in the getvar command does not exist.
>>>
>>> [1]: https://android.googlesource.com/platform/system/core/+show/refs/heads/main/fastboot/README.md#121
>>>
>>> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
>>
>> Did you run into any particular issues that motivated your change?
> 
> Hi Ahmad,
> 
> Sorry, I should have written a more descriptive commit message
> or at least mentioned the root cause in the footer.
> 
> I was using uuu v1.5.201 with barebox 2025.01 (or 2025.02) to flash
> a raw image to eMMC using the raw2flash flag. Unfortunately,
> due to a bug in uuu, it ended up flashing garbage :/
> I’ve fixed the issue in uuu [1], but during the investigation
> I found out that newer implementation of Fastboot should send FAIL
> if variable is missing, so I also decided to send a patch to barebox.

Ah, I only used SDP/SDPS uuu so far and the dedicated fastboot utility
for fastboot instead.

Good to know that it works with barebox (now). Thanks.

Cheers,
Ahmad

> 
> 1 - https://github.com/nxp-imx/mfgtools/commit/f7351c1cf626764d902576362421f33b79b3a9e9
> 
>>
>> Thanks,
>> Ahmad
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



