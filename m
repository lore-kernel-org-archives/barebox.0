Delivery-date: Mon, 31 Mar 2025 09:11:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9IU-006T19-26
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:11:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9IU-00031v-4O
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:11:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nAyYKotkaE18faj7qoO2cVYXPSyPaAGP7+YQ860CRwo=; b=BpoPD3ziRJs7oJTccGxOBHhu2H
	GPKb85QWj2b8U/Hn+LLul5o5WvjYPR2Bay2Wb1b0IaxFHUr8dql/++7DQHize4FhSG370ZRBSqJFY
	5wfVz5UnrIuNEFM4CITy727EYOcz9RkvEj3wcGLI2UzTy/9sEqJAt65bF85KvJs3M4KbgwHh5xNuI
	uX2NeT0wkV8HdttOSWIbYcBQ/bv6WvIvCJb7sD2cY+AFqCm5SOUJLB8HBBsVIktnOMCTpUWkgWT2I
	ZKkF67VJxBnaUdmSQ7YwPZDlr5jky2tY8UtCdKhxLHZClQIBY+BncRVj3T1wQUDZcYB4exHPU+GmE
	KP4P+5WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9I4-0000000HAaA-0xoh;
	Mon, 31 Mar 2025 07:10:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9I1-0000000HAZn-2ZXV
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:10:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9I0-0002xk-EQ; Mon, 31 Mar 2025 09:10:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9I0-002YGH-06;
	Mon, 31 Mar 2025 09:10:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9Hz-0016v6-37;
	Mon, 31 Mar 2025 09:10:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250327143218.1630440-1-eagle.alexander923@gmail.com>
References: <20250327143218.1630440-1-eagle.alexander923@gmail.com>
Message-Id: <174340503196.264819.6777593892915410846.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 09:10:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_001033_665858_CD601FDD 
X-CRM114-Status: UNSURE (   9.94  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Updating the driver
 from the kernel repository
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Mar 2025 17:32:18 +0300, Alexander Shiyan wrote:
> The current rockchip-naneng-combphy PHY driver causes my RK3588
> board to hang when probing PCI2 (I think due to insufficient
> clock initialization).
> This patch replaces the driver code from the Linux kernel repository,
> and now the bootloader works fine with pcie2x1l0.pcie2x1l2 devices
> on the RK3588.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: naneng-combphy: Updating the driver from the kernel repository
      https://git.pengutronix.de/cgit/barebox/commit/?id=58a37927b642 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



