Delivery-date: Wed, 19 Aug 2026 13:12:58 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wweE5-004qDK-24
	for lore@lore.pengutronix.de;
	Wed, 19 Aug 2026 13:12:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 411AB201021
	for <lore@pengutronix.de>; Wed, 19 Aug 2026 13:12:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=P8sylaB1;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sf+pttsED66OsS+4cGGJj1D3FADmR4DFGk45WHSht4Q=; b=P8sylaB1CoTu4e0V8z6o1+QMcm
	n7bhYOsmvwYGGayoOTFV9iinjY+7gu2gP/zqAKffMGajuGGr0DA41Ah3r+kvNS3JERgBWt39VObi7
	NmaUzNOpwVHH903/kYenWaD1sJqR9gFnVE5AWEwkNH9nMCeG0VYDwOZ1oxwFb7yv2utFCNyLOzdJm
	BgBj38KHrNi21k3iKruH9QLWREZxldJArOyszpcqWeck/bDJdmrUvQk4et5yDzS0nXFGvjn5RyTv8
	Z4a72kd0G/c/gBr8142rtxHSpAkcJ5vnlBMjsyh+TSc7droLFlN4WWNWX52zRTKG9jVR8yTlcSeqH
	g3qrG0SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wweDf-00000009dfe-3Gn9;
	Wed, 19 Aug 2026 11:12:31 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wweDa-00000009deV-0Wer
	for barebox@lists.infradead.org;
	Wed, 19 Aug 2026 11:12:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 64CB62020ED;
	Wed, 19 Aug 2026 13:12:24 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wweDY-002HeE-13;
	Wed, 19 Aug 2026 13:12:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wweDY-00000005Yly-0sx8;
	Wed, 19 Aug 2026 13:12:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
Cc: robert.marko@sartura.hr
In-Reply-To: <20260813081444.1879009-1-o.rempel@pengutronix.de>
References: <20260813081444.1879009-1-o.rempel@pengutronix.de>
Subject: Re: [PATCH v2 0/9] ARM: add Microchip LAN9696 (LAN969X) SoC and
 EV23X71A board
Message-Id: <178713794420.1323819.17310503186882129349.b4-ty@pengutronix.de>
Date: Wed, 19 Aug 2026 13:12:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_041226_383654_3240AD78 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 13 Aug 2026 10:14:30 +0200, Oleksij Rempel wrote:
    > This series adds barebox support for the Microchip LAN9696 (LAN969X > family)
    SoC and the EV23X71A evaluation board, a 28-port Ethernet swi [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: kkzuwrq4xfux7k4wxeahqn5j9dfykh4j
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 411AB201021


On Thu, 13 Aug 2026 10:14:30 +0200, Oleksij Rempel wrote:
> This series adds barebox support for the Microchip LAN9696 (LAN969X
> family) SoC and the EV23X71A evaluation board, a 28-port Ethernet switch
> platform with an ARM64 Cortex-A53 and AT91/SAMA5 compatible peripherals.
> barebox runs as BL33 in a TF-A boot chain.
> 
> Link to v1: https://lore.barebox.org/barebox/20260612055930.635833-1-o.rempel@pengutronix.de/
> 
> [...]

Applied, thanks!

[1/9] ARM: introduce ARCH_MICROCHIP for ARM64 Microchip SoCs
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ae05c10ce0d (link may not be stable)
[2/9] serial: atmel: add lan9696 (Microchip LAN969X) support
      https://git.pengutronix.de/cgit/barebox/commit/?id=20908d237e2b (link may not be stable)
[3/9] clk: add Microchip LAN966X / LAN969X generic clock controller driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=7860fb96bc80 (link may not be stable)
[4/9] clk: tolerate clocks registered without a name
      https://git.pengutronix.de/cgit/barebox/commit/?id=fe37c2bb7d26 (link may not be stable)
[5/9] pinctrl: ocelot: port Microsemi/Microchip Ocelot pinctrl from Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=008518f5b666 (link may not be stable)
[6/9] gpio: add Microchip SGPIO (serial GPIO) driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=ceb7f811ee2d (link may not be stable)
[7/9] reset: add Microchip sparx5 / LAN969X / LAN966X switch reset driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6d7e67c96b5 (link may not be stable)
[8/9] spi: atmel-quadspi: add Microchip LAN966X / LAN969X support
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b3eec561ad2 (link may not be stable)
[9/9] ARM: add Novarq Tactical 1000 board
      https://git.pengutronix.de/cgit/barebox/commit/?id=8d497f6cac6a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



