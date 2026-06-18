Delivery-date: Thu, 18 Jun 2026 09:02:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6lG-007ArR-27
	for lore@lore.pengutronix.de;
	Thu, 18 Jun 2026 09:02:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wa6lF-0001Qa-8R
	for lore@pengutronix.de; Thu, 18 Jun 2026 09:02:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+gpxd5nv8WMDciwe/B5YDBjD1+wAn9KJaTSPZkXh+i0=; b=Tf+F2lUJgI5CH/BzdBLZpz/25S
	k2b9k4RyAOOtfUE9xOz5z1KHWb9Ym/dkiOjhxUrFpUfCt+PJ6Vf6XlERhuEbDxUIA2dSOR9/nJG0Y
	leMz/GdVgIVxwMUHfuBAHjNpY7db1OiEhVXbOIE2USZFTFZkPUojjnt1kxS3pjGunZDYRcz3N1Gc5
	1Hf3yitgxNCuxyTr8JN0djlQW/M6Gs4E/78WQSyCmVVBX7xb89gocxghBviBQ2aW5AZRutuk8czFW
	0jMPFU0cBtJqWZt3JqqpngO5LrWjWH2LYW0BmvWhIAri6wdJWLN7HiuuwLt2o86WumMU5NnYsj0KW
	JQiJ7CTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6ju-00000000iye-2UL7;
	Thu, 18 Jun 2026 07:00:38 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa6jp-00000000ixr-3qSU
	for barebox@lists.infradead.org;
	Thu, 18 Jun 2026 07:00:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 67A93200FB6;
	Thu, 18 Jun 2026 09:00:29 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6jl-003Oef-0v;
	Thu, 18 Jun 2026 09:00:29 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wa6jl-0000000CaXA-0w2D;
	Thu, 18 Jun 2026 09:00:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Johannes Schneider <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260617103448.1563040-2-johannes.schneider@leica-geosystems.com>
References: <20260617103448.1563040-1-johannes.schneider@leica-geosystems.com>
 <20260617103448.1563040-2-johannes.schneider@leica-geosystems.com>
Message-Id: <178176602921.3000102.15114042396363001965.b4-ty@pengutronix.de>
Date: Thu, 18 Jun 2026 09:00:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_000034_128149_C4EDA2C3 
X-CRM114-Status: UNSURE (   4.80  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH v1 2/2] commands: mmc_extcsd: fix
 enhanced-area / GPP size display arithmetic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Jun 2026 10:34:48 +0000, Johannes Schneider wrote:
> Per JEDEC eMMC 5.1 (JESD84-B51, February 2015), the displayed byte
> size for the enhanced user data area and for each general-purpose
> partition is the product of the SIZE_MULT bytes, the write-protect
> group size, the erase group size, and 512 KiB:
> 
>   §7.4.90 ENH_SIZE_MULT [142:140] (p. 219):
>     Enhanced User Data Area x Size =
>        (ENH_SIZE_MULT_2 * 2^16 + ENH_SIZE_MULT_1 * 2^8
>         + ENH_SIZE_MULT_0 * 2^0)
>        * HC_WP_GRP_SIZE * HC_ERASE_GRP_SIZE * 512 kBytes
> 
> [...]

Applied, thanks!

[2/2] commands: mmc_extcsd: fix enhanced-area / GPP size display arithmetic
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe7386051df1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



