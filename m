Delivery-date: Wed, 29 May 2024 08:23:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCiQ-0016b2-0E
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 08:23:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCiP-0000CV-Hj
	for lore@pengutronix.de; Wed, 29 May 2024 08:23:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sLoTJdjUwLR57HziCxH+INYHGMn2eTw9YeGX6K6BOD8=; b=yrQd1QeQx4g/MLYDCMmThdtPdc
	Tm3nu+KSkjbYk4k9hHHh4Vm9CbzLQhx1MwevQSLYeCxsiUHfWUzh2Mt6mI2XdQ9fZ+JWqSyoeL1wZ
	13Fv9nAZu7mkR9uGcqgZk7gHdYGjgtzTA9Y/neb55w1KJ3spn14jBlBX7NBU0NT8uzyHDoWBbZmRm
	bP+a0XsHtlUCYdKb1BjN9350GdqSoKMZBRmGn+yRcnGs28WsQpME4euZQa9EPfNJvPaJGJ0tScZ3K
	snvjcTqxAnqb3bSeoVeH7X8b2bEcdbZcc+g2wluc4N1VvsKLns10t3nUoZppU6RXl4alBfew0Erj8
	YYveuDcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCChw-00000002zgr-3r6M;
	Wed, 29 May 2024 06:22:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCChu-00000002zgS-1n84
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 06:22:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCChs-00008U-O4; Wed, 29 May 2024 08:22:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCChs-003QVC-Bf; Wed, 29 May 2024 08:22:40 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCChs-002Ssz-0w;
	Wed, 29 May 2024 08:22:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240529050340.3227789-1-o.rempel@pengutronix.de>
References: <20240529050340.3227789-1-o.rempel@pengutronix.de>
Message-Id: <171696376029.587638.11633018402062850045.b4-ty@pengutronix.de>
Date: Wed, 29 May 2024 08:22:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_232242_508704_F40B479F 
X-CRM114-Status: UNSURE (   6.39  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] phy: avoid adjust_link call if link remains down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 29 May 2024 07:03:40 +0200, Oleksij Rempel wrote:
> Add a check in phy_update_status to skip calling adjust_link when the
> link status remains down. This prevents unnecessary adjust_link calls
> for PHYs that may change speed and duplex status bits before confirming
> link establishment. This issue was observed during debugging a switch
> driver, where a PHY took about 6 seconds to establish a link, causing
> multiple adjust_link calls.
> 
> [...]

Applied, thanks!

[1/1] phy: avoid adjust_link call if link remains down
      https://git.pengutronix.de/cgit/barebox/commit/?id=1851e95fcb68 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



