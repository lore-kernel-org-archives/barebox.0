Delivery-date: Tue, 03 Dec 2024 20:03:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIYBT-003c0i-2O
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 20:03:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIYBT-0003AH-KP
	for lore@pengutronix.de; Tue, 03 Dec 2024 20:03:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TatSxRiuGaUnpEEiGByYCcpgFvlhRiH9BoRNENFH/24=; b=PZbfnCKyQkwJC95ON0CVt5T3zn
	TTJMXkD5TzKtTV2l6mZv9cT26hH9W4ZMmSZLKikFUXC1lvMBJtEncXIafrE5IVsscuM9I6a10cYBE
	WwYilyYVXLxgowkKsojQwrlCSyysLyNRczK11fpfahUB93ScqL5+uzjzSvTTCqljJ/t/02lfgoKrE
	cBkaPQXqU6yzikfpFIpaz9LqQPqVTRwugCL2KNEaqAIOXQgtycQd6SgdFRqTQeFxo3gxJHbXa+o9g
	Wi/rTKaL80pJrmKOx9QA4OrDpsKTmOYAo4NNP3Wq7/Dazz7TVqW+UzBckeep95QthEM06pGfedJYR
	Tmi9DKRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIYAz-0000000AQrE-2osq;
	Tue, 03 Dec 2024 19:03:13 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIYAx-0000000AQqZ-12TZ
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 19:03:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733252589;
	bh=eY6VanZ+MMrbqgQYrpdNYSiIeTdsg7zUj8rSW/K6JGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LV5OUewbOgKWDnIDEbK27CiZTjFKy4xN+H++zpufgG/PHJxA2EFwC+7NW9d9EHPfD
	 PFCRabrwSUBoG44QCqseKcWO9/2jxx9Pf3AlDp+F8Yx1wp76a4nN/bP9I/Gaz2Guf6
	 r4IK+L51zS9BKrX69PCc4hsAzrhOf5MC+RYUv1emPAxpcNpLh6mCA3+0CiUvnFj+Sf
	 CiKIyXwcHRPo4wPQ7x9dBS+Ix3IRQ9D+KKiVb8iTRlTQaC7r5YVovBgBgsLCLK7QHF
	 bgWJsmLtNYoWCvglkY4A4sy2bz8pfRfHRzAy0KlTSgV2U9zFOwr4Lh6CoDTWShkbdv
	 5W0hqJqvHcs4g==
Received: from hephaistos (unknown [94.31.103.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id CB60C40002;
	Tue,  3 Dec 2024 20:03:09 +0100 (CET)
Date: Tue, 3 Dec 2024 20:03:08 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z09V7DScnJE16I0v@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <Z09PNnu8AgghB8wF@hephaistos>
 <653f9b1e-2044-41c9-b87c-0d9804c9a6cb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <653f9b1e-2044-41c9-b87c-0d9804c9a6cb@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_110311_425421_EBCAA447 
X-CRM114-Status: GOOD (  17.78  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 03, 2024 at 07:46:56PM +0100, Ahmad Fatoum wrote:

> > I can simulate this with "mw 0x44e00f00 0x1" which shows the freeze 
> > I see (upon restart) on affected BBBs.
> 
> This happens without Linux first starting, right? So that invalidates
> my theory of Linux reconfiguring the PMIC to something invalid.

Yesthis is all reproducible without linux being involved.
Applies to S1 connected to NRESET_INOUT (warm restart) and barebox too
(reste cmd, watchdog triggering).

> Nice. Do you know about https://barebox.org/doc/latest/user/system-reset.html ?
> 
> TL;DR: Cold reset is usually the preferred way to reset as it comes
> with the least amount of surprises.

No, not yet. I will investigate.
One could change this for BBB, but the ugly part is, the Hardware on
the BBB forreset, S1, triggers warm restart. Hardwired, if I read
correct.

> What does a cold reset do on an electrical level? Does it tell the PMIC
> to do a reset?

I am not shure, I will investigate.
There is a circle CPU PMIC_PWR_EN connected to PMIC and PMIC WAKEUP
connected to CPU. PMIC's reset input is not connected.

> Anther thing, I wonder about is what configuration the PMIC has on affected
> boards and boards not affected. Can you use the I2C commands in barebox
> to read the PMIC register set and compare it between the affected and
> unaffected boards? Maybe they have different mask defaults?

This is a good idea, I will do this tomorrow. Have to get used to read
that out of the PMIC. May be a difference to u-boot is from interest in
a second step too, but the idea about differen mask defaults is
interesting since the error is so darn hitting 100% on affected boards
and 0% on not affected ones.
Could it be different RAM chips, whichsettings causes them to be on the edge?

Regards
Konsti


-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



