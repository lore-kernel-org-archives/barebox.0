Delivery-date: Thu, 16 May 2024 08:07:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UHU-00GrPk-0i
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 08:07:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7UHT-0006Hr-Kw
	for lore@pengutronix.de; Thu, 16 May 2024 08:07:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YhPH9uGbLM4ClNFskL+nfmep+tLV7Tkj9U1KLkPDPRE=; b=lUhOKUXYav3o8R+1QfuiR9KnLn
	x+BIcRtZd5HaGHtRg1A9m6ZOJZZl4ZI1OSBhiLS64R5tRN+PBE/Piqt8Qm2QbvN/Q0le5+bisTbHc
	OjJezwtPrVhiASUTvT70pJoaVfI7fhQMFZy6Asn+51K+uXdoOFfx8iJ15UyYeJ24J13xYmrqZlVUH
	v59sLniPTklBLZdn9fgbuEODfbysvm58tP0dJNEK+hPCumgz3NPMi1X8ObQpJx04rB2TFygf94mqa
	DeHQZbIMf2fZ6IGECotP1lbJRTNSHxuiNY9apZZ0j4LW5ONfgcY0J3soWBGlWfC4aHE2K+uxaIdU7
	toYic0Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UH3-00000003pHz-2BI9;
	Thu, 16 May 2024 06:07:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7UGz-00000003pHY-3fSe
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 06:07:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UGy-0006BX-9W; Thu, 16 May 2024 08:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UGw-001fIL-GJ; Thu, 16 May 2024 08:07:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7UGw-00BS56-1O;
	Thu, 16 May 2024 08:07:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: san@skov.com, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240515112033.286037-1-a.fatoum@pengutronix.de>
References: <20240515112033.286037-1-a.fatoum@pengutronix.de>
Message-Id: <171583964242.2729529.3106067548007675805.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 08:07:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_230725_948415_BD2A2E1A 
X-CRM114-Status: UNSURE (   8.68  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX8MP: skov: fix variant detection on
 boards without state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 13:20:32 +0200, Ahmad Fatoum wrote:
> If barebox booted a board without state partition on the eMMC it did not set a
> refined compatible at all resulting in a failure to boot into Linux userspace.
> 
> Instead just default to the LVDS flavor of the board variant which at least
> leads to a working Linux userspace.
> 
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX8MP: skov: fix variant detection on boards without state
      https://git.pengutronix.de/cgit/barebox/commit/?id=61808f7f9e31 (link may not be stable)
[2/2] ARM: i.MX8MP: skov: update timing parameters for Samsung RAM
      https://git.pengutronix.de/cgit/barebox/commit/?id=592fed919ca8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



