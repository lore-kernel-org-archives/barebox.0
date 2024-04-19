Delivery-date: Fri, 19 Apr 2024 08:10:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhSP-0074D1-1u
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:10:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhSO-0004vS-SR
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:10:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iw3C38a0CsQwHnQ4TRLFO6/yptdZc21M4bH6JnIJdgg=; b=1Sr+Jalt15YIphEzUgfwskI4Oh
	uKy0N12FcEv0EB8PLkeQO0QkwU14WrvID6mGkqvu7mBEKmD+BmFMpm4KNZbpEmUXT2w+GFdQxYYY/
	ZWQUZZGXFIDTeauOgASk5+QRfhCFRyPGJexHCY9R2pq1PIQBz8MwVrwzp8a1388p6l2t+0A7SLOvM
	q8Cbi7hR8wLg/5x+Z0f5Fub3IRNpEy/j/jUQ/opyjaIlN8j5lVXqi9+mUQZUoMEWc4dnI+BZpChCF
	M2GAu2D7R1yGdIyHpPYsUsVkYzj5tyCA58DaSe5hA2WLOY7ClGUsWovUf7Lb1sCh8e9SEKnokvXoQ
	JDSGGBOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhRt-00000004YJS-1tWP;
	Fri, 19 Apr 2024 06:10:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhRm-00000004YGE-1Gui
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:10:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRl-0004Ep-5L
	for barebox@lists.infradead.org; Fri, 19 Apr 2024 08:10:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRk-00D6h1-P4
	for barebox@lists.infradead.org; Fri, 19 Apr 2024 08:10:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhRk-00As0T-2D
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 08:10:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Apr 2024 08:10:00 +0200
Message-Id: <20240419061003.2590849-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_231006_489883_F2537CF4 
X-CRM114-Status: UNSURE (   7.15  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 0/3] clk: imx: composite-8m: fix muxing of core and bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M differntiates between three types of composite clocks (called
slices): Core, Bus and IP (peripheral) clocks. How muxes are configured
differs between these clocks, so the driver is populating a mux_ops
variable to point at the correct struct clk_ops.

Unfortunately, mux_ops wasn't actually used, leading to barebox hangs,
depending on the assigned-clock-parents properties in the device tree.

This is correct here. The issues were observed on an i.MX8MP.

Ahmad Fatoum (3):
  clk: imx: add IMX_COMPOSITE_CLK_FLAGS_DEFAULT macro
  clk: imx: composite-8m: fix muxing of core and bus clocks
  clk: imx: imx8mp: sync with Linux v6.9-rc3

 drivers/clk/imx/clk-composite-8m.c | 26 +++++----
 drivers/clk/imx/clk-imx8mp.c       | 93 +++++++++++++++++++-----------
 drivers/clk/imx/clk.h              | 19 +++++-
 3 files changed, 90 insertions(+), 48 deletions(-)

-- 
2.39.2



