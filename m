Delivery-date: Mon, 23 Feb 2026 12:44:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUMr-004oqw-1U
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 12:44:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUMr-0001RR-Qh
	for lore@pengutronix.de; Mon, 23 Feb 2026 12:44:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bWICeED7C52WB0k/pTcjRyPQujRCXZMLw4ei4JVLGr0=; b=CbhVveO3ieT4tPT7sTEumER6RI
	n1x6ZGQOgWCGteuzNzYtF6/bAn8F11yEWjTj8FR6wUowF/8zutYHbHcAbBxdvcCZqIn3LqhI7a0Yy
	3NUF5wRsLTw5crTejYYrCEdjNGQt3qHsODXx2HW8+inYDDszWHRUI4ncWmo5eADjgx40L3bjI2SB8
	jJgs5r0p2saTeQuE99NPoB4h2PmBEpSuI/rjjVDgz9Vo8mt+sFidbB+ntQzD3HsvDkaMPPozL91M2
	UAaQOhYIzMxMkRuhEspqtn+1EOysV26mIjAgqIzq6NIbwZ2m518o2sAhzAdDHH14uSVev5beRsPWQ
	FFNX0KVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUMW-00000000DHF-1fmT;
	Mon, 23 Feb 2026 11:44:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUMT-00000000DGJ-3IGB
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 11:44:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vuUMS-0001Nw-BN; Mon, 23 Feb 2026 12:44:24 +0100
Message-ID: <74d9ecd8-7c2d-4090-8ff0-7dd16d8b2be1@pengutronix.de>
Date: Mon, 23 Feb 2026 12:44:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Renaud Barbier <renaud.barbier@ametek.com>
Cc: barebox@lists.infradead.org
References: <20260203141945.1417902-1-renaud.barbier@ametek.com>
 <aZw8r4SBswMxocvb@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aZw8r4SBswMxocvb@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_034425_824768_E09D90A7 
X-CRM114-Status: GOOD (  19.38  )
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
Subject: Re: [PATCH 0/1] Initial ARMv7-A LPAE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 2/23/26 12:40 PM, Sascha Hauer wrote:
> Hi Renaud,
> 
> On Tue, Feb 03, 2026 at 02:19:44PM +0000, Renaud Barbier wrote:
>> The LPAE support allows to map physical address above the 32-bit space in
>> the ARMv7-A processor to a 32-bit virtual address.
>>
>> This patch set was tested on a LS1021A-IOT. Later, a patch to the PCIe
>> designware driver will be provided to prove the remapping of 40-bit PA to
>> 32-bit VA.
>>
>> This patch does not include an update of the mmuinfo command.
>>
>> Renaud Barbier (1):
>>   arm: mmu: initial LPAE support
>>
>>  arch/arm/Kconfig                            |   9 +
>>  arch/arm/configs/layerscape_v7_defconfig    |   1 +
>>  arch/arm/cpu/Makefile                       |   4 +
>>  arch/arm/cpu/mmu_lpae.c                     | 650 ++++++++++++++++++++
>>  arch/arm/cpu/mmu_lpae.h                     | 101 +++
> 
> The patch duplicates most of the existing MMU support. Can we do better?

I had asked for it in this form, so I can get a look at how much
duplication there is and how to go from there.

I haven't come around yet to review it though, but I will try to find
the time soon.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



