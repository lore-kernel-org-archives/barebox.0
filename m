Delivery-date: Tue, 07 Jan 2025 16:06:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBAJ-000MCb-2v
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 16:06:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVBAG-0006eZ-5h
	for lore@pengutronix.de; Tue, 07 Jan 2025 16:06:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0I8isH4e4wt/ORNPGuHGfn0vWBGAot9aMy99PsySf6U=; b=nvJBmg9WIiOOf2BGy8yRYsni9C
	cXBso9/wR/pV474w9LG2qwFbarOmi+/h77LFet7k0Dsk4udtXC4aCIzOzI1N4v0bCrYpubnXJLHFJ
	wFNtO2idBmBRSQsocgcCFGl7GXTpSb3vWifON4LKMu2crp8ADC+iC3jixC3qYvoWFCBhqmDUASoDL
	LzVbgKeAPOIhhhbRlYanhSfyC2ZsCHy4qGF035FaJzJyMtlqgbycctuKCBp4x0EPj+vdTMBjFx7YV
	FKWKiup90TXRgEgHB5D++F7P0rgebnMGXyML/uemgxOKBZagvP1KBEN2GF3KtjOPbYJkDTgyeAjt2
	KT1n6+Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVB9g-00000005MJw-3t4e;
	Tue, 07 Jan 2025 15:06:04 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVB7c-00000005Lt0-0JJl
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 15:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736262234;
	bh=bAbGHEb0BuFc3ToVSJGmuoDmOc32lYpsfZc66g6sExg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gpc9tKLexG/y2mPZO3FUHJv4WtJJiZqmmxbbKoPgREJUD5DOszxHQF17Bc2qNQYSW
	 H9+JWWYPKk/F/XJ+CW/ShXd3lMXqXg4Tk9+zdKd2m2Zmyl/r519EtGgVd/f5d/b5cY
	 K4ciKgv8RVuCg0z1PxtR3sxXP0IXYIuk5enswg/4FHPBigVRxu+gLkx3AV0FXPtUpW
	 kF8enih+LHr7PxsWFR2ZanY0+ZcwuzeBAsWYawm4nju4MkdlNRX1jzcn2zPaYnFG1D
	 gJe26+XxS2WaeFZZugCshXVglZh3SSjG1XdRJZyz+VBsINSCBH7tPkX/rN3ikLUr1v
	 BqtE75dm3YMeA==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id BC49340202;
	Tue,  7 Jan 2025 16:03:54 +0100 (CET)
Date: Tue, 7 Jan 2025 16:03:53 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z31CWSpLYtXWrlAq@hephaistos>
References: <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
 <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
 <Z1mnJB8Suz3SNWbI@hephaistos>
 <Z2VPgRnxah5lc09X@hephaistos>
 <76532287-74b7-42ca-860c-b2e6bda8484e@pengutronix.de>
 <Z30oWivcXTQmw9ZO@hephaistos>
 <9c8d6171-c228-4e4a-97da-f1ce93e14aed@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9c8d6171-c228-4e4a-97da-f1ce93e14aed@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_070356_250421_AF682510 
X-CRM114-Status: UNSURE (   7.06  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> Sounds ok to me. Please send a patch to that effect with an explanatory
> comment, summarizing what hardware was observed to have what issues.

I did, hopefully the formatting and stuff is properly done.

> I am surprised you are still shipping new products with a Beaglebone Black,

Because they are so darn old? Well the product is not new and still
runs, we get some 2 or 3 pallets a year of devices from SEEED newly
produced.

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



