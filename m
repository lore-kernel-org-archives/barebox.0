Delivery-date: Thu, 06 Jul 2023 10:45:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHKcW-00HQeW-Ax
	for lore@lore.pengutronix.de; Thu, 06 Jul 2023 10:45:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHKcT-0007Qg-TM
	for lore@pengutronix.de; Thu, 06 Jul 2023 10:45:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n+OI4KZX9C5VcayRJwm5aJBy5kItzml7WLHYEQyYlvM=; b=dTmf+lIWEWV/LrOIaNWZWJ1aJp
	pr+wEKi8y3XldfssPGoLl6W9H47VkCONoD1XFoKxbvhGeyqikW82a20m4ImAjlyWZ0Dtw7f8iyriR
	zSSK6owjWsKviwiIlsk26f8m3eQSrh49toYhujEtPyRkweszw2h5EWeSMhZpOP0yxe3MC59LD1v4a
	+xpv8jnEW+szdycQsxBH1gFH4B99Co0/apha1iQq9Ia+9VZ/UtC14++HBrJ7M8W8UohUJzaGDsGSE
	ah630jY5L5Sryc2AgwXMmyV0VDD+2wrpdhV3SBV3i46d1GnIjJIuZPobpeDAH+HP6no0+qe+lw+Ec
	9js8oVzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHKbR-000z2j-23;
	Thu, 06 Jul 2023 08:44:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHKbO-000z2H-2f
	for barebox@lists.infradead.org;
	Thu, 06 Jul 2023 08:44:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qHKbN-00074Q-Hq; Thu, 06 Jul 2023 10:44:37 +0200
Message-ID: <33852f6b-ba70-8ace-22f5-5132f615f0f6@pengutronix.de>
Date: Thu, 6 Jul 2023 10:44:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230706081126.784759-1-o.rempel@pengutronix.de>
 <20230706081126.784759-3-o.rempel@pengutronix.de>
 <577b4021-a9a4-dd65-4614-a5dd2df95428@pengutronix.de>
 <20230706084043.GA5688@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230706084043.GA5688@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_014438_866960_7C85AA40 
X-CRM114-Status: GOOD (  19.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/3] ARM: at91: microchip-ksz9477-evb: migrate to
 sama5d3_barebox_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 06.07.23 10:40, Oleksij Rempel wrote:
> On Thu, Jul 06, 2023 at 10:32:30AM +0200, Ahmad Fatoum wrote:
>> On 06.07.23 10:11, Oleksij Rempel wrote:
>>> We have sama5d3_barebox_entry(), so make use of it.
>>>
>>> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
>>
>> I expected to see a /memory node removed, but I see now that I removed
>> them already in commit:
>> 2e7e1d2512b0 ("ARM: AT91: sama5d3: always read memory size from controller")
>>
>> Given that I missed selecting HAVE_AT91_DDRAMC, this means that booting
>> recent barebox without your first patch would lead to an error message during
>> boot up that initmem is used as no driver or DT added memory banks.
>> System should continue normally though.
> 
> Yes, I have this error message. But it work without noticeable issues.
> 
>> For boards that already have a memory region in the DT, adding a memory
>> region by the driver that is identical should be silently accepted.
>>
>> Could you verify this to make sure we don't introduce breakage?
>> That would also make patch 1 a candidate for being applied to master.
> 
> So far, it seems to work fine.

Ok, thanks for confirmation!

Cheers,
Ahmad

> 
> Regards,
> Oleksij

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



