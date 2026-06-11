Delivery-date: Thu, 11 Jun 2026 22:37:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXm9q-004p2W-2h
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 22:37:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXm9q-0005U0-8h
	for lore@pengutronix.de; Thu, 11 Jun 2026 22:37:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xk86f8ep+cBVVt8jv6lBhdUaqnMrK7mbJxc8gEwr8g8=; b=Y4l4esjDJ4GIlLlEoiuJ8GfOSz
	6Z6sMkEsfhQD/cUNIYYgocrF4L6fnI2Dsh0elmWFW/6VSQPo5fH7Auv6uH2WXSHTRFdEkaVq3X9cZ
	94dobj9/UUpfF/glWVFkcX1cXQleBMXrDrCXYccMm3BOLfXqmYyOq8djsn1H255KKHacL5didoXbP
	UaU8o9sRTrWZLfuiOJCQjFPCA8QH2/nHR2Fol0c4JY1h//Y4cCdZkBcSOOVgFX8MHnbLXmcG6oI9t
	/SeuxPpQfqcNFbg1LtN2dJMzD7Og9PdChq4yscNZDsyIT5p1C+SBSMHoGLgAq4S2E1zH5IAHUtV3f
	XL8SdIAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm8l-0000000A3YG-1mdL;
	Thu, 11 Jun 2026 20:36:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm8k-0000000A3Y0-0alZ
	for barebox@bombadil.infradead.org;
	Thu, 11 Jun 2026 20:36:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:To:From:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=xk86f8ep+cBVVt8jv6lBhdUaqnMrK7mbJxc8gEwr8g8=; b=UUvaWvb1btwJVLareMZj7ABHzO
	H0In8biBKdcfGoQHdqo9QmfQxkyWD0TwOE/OEFlO1TZ5lXFfRKHppNQhesN7OTYGkG9QQIULtHUGH
	GSa2WLWytSbfJgGvkBlKQqAMpO0Fwdo5+qPIgm/GnfB9+GUksYHEUbrzzSbzv9CLedrL8/MyaIY7q
	iQWqLDyUNuz1HfC9Kpn7Og1rt35h8zKhwqbTnj7Mm07APQ0lKnnD1LPR0A2Ehl4F6lglrdNa6arAU
	O2tT5fE8RCC2o1ObaIW6vCEC9r4J8CwivSEL/QP0CH/vR/hZ3fKKULzBY05cwmPzAIcMK9tXrvZme
	CnStGXhQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wXm8f-00000005fEv-3cYI
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 20:36:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wXm8f-0005CL-Cs; Thu, 11 Jun 2026 22:36:33 +0200
Message-ID: <acf79a8d-7f01-42f3-9d56-ba9a298c7b5a@pengutronix.de>
Date: Thu, 11 Jun 2026 22:36:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Andrei Lalaev <andrey.lalaev@gmail.com>, barebox@lists.infradead.org
References: <489b74af-bb47-4c1c-a969-094b9ff3e9ba@gmail.com>
 <c7825ced-8809-443d-94df-7b74ce1f8419@pengutronix.de>
Content-Language: en-US
In-Reply-To: <c7825ced-8809-443d-94df-7b74ce1f8419@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_213634_477935_411AC4A7 
X-CRM114-Status: GOOD (  11.66  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: iMX ddrphy_utils difference with U-boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sorry for the noise. Sent a draft instead of discarding it :/

On 6/11/26 22:35, Ahmad Fatoum wrote:
> Hello Andrei,
> 
> On 6/8/26 16:24, Andrei Lalaev wrote:
>> Hi,
>>
>> I am moving an iMX8MP module from vendor U-Boot 2024.04 to Barebox 2025.02
>> and found a strange difference in the DDR training code:
>>
>>   vim drivers/ddr/imx/ddrphy_utils.c +94
>>
>> And the corresponding line in U-Boot:
>>
>>   vim drivers/ddr/imx/phy/ddrphy_utils.c +101
>>
>> Is there any chance that somebody knows/remembers why "return -1" was replaced with "hang()"?
> 
> 
> 
>>
>> I couldn't find any explanation in the commits/mailing lists.
>>
>> Thanks a lot!
>>
>> --
>> Best regards,
>> Andrei Lalaev
>>
>>
>>
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


