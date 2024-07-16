Delivery-date: Tue, 16 Jul 2024 09:03:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTcE5-005MZV-0X
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 09:03:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTcE4-00057r-I9
	for lore@pengutronix.de; Tue, 16 Jul 2024 09:03:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=onJpUksGA+S6+r7ufrot06AMHGcEMi8wSCa1+u70H6Y=; b=cgD2XW8BXlnPCeECdTccRfxHpc
	GXyOd08QoyVfpeT1xyrvYFcuBpgM8eqxpU3kx9GzeQPscuWDpFOLmG/jCdNmgZc5E2gQUrS77Cy/A
	VxqblZY3co+AYuZP9/7I7iZhsuRmzed8NXfnu9uftr6tcP2ic1CoO+8/eFE3V9KNyxNIR7Ozp8pbm
	TgWtjs49Rpcv/sZtdhSeGSi8MG22+dAP0T3qgkvkOIoeWUJfeBjpiBLlBGDvAQNKmxsjk94c+pv2h
	oB4s0HucNpBZJ0mZbL7NWQVtTXCZKGMoHllNUaYi9MMzew9X32ZQNxyNrA6WTIRIEUUnazr5RuVb9
	0RWpG9hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTcDL-00000009XEd-0aLp;
	Tue, 16 Jul 2024 07:03:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTcDH-00000009XDs-3lBU
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 07:03:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTcDF-00054L-5I; Tue, 16 Jul 2024 09:03:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTcDE-0004Yj-Os; Tue, 16 Jul 2024 09:03:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sTcDE-00EnDW-2G;
	Tue, 16 Jul 2024 09:03:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240715123614.1940787-1-s.hauer@pengutronix.de>
References: <20240715123614.1940787-1-s.hauer@pengutronix.de>
Message-Id: <172111338069.3525664.13171652341767605547.b4-ty@pengutronix.de>
Date: Tue, 16 Jul 2024 09:03:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_000303_970573_9F373BA4 
X-CRM114-Status: UNSURE (   5.85  )
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
Subject: Re: [PATCH 1/3] hab: bail out with error when SRK hash write fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Jul 2024 14:36:12 +0200, Sascha Hauer wrote:
> When we fail to write fuses during writing the SRK hash, then bail
> out with an error instead of silently ignoring it.
> 
> 

Applied, thanks!

[1/3] hab: bail out with error when SRK hash write fails
      https://git.pengutronix.de/cgit/barebox/commit/?id=3bfc2d81e26d (link may not be stable)
[2/3] hab: ahab: cosmetic change
      https://git.pengutronix.de/cgit/barebox/commit/?id=c09a4202ff9a (link may not be stable)
[3/3] hab: ahab: use pr_* for printing
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c1cd778d7a9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



