Delivery-date: Tue, 10 Dec 2024 09:06:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvFo-006Ihq-1W
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 09:06:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKvFo-0007ep-EA
	for lore@pengutronix.de; Tue, 10 Dec 2024 09:06:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HdvgVaGdN8HuDdHVJ84xTuhkjBcOWq9YEUozmifswYc=; b=JyfBleln+2mLs6n8XauZOAmjYy
	fg314Mn1ChCiRxRyF8NNymdmgnP8nU83JAs204PS8bXbmJnS21uv+c6OL0Sv/qN/lZu1TjziDKtjT
	MSZKKBtN4wgcG394oWGbMLZlJOIOPYA9QqVCrMd8u6M94Nw/ExoMbTxJyeNv9Qa+WyW4b95S+bHDE
	6XIY+hCkH4CAFz21KdID6erA7GThsgAr4I5MLBegXBzgEOwmcqFBCJCLysFRI8x7JU2ERwVsWyzeq
	e/N7uEjax7aJ3RTtSEasbdsBn/RJdUSb+994Lt/CMtP/89RgDJhNR2qpD8G/QhXE3vNdmiWguyWp7
	eXTTq27w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvFN-0000000AeLd-0DpU;
	Tue, 10 Dec 2024 08:05:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKvFK-0000000AeKz-0ZwR
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 08:05:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1tKvFJ-0007Xs-0C; Tue, 10 Dec 2024 09:05:29 +0100
From: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 10 Dec 2024 09:05:19 +0100
Message-Id: <20241210080519.1236134-1-s.pueschel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_000530_171906_8AB4D5C1 
X-CRM114-Status: UNSURE (   8.46  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] video: mipi_dbi: fix swapped width and height in mipi_dbi_blank
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix swapped width and height values in the mipi_dbi_blank function. This
caused a non quadratic display not being cleared entirely when disabling
the framebuffer device.

Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 drivers/video/mipi_dbi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index c202ecc1c7..1e2883020b 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -307,8 +307,8 @@ EXPORT_SYMBOL(mipi_dbi_enable_flush);
 
 static void mipi_dbi_blank(struct mipi_dbi_dev *dbidev)
 {
-	u16 height = dbidev->mode.xres;
-	u16 width = dbidev->mode.yres;
+	u16 height = dbidev->mode.yres;
+	u16 width = dbidev->mode.xres;
 	struct mipi_dbi *dbi = &dbidev->dbi;
 	size_t len = width * height * 2;
 
-- 
2.39.5



