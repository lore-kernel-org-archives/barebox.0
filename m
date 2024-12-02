Delivery-date: Mon, 02 Dec 2024 12:09:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4J8-0033Z6-0t
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 12:09:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4J8-0006Pj-7N
	for lore@pengutronix.de; Mon, 02 Dec 2024 12:09:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lh+OBBjFWC2N52EHFfyXxKBzxuFDJjpIApObZ2s8AAE=; b=wfVd4G7pNV7PQ0+lnpUQFlYF83
	L3ZVJoGNCPs/rU6IAsx7qZi556leP/8FxzAfu9Zsb5ed2J+6+eUPq6PHyCjrg3lxcaMpb+Ncii3K+
	jwZk6BwHRDHyaJIeH/wdcsXaESuI05VXDuJyWcszIg4gIcfsLUe9gLSaSQgKlkrQT93u6LmGKQ9+x
	NuNLK9Xa/bbo6LFrtNvjcLYEP5X81EM/qh4G5zUnnuTAKw9TI0z74+ACNgoB7B+/CjMlZpFO+HS8U
	mGSFBnwk4yZzKWK1iRPsDI1W/cNDdcCSAYk8YYAVaHYatsBTvpg0g6GUlV7pbfaGU1/OeiHPOi6Kd
	pF0AsIpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4Ib-00000005osC-4BWz;
	Mon, 02 Dec 2024 11:09:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4GY-00000005oGl-2nU5
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 11:06:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4GX-0005r8-1x; Mon, 02 Dec 2024 12:06:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4GW-001HeP-0H;
	Mon, 02 Dec 2024 12:06:56 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tI4GW-001ze5-2W;
	Mon, 02 Dec 2024 12:06:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
In-Reply-To: <20241201212959.3196255-1-a.fatoum@pengutronix.de>
References: <20241201212959.3196255-1-a.fatoum@pengutronix.de>
Message-Id: <173313761677.474986.17965187233612495014.b4-ty@pengutronix.de>
Date: Mon, 02 Dec 2024 12:06:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_030658_706334_E2D12A02 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: omap: add two smaller MLO defconfigs for
 AM335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 01 Dec 2024 22:29:59 +0100, Ahmad Fatoum wrote:
> The Beaglebone Black remains a popular board and it's not a good look to
> have it not compile by default due to barebox getting too big.
> 
> As we keep running into size issues with the MLO defconfig, let's accept
> that we die bite off more than we could chew and split off the defconfigs
> into one for SD/MMC and another for NOR/NAND and document that users
> should prefer those instead.
> 
> [...]

Applied, thanks!

[1/1] ARM: omap: add two smaller MLO defconfigs for AM335x
      https://git.pengutronix.de/cgit/barebox/commit/?id=53c99b9f550b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



