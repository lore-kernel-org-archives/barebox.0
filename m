Delivery-date: Tue, 03 Dec 2024 19:47:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIXvk-003bbo-1A
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 19:47:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIXvk-0007l4-94
	for lore@pengutronix.de; Tue, 03 Dec 2024 19:47:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7lyhYToYrdnnS10HoflcNVodo7b4be7ipGBJh+z7iPc=; b=BEO6FD/i0+yEAy+UBaR4u3GLhD
	xcXkbUy8cVVGM3sc3ablmvIHmq7y2nJ4zhAwiZVtg2zb8jtKabKZZ+JCxInjH/PCxFN2RNFXwZl8N
	P5krw6vnhranbp5E/ZjKY9agcgH+Pg4s+zMZIN4h5UZqKL76sjSXn3vX1KNSilEI/j3L9apUZLXHu
	+hyEQoDxGPg4VEcoCsSRyz3WFsI28KwoQi/l+U3rJVhDD3keLomgsNHVlW1P/txcwytRZO+XJPNzF
	9OdJwUL/5Ypl9DssZyML/0I6xlkVOtb3sPp1Nf6l+4wTbN+yh8GI/2a+bHM6FXfONsQTC8gK/qAU7
	4IAWrYWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIXvI-0000000APGm-2dcy;
	Tue, 03 Dec 2024 18:47:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIXvG-0000000APFk-0YFi
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 18:46:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tIXvE-0007cn-QY; Tue, 03 Dec 2024 19:46:56 +0100
Message-ID: <653f9b1e-2044-41c9-b87c-0d9804c9a6cb@pengutronix.de>
Date: Tue, 3 Dec 2024 19:46:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos> <Z09PNnu8AgghB8wF@hephaistos>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z09PNnu8AgghB8wF@hephaistos>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_104658_174997_D93BFDAF 
X-CRM114-Status: GOOD (  18.60  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Konstantin,

On 03.12.24 19:34, Konstantin Kletschke wrote:
> 
> Today tried the following for debugging purposes:
> 
> In am33xx_generic.c in arch/arm/mach-omap there is in
> am33xx_restart_soc() this:
> 
> writel(AM33XX_PRM_RSTCTRL_RESET, AM33XX_PRM_RSTCTRL);
> 
> which is 0x1 written to 0x44e00f00 and causes warm restart.
> 
> I can simulate this with "mw 0x44e00f00 0x1" which shows the freeze 
> I see (upon restart) on affected BBBs.

This happens without Linux first starting, right? So that invalidates
my theory of Linux reconfiguring the PMIC to something invalid.

> 
> When I change the value to 0x2 (cold restart) the affected BBBs restart
> successfully!

Nice. Do you know about https://barebox.org/doc/latest/user/system-reset.html ?

TL;DR: Cold reset is usually the preferred way to reset as it comes
with the least amount of surprises.

> Does this ring a bell for people more experiened? This is not meant as a
> proposed solution (Watchdog restart, Linux Kernel restart no covered,
> reset cause deleted/hidden(?)), more is it meant as an idea to find the
> cause. Poweron, cold restart working always100%, warm restart never.

What does a cold reset do on an electrical level? Does it tell the PMIC
to do a reset?

Anther thing, I wonder about is what configuration the PMIC has on affected
boards and boards not affected. Can you use the I2C commands in barebox
to read the PMIC register set and compare it between the affected and
unaffected boards? Maybe they have different mask defaults?

Cheers,
Ahmad

> 
> Regards
> Konstantin
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


