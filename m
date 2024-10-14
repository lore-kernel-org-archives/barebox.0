Delivery-date: Mon, 14 Oct 2024 15:22:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L1x-004GnN-0H
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:22:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L1w-0001bu-Hi
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:22:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X0qEXJldL3SO/DMmpEWNQ4n3M5RUuE2SP26HzP7eja0=; b=rzXeE4YDi8JzSrlXwoS/RSp80o
	qLVISZalhka76YpLEp4bTg4N+mhBVgMWEydOROjUo9975Q4lQhQuGnJF6p/ZF+7EEd4d2mmBKYiSE
	eP8f3u51qev4luoJQ8JhkdWSfbyM+nE7fExZomwfHeKFc9lgNU9RXLt+1OwdCTyd0A4A6L29Ex636
	zvAJq1OKUqtKkALIQffD0eec20iIu2bFIVYTnf6jja24CGtUFoN4yKKLqWN6iyZvxcOFXoSVn6Dtv
	A7MUcUTzk7LsANNkiwBfpasMjdKhaGXRFMUTI7rPcdsQhCpsxlDcQ5W/5XgCOlWPOPycl46PTWkEV
	JXPMv9zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L1H-00000005Elo-1yuT;
	Mon, 14 Oct 2024 13:21:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0J2B-00000004sM7-0XBe
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:14:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J2A-0006sv-0y; Mon, 14 Oct 2024 13:14:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J29-001mDL-Kd; Mon, 14 Oct 2024 13:14:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J29-00FpGh-1r;
	Mon, 14 Oct 2024 13:14:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20241010-fix-designware-fixed-link-v1-1-de2df5485a25@pengutronix.de>
References: <20241010-fix-designware-fixed-link-v1-1-de2df5485a25@pengutronix.de>
Message-Id: <172890448157.3771803.10692698315084755497.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 13:14:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_041443_201949_BAFDC621 
X-CRM114-Status: UNSURE (   7.81  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: designware: let phy_resume handle fixed link phys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 10 Oct 2024 16:23:04 +0200, Stefan Kerkmann wrote:
> This applies the same handling of fixed-link phys to the designware
> driver as Rouven Czerwinski already did in commit
> `6269556397ed646e9fdcdefa855944fcff0f3608 (net: eqos: let phy_resume
> handle fixed link phys)`.
> 
> Without this change the driver segfaults on the socfpga platform if
> there is no mdio bus attached, as it is the case in a fixed-link setup:
> 
> [...]

Applied, thanks!

[1/1] net: designware: let phy_resume handle fixed link phys
      https://git.pengutronix.de/cgit/barebox/commit/?id=4e2583356f07 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



