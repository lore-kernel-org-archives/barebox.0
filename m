Delivery-date: Mon, 11 May 2026 21:21:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMWBr-000eW3-0r
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 21:21:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMWBm-0005Pi-FX
	for lore@pengutronix.de; Mon, 11 May 2026 21:21:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W7M5V47uDYW4OE71gwG/xTR5GUz/wEfJEsuXaa4runI=; b=1MB1amWcP4ot8tcufFsVAEHd8n
	4hD0kUytgqfuAZ4pUSHFh+Q8Thi+HcULmvvp79nP4Z7jUYDSkklPBRE4V+9mos+wjEkV0ikBBaaOn
	Sy6ALVKGE/UMRh5jvTXALDZ90yA3bhpWA87Je/Lk1b6w1LSvF251hWyUOAgt17vjWqAXJavKLhhTy
	0dtNgnvSILgnk/SkWewhLDKqXzMOU6ckILq8xjp0+97FSRL2U6Xfs871v5XgLXUPJY0bwMTu39r4Y
	LsvzKpPO5vFv4hYsQQmPI+a6Wso71zGpBT1Xm8uz4N2ZiqzWoJlVr3CSi6NoxBpxQhe8o9v8cWGdV
	s4G2PDnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMWAK-0000000Eaoe-15JW;
	Mon, 11 May 2026 19:19:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMWAH-0000000Eao6-0Yyt
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 19:19:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMWAD-00052W-Td; Mon, 11 May 2026 21:19:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMWAC-000Iv4-2J;
	Mon, 11 May 2026 21:19:37 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wMWAD-00000000B0t-1aBu;
	Mon, 11 May 2026 21:19:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sascha Hauer <sascha@saschahauer.de>, 
 "Claude Opus 4.7" <noreply@anthropic.com>
In-Reply-To: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
References: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
Message-Id: <177852717737.42310.3120503338756730584.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 21:19:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_121941_180319_58F1DB13 
X-CRM114-Status: UNSURE (   9.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/6] mci: rockchip-dwcmshc: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 May 2026 09:02:46 +0200, Sascha Hauer wrote:
> At least on RK3588 the dwcmshc core doesn't have an internal clock
> divider, we fully rely on the clock tree to configure the MMC clock.
> By default the clock comes from the 24MHz oscillator. For higher MMC
> clocks we have to reparent to a PLL clock, but if we do this once the
> 6bit divider iss not enough to scale down to the 400kHz MMC
> initialization clock. This means we must dynamically reparent the clock.
> This series adds support for finding the best divider/mux combination
> for composite clocks.
> 
> [...]

Applied, thanks!

[1/6] mci: sdhci: rockchip: set hidspd before re-enabling the clock
      https://git.pengutronix.de/cgit/barebox/commit/?id=8cc8bf143173 (link may not be stable)
[2/6] mci: sdhci: rockchip: disable clock while setting DLL
      https://git.pengutronix.de/cgit/barebox/commit/?id=4a0eafdd2baf (link may not be stable)
[3/6] mci: sdhci: rockchip: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
      https://git.pengutronix.de/cgit/barebox/commit/?id=682257a3ad37 (link may not be stable)
[4/6] mci: sdhci: rockchip: Update pre-change delay for rockchip platform
      https://git.pengutronix.de/cgit/barebox/commit/?id=0d405731e2bd (link may not be stable)
[5/6] clk: composite: pick best parent for round_rate / set_rate
      https://git.pengutronix.de/cgit/barebox/commit/?id=5fc97d72534a (link may not be stable)
[6/6] mci: sdhci: rockchip: officially support HS200
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d192c4794c0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



