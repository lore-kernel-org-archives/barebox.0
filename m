Delivery-date: Wed, 11 Jun 2025 08:59:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPFQK-0064Ab-1L
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 08:59:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPFQJ-00075g-Qg
	for lore@pengutronix.de; Wed, 11 Jun 2025 08:59:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hT8PcckePD4aF+IUxpihB1lEcV79fmlNZdOIYcsGQew=; b=Qi8qt994fRV6exAopxQmOLLhc5
	U4Di+XoxOchrPyl2alFW9Mq0PV0UY1s0KOnT/bNYeGec60UPxQIDjlK/MTiJ0Nff9FSKvHta+Ms4c
	Vv5bVRe7g/V2m0oDgQaaHPhU/9ElQSMq5eA1MNH5rF4ZUUbEv9NaYKYAAQLwsWFTDS1sysUVwn+Zv
	WPwzoxh5s3ePkD/qVjyyHZv7mlDtHMvTn5oPx6CoccwWInMWNN/kCc9PZMPCy4Y3D8/UP5gwfEg8C
	DhABH63/DJnhRWw43vQ73MV1Rr/myo360OAbAaHPPXFfBzo+w63F7xiBE0tAWVrAHYtvO9NR6laVA
	hZvcxXhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFPk-000000093Kl-0qsX;
	Wed, 11 Jun 2025 06:58:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFNi-0000000933B-2oiF
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 06:56:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=hT8PcckePD4aF+IUxpihB1lEcV79fmlNZdOIYcsGQew=; b=oOsr6astUaBdUr5l/njutKSM9X
	RxcQDeVbKiDctFRyWb6Eyd7Vau0ZsQDGTNQ/moEqH508rnjnDiHsHsC+TDdECLUxeYsvB7yy+YHCp
	Bpm18IhgQnhZq0sj03GzMbOPmYNABWVgkQnIeg6hL3YH2DzfsMbU3/YtRlon+wQQ1OY/fa247BdmJ
	ivFdrJOveWck386LjNSCs9SAETf6Gz+N7og8RlhtS/VHp/FAodEjf0E1YINUvGqxk/JGLqxIGK/70
	tU3kyy75X9hUmH/teFW9qUvR5p8p68t/FvxsEEVGfGP3A1A4VJWhBZ4V+L+weg2rO/yqJB4Q7tWcs
	TYPd3BUw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFNg-000000029A4-2hWB
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 06:56:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFNe-0006LD-1Y; Wed, 11 Jun 2025 08:56:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFNd-002tuG-2n;
	Wed, 11 Jun 2025 08:56:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPFNd-001JLp-2Z;
	Wed, 11 Jun 2025 08:56:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250610203726.2769570-1-a.fatoum@pengutronix.de>
References: <20250610203726.2769570-1-a.fatoum@pengutronix.de>
Message-Id: <174962497379.312661.8205329482999634324.b4-ty@pengutronix.de>
Date: Wed, 11 Jun 2025 08:56:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_075616_806067_1827B016 
X-CRM114-Status: UNSURE (   6.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] hw_random: omap-rng: ignore clocks for OMAP3/4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Jun 2025 22:37:25 +0200, Ahmad Fatoum wrote:
> We do not have clock drivers for OMAP, including the AM33xx.
> The omap-rng driver calls clk_get_optional and so far this returned
> NULL, because CONFIG_COMMON_CLK_OF_PROVIDER was disabled.
> 
> In configurations with the option enabled, we get understandably an
> error code, which makes the drive defer probe indefinitely.
> 
> [...]

Applied, thanks!

[1/2] hw_random: omap-rng: ignore clocks for OMAP3/4
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c3afd5083a3 (link may not be stable)
[2/2] ARM: configs: omap_defconfig: enable HW_RANDOM_OMAP
      https://git.pengutronix.de/cgit/barebox/commit/?id=1326e51d9b15 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



