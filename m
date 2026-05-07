Delivery-date: Thu, 07 May 2026 10:23:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKu0e-001tsf-01
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 10:23:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKu0Y-0008Pd-Uf
	for lore@pengutronix.de; Thu, 07 May 2026 10:23:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jU8e8h6kLiySpSdaf6g03QDQhU1IdhROjdTFQf70/lo=; b=j88y4DYb+i0mi+
	1WvTePPC7o2E8kXXv7DqHyhE3kXFRhzfCjfUWtib/9B5BvZGuKbnHN3uWuchbKkrjJHsQijNQhHJS
	aWloYuApec+ap4kCLjBlzGvuKyJzeiicZSS6i6flwGHndIGVli3aeeSKc7oB7Vj1X/2tzu1BPYhIF
	RaXbXrSlFZagdU85u3ZASLWWfuA8bg/oQaTqpiEevIObEUjcoeHl2qvCXc9H/lT0eDctNe2QNUMQp
	FVvPtAtwCPSltCip9YmzFJgg57T1Hicpt/q4tcYLYu+YN7pKDXypzFHGVe5y1QyLXIciyn0Nie7sd
	0XJx9DK5/WwM93dI3m2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl3-00000002yyK-0lhv;
	Thu, 07 May 2026 07:02:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKsl2-00000002ywY-0yUH
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 07:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKskz-0006NR-1Z; Thu, 07 May 2026 09:02:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-000sMY-0Y;
	Thu, 07 May 2026 09:02:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKsky-0000000BYFq-24Vv;
	Thu, 07 May 2026 09:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 May 2026 09:02:46 +0200
Message-Id: <20260507-rockchip-emmc-v1-0-5e8109e8059d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABY5/GkC/x3MQQqAIBBA0avErBOmxKyuEi1iGmsILRQikO6et
 HyL/zMkjsIJxipD5FuSnKGgqSugfQkbK1mLocW2Q4NWxZMO2uVS7D0p5J4MDpac1lCaK7KT5/9
 N8/t+yI0cQF8AAAA=
X-Change-ID: 20260507-rockchip-emmc-0e8c5097cf33
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778137368; l=1472;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HRlncxMmZW2pHC19eoNS6kq1wRNLGiGZIryMJeSyeVc=;
 b=INll6BuCo+lOwZ1oVtGpRzqoqLZKCuHtuDcu67d+2ZZ/tSmly2uoPI9J+ElKlErnvWi/GbDPb
 10SJRWwddlXCIP5RipWF0T3KNNb++IcJbqi0vixDZ6H2d1nwoCZJIBS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_000252_281492_A5803522 
X-CRM114-Status: UNSURE (   9.90  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.7" <noreply@anthropic.com>
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
Subject: [PATCH 0/6] mci: rockchip-dwcmshc: add HS200 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At least on RK3588 the dwcmshc core doesn't have an internal clock
divider, we fully rely on the clock tree to configure the MMC clock.
By default the clock comes from the 24MHz oscillator. For higher MMC
clocks we have to reparent to a PLL clock, but if we do this once the
6bit divider iss not enough to scale down to the 400kHz MMC
initialization clock. This means we must dynamically reparent the clock.
This series adds support for finding the best divider/mux combination
for composite clocks.

This series also adds some fixes to the dwcmshc driver which used to
timeout on writing sometimes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (6):
      mci: sdhci: rockchip: set hidspd before re-enabling the clock
      mci: sdhci: rockchip: disable clock while setting DLL
      mci: sdhci: rockchip: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
      mci: sdhci: rockchip: Update pre-change delay for rockchip platform
      clk: composite: pick best parent for round_rate / set_rate
      mci: sdhci: rockchip: officially support HS200

 drivers/clk/clk-composite.c          | 110 ++++++++++++++++++++++++++++++-----
 drivers/mci/rockchip-dwcmshc-sdhci.c |  51 ++++++++++------
 2 files changed, 128 insertions(+), 33 deletions(-)
---
base-commit: 019d102038a64e6b6e8f445cbfd2d15e68d0ec3f
change-id: 20260507-rockchip-emmc-0e8c5097cf33

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



