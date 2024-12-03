Delivery-date: Tue, 03 Dec 2024 19:52:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIY0V-003bea-2F
	for lore@lore.pengutronix.de;
	Tue, 03 Dec 2024 19:52:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIY0V-0000IS-K7
	for lore@pengutronix.de; Tue, 03 Dec 2024 19:52:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FrrrlFd75HaEIxQVqNRsuQujXwSKTxUiW4WLTd7iL2Q=; b=0uLjBr50/hPPp4CccIndQUCo3g
	MwNYpQn3+GloJqb8xLkNlivnbq2r/f/FKlhsbOwlwEoKGnAaKqyR3US/h1mAEhZmsflKcWuuxcaxa
	she2c2D/CBQuoRiOG7Eq87qBB63ISEgCzaZNfRl6BMzEQ0Aq/aSSgxidqyw9D0tVo2pW5d2NmC/yp
	NklD31HQuKzM85izRLt47B2KfULKwIi7q5y7n5tTCptk7Y3DQcdgmBrql5qOLziI/VFRCqagNQP57
	eiZ9lgYXUuaZU+7CdRjVSfcAAPzprKyHVLGQkWZkBMmtm7WMitNJfdN8aeY+3zZ+XzErE1PxjIH/r
	j5wEswwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIY05-0000000APdW-2mOo;
	Tue, 03 Dec 2024 18:51:57 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIY02-0000000APd1-1zXK
	for barebox@lists.infradead.org;
	Tue, 03 Dec 2024 18:51:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733251883;
	bh=bJBX6pGlGvJtiOu1R+TnCPaWyatLKun+NYXSkCVmY+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZG06z2wyPNfExmLC+c4LrvDJGO4tYep73Z9DyaLeesOfyQ+Tji2pzqWmvOHTrxylt
	 29yGJuWZSzJJWnAheG8lu29UcAzeWkGl42RjrOZRYYGUoivvLYwQlpk2cNcLPddjGi
	 JMM516jqrnowpM9k4RxygcB3F0hI4B58ndzp4nEDspLu0+5nmqdfExWfy/nf7I37el
	 9y6KwcNU8jDu7li99LoZwPcPPjaDJuT6I8ax+MZv4l7gHPNqpJF7EhBZXFFH22Vqxj
	 VOwDM1DXeyMzp2VLIyDHQw1b1h0xfCIUPrVvRJMmECSQZfiXw/jC2/9mQmWbYOCXjr
	 cRf9Uml1CJ/Kw==
Received: from hephaistos (unknown [94.31.103.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id F0D4C40236;
	Tue,  3 Dec 2024 19:51:22 +0100 (CET)
Date: Tue, 3 Dec 2024 19:51:21 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z09TKeFZaT6InuPX@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_105154_657065_790ACBF8 
X-CRM114-Status: GOOD (  13.60  )
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
X-Spam-Status: No, score=-6.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Dec 03, 2024 at 07:28:24PM +0100, Ahmad Fatoum wrote:

> You can enable it for barebox.bin too, but enabling it for MLO only
> should work too.

Okay.

> > 2~�W-�,-H]
> >           ���k׋�ҫ�.LWC�C�C��arebox 2024.10.0-00152-g53c99b9f550b-dirty #15 Mon Dec 2 15:07:37 CET 2024
> 
> Hmm, CONFIG_BAUDRATE is set correctly?

CONFIG_BAUDRATE=115200, never changed that.

> If it doesn't work at a later place, it won't work when you move it
> earlier. I have a BBB here, so I can give enabling DEBUG_LL a try

Ou, then I have misunderstood one of your intial mails where I thought
moving it earlier should change something, if RAM setup fails getting an
output eventually despite of that.

> too if you get stuck.

I manage to get DEBUG_LL on and run it, but the only difference is the
scrambled output in my terminal on powerup boot or when resetting with 
"my cold restart" modification. 
But wait, I do not know if it as glitch, when CONFIG_LL_DEBUG is on and
I power on, I see a "2" immediately put out in terminal prepended first.
When the system gets stuck it does it in a way I do not see anything with
or without enabled in stuck case.

I extremely appreciate your help getting CONFIG_LL_DEBUG run.
I can support with a dozen of BBBs within a day to your office, its
nearly on my way from my home to my work :-D

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



