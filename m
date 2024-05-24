Delivery-date: Fri, 24 May 2024 13:44:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sATLG-00GcJM-1E
	for lore@lore.pengutronix.de;
	Fri, 24 May 2024 13:44:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sATLF-0005Un-QL
	for lore@pengutronix.de; Fri, 24 May 2024 13:44:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nAatQydg4bkE3WgncslTNYyLB4i+WjnREMt477g4BT0=; b=tiSHnLuUPsKysMjVmoZkhN6chM
	685p+eV1B3IxXusn56J3uZAJJFv8LLZbj4bScjlRghaU5iBz59QUofVkSWL6aYv/SOrgJj5a8k/a3
	XebgfiyRNGHvGQUcFZQP1L7A5NMPATUouCeR/ey0vm8IGuXrwZCdoU1NZa57yq2SfqoXY0zZxlHtK
	Sh0tFj4xghGMjRk9mPcpVRGvS15zhipNAVtmsBSbTt7EIGkS4YN2K8uzE3Rp51Zq7Q2BOauk9ZDzy
	mMlpy3u8IFtXAlCvPe8sgiTetpe6eTdNotgZ5S1Sb+OKmS9h9IZjimMPO36g621l4vfWDE6GCbVZd
	yOuqY8KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sATKq-00000008nhY-1wIg;
	Fri, 24 May 2024 11:43:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sATKn-00000008nh7-0ftH
	for barebox@lists.infradead.org;
	Fri, 24 May 2024 11:43:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATKl-0005PZ-Pa; Fri, 24 May 2024 13:43:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATKl-002mtz-8f; Fri, 24 May 2024 13:43:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sATKl-002VTQ-0f;
	Fri, 24 May 2024 13:43:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Richardsen <jonasrichardsen@emlix.com>
In-Reply-To: <20240522080734.1965257-1-a.fatoum@pengutronix.de>
References: <20240522080734.1965257-1-a.fatoum@pengutronix.de>
Message-Id: <171655101920.597568.11569376389944666222.b4-ty@pengutronix.de>
Date: Fri, 24 May 2024 13:43:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240524_044341_233728_8C27A1E7 
X-CRM114-Status: UNSURE (   6.32  )
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
Subject: Re: [PATCH master 1/3] mci: sdhci: use host device, not card, for
 debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 22 May 2024 10:07:32 +0200, Ahmad Fatoum wrote:
> All other messages printed in sdhci.c use the host's device to prefix
> the message, except this one debug message here that uses the card's
> instead. Unify this by using the host device everywhere.
> 
> 

Applied, thanks!

[1/3] mci: sdhci: use host device, not card, for debug message
      https://git.pengutronix.de/cgit/barebox/commit/?id=affdaa4a9df4 (link may not be stable)
[2/3] mci: sdhci: retrieve host device via common helper or NULL
      https://git.pengutronix.de/cgit/barebox/commit/?id=1ddaa6821b90 (link may not be stable)
[3/3] mci: sdhci: populate struct sdhci::mci in drivers
      https://git.pengutronix.de/cgit/barebox/commit/?id=532da9c40cdc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



