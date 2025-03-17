Delivery-date: Mon, 17 Mar 2025 10:36:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tv-000YqH-1V
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:36:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tt-00027f-Jt
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:36:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qUdjMc4szpCgnwIxRtg1wU3bktT0CVTOzg36uyBGE4I=; b=Jq896/fwelkg4rNykJTwmIKifS
	q9vMzRxs8jF0Lvgj9H1ByZurPL8gXpOvXK0S8S1P12fdfN2q/GTs66ysVv/BHwcDI4nZL+h0NumOj
	aHjacb4pUo/YoP1x6W4tvAEbmV/Cs7v1hbYDyvg4HrUREmyiSRRFjjIxIEArQ8UGZ8WbMd2A5FKiN
	W4eOevvx1Th1NlSSJUCsqc9p6WxJmHhIctCk9CURmBmaToN2nePp5qsxN/Vq2FamG6NYkKv4AwU2Z
	7vfFOkWbYKOiW8OQ/7Jex3ND/c4hmP093WZX1H4OwCSdcOmjOa2mb0afxuphDJqD4Z/I4A8aM3wPN
	gWo1i/7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6tT-00000001xFr-1Nf1;
	Mon, 17 Mar 2025 09:36:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6rn-00000001wmH-3ySQ
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:34:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-0001Qn-Kx; Mon, 17 Mar 2025 10:34:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rl-000DpJ-32;
	Mon, 17 Mar 2025 10:34:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-00H5gy-0u;
	Mon, 17 Mar 2025 10:34:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Mar 2025 10:34:32 +0100
Message-Id: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKns12cC/x2MywqAIBAAfyX23IIPKuhXooPYWgtpohSB+O9Jh
 znMYaZApsSUYe4KJHo48xWayL4De5iwE/LWHJRQg9ByQm8ZPWeL9iQT7ohKj2qT5BoGWhYTOX7
 /5bLW+gHuVKw8YgAAAA==
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742204078; l=766;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4lws+FMJrefw6r934ULC+i6CToxBe2efMVdGQmUuiBg=;
 b=N6N2TucEYmk57ZlTND7UIvPMJ+URW4L9lkLAXr76Wz4Nil4n/LaGb/in9yEcH0KTURBL2b6ec
 /3xaoTH9YUEDAEe7RReoQUF9hAgfFe6c2p4+YOFrnuiWBLuZI+S/9yI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_023440_004343_472EC600 
X-CRM114-Status: UNSURE (   6.89  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] mci: some cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This cleans up some stuff in the mci layer and its drivers.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (6):
      mci: use struct cid
      mmc: merge block read/write functions
      mci: cleanup code around ready_for_use flag
      mci: mci_spi: remove stray return 0
      mci: mci_spi: fix warning message
      mci: mci_spi: use mci_of_parse()

 drivers/mci/mci-core.c | 488 ++++++++++++++++++++-----------------------------
 drivers/mci/mci_spi.c  |   7 +-
 include/mci.h          |  18 +-
 3 files changed, 216 insertions(+), 297 deletions(-)
---
base-commit: 2afd1a809f1a41f1dd42b95c2bc0ae74853b475b
change-id: 20250317-mci-misc-cleanup-2362d1efd1ea

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



