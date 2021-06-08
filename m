Delivery-date: Tue, 08 Jun 2021 16:07:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcO6-0007HR-50
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 16:07:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqcO5-0001iF-7r
	for lore@pengutronix.de; Tue, 08 Jun 2021 16:07:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cBDkADsT5GKWWfa2E1VVwhWX3zW0Igs97oOxBvQ9Xcs=; b=CLlYNYwqmX0153
	kEZ5CZboCvbJ/m9MTCUGKRZc6tCO9K6dG6VdXitEflnySw/CCFNq29vUBz2UDE1Katy037kFXzJhZ
	OyroC4mUqgsHnGGXIZcbz4/t4AbGr6QfyupAIHv8TkvJl5Let0um4YHJE7bc10apfwt5VqjIbrf8M
	2YLTXz9zGZ2LJdNidzFabO6i8qmYxDArPDm0Gf6AvivgY4BRI0FC4+yPVJRx+I8TFiaznQJX6hd6O
	xryuqoIBdZr/6di9ME7q9VkaenUS1Av4HP9n9RbvwosufxqH4MdJqAFm1ulnaaZrvsxeGjbVDbbnp
	vGKvaq5gyTllI9P61qIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqcMm-008kIh-NL; Tue, 08 Jun 2021 14:06:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqcMW-008k4P-S6
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 14:05:52 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-0001HF-LA; Tue, 08 Jun 2021 16:05:46 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqcMU-000059-8W; Tue, 08 Jun 2021 16:05:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 16:05:40 +0200
Message-Id: <20210608140545.30696-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_070548_978744_845C0B89 
X-CRM114-Status: GOOD (  10.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] RK3568 pinctrl
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Another step in getting Rockchip rk3568 support upstream: This series
adds pinctrl support for that SoC.
Unfortunately I don't have access to a board that was previously
supported by the driver, so I can't test if it still works. The rk3568
seems to work ok though, the register settings I have checked look sane.

Sascha

Sascha Hauer (5):
  pinctrl: Rockchip: rename mux_offset to grf_mux_offset
  pinctrl: Rockchip: print resource_size_t with %pa
  pinctrl: Rockchip: Update from Linux
  pinctrl: Rockchip: implement drive strength setting
  pinctrl: Rockchip: Add RK3568 support

 drivers/pinctrl/pinctrl-rockchip.c | 777 ++++++++++++++++++++++++++++-
 1 file changed, 754 insertions(+), 23 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

