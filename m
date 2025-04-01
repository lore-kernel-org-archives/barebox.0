Delivery-date: Tue, 01 Apr 2025 13:41:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tza02-006yVC-2v
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:41:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tza02-00006o-AZ
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:41:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FnsJZlMz1demvnV6jnQfEOJ6Tdf57GveTBxsEiy7e78=; b=avTyjjKXkgznCl0B6ftrr6GVtt
	SkSJEIdmo8wze9sJ2+na9+OU6nZBCwBUA6zBto3jkjAfXmtvg2CZjloky9VtOpRyCYm8Z1LJTwniA
	WMi80cCIhAEgNrr2a0nKfCkwasafjQeCp4z8sJpceukKHk5CbJqzigB4NR/N1d6Ml6foIWLbnKQsK
	jM5SJ+qr8uQ0PxbhlTDKwkqCTIGTRtRtSMIFVy/ZsnV/mzrNEui6Ud4sV5l2r8pxz9vj1uXT90Poj
	qp26fkK2rY5yLiypLNrjpX1oRwu5lIrtc3JVqSwRx0uZkb81Hq9zU4XFrThKwC5yRkTbZre3s1jr7
	GH/C+Y1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZzT-00000002ofK-3uVN;
	Tue, 01 Apr 2025 11:41:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZzP-00000002oeW-207W
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 11:41:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZzO-0008RH-6C; Tue, 01 Apr 2025 13:41:06 +0200
Message-ID: <72a9de59-613c-4c73-9bbd-b10df44d6f55@pengutronix.de>
Date: Tue, 1 Apr 2025 13:41:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250331122918.564304-1-o.rempel@pengutronix.de>
 <6f67de1f-b159-4190-bd31-ed2ef990f290@pengutronix.de>
 <Z-usVI_cB6bgsiRy@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z-usVI_cB6bgsiRy@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_044107_512389_EFEB28E0 
X-CRM114-Status: GOOD (  21.99  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DIET_1,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] spi: add STM32F7 QSPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Oleksij,

On 4/1/25 11:05, Oleksij Rempel wrote:
> On Tue, Apr 01, 2025 at 10:53:44AM +0200, Ahmad Fatoum wrote:
>> Hello Oleksij,
>>
>> On 3/31/25 14:29, Oleksij Rempel wrote:
>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>
>>> Introduce support for the STM32F7 QSPI controller, compatible with
>>> "st,stm32f469-qspi".
>>>
>>> Validated on STM32MP133-based MECT1S r1 board, which includes an
>>> F7-compatible QSPI peripheral
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>>> ---
>>
>> [snip]
>>
>>> +static int stm32_qspi_get_mode(u8 buswidth)
>>
>> Is this ever called with a buswidth > 1? I think the spi_mem core in
>> barebox never uses higher buswidths. Given that you are adding QSPI
>> support, you will surely want to see quad buswidth actually working,
>> right? :D
> 
> Sure :) I get it - every maintainer dreams of getting the most out of
> each patch, and full QSPI support with quad buswidth would definitely be
> nice to have.
> 
> But with this patch, we're going from “doesn't work at all” to “works,
> just not at full speed yet.” That’s already a big step forward,
> especially for bring-up and flashing use cases.

I agree that it's a considerable improvement. Thanks for putting time
into making it work.

> If we judged everything in Barebox by full performance, we’d probably
> have to drop most of the networking drivers too - since Barebox usually
> isn’t about maxing out throughput anyway ;)

Let's get TCP merged before going there. :D

> So yes, proper quad support would be great - but for now, this patch
> gets us something working, and that’s a solid starting point.

The thing is there are a number of QSPI drivers already and there's
still no exercising of higher buswidths. I don't have any projects
currently that use SPI-NOR with a higher bus width, so the only thing I
can do is raise some awareness of the limitation. ;)

Cheers,
Ahmad

> 
> Best Regards,
> Oleksij

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



