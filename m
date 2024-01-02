Delivery-date: Tue, 02 Jan 2024 12:02:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXY-000Umv-3D
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:02:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXX-0002kI-Vc
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:02:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16f1snvS6h5ZyjbD8kfLYkVXCNooqhcBmt6Kor+CVCM=; b=iy2r6ZA72keDhP6cXdbvi/Q2wp
	GkHwAYj/pEqCUxM1MAFHq6uypvEcP95QHQWVo5wCvWPW6kyqQojYdPISjOaZSMe01yPrCPGaKd+nf
	A7P/z6TTPElYSFnKyxC+iHES7IYjPNCtz8JIIF6n+1vcfcxkgqCB8NWhhUHsHFzLPnhIEgUb4RZRf
	s57cj07CwxUS0dCJqyA8Wogvti0bLMlqWOYitXE37XAdBFyDdBO2Esg0lwT+K1zlPGXhWcpmQq4yJ
	+WMuVz65k+X5fCBhJ/YwOpVaQ/QUPZ+QDx/iEwRGiAxHQTf5iLnktaTa6xpmw67RqY+M83pYfMcbL
	YB3T78dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWb-007f6f-0t;
	Tue, 02 Jan 2024 11:01:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWV-007f4O-2Y
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:01:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rKcWU-0002Cz-JR
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 12:01:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  2 Jan 2024 12:01:18 +0100
Message-Id: <20240102110118.280032-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102110118.280032-1-m.felsch@pengutronix.de>
References: <20240102110118.280032-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_030127_850766_F179999C 
X-CRM114-Status: UNSURE (   6.52  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] ARM: boards: polyhex-debix: fix file mode for 8g-lpddr4-timing.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Drop the execution mode from the file.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/polyhex-debix/8g-lpddr4-timing.c | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 mode change 100755 => 100644 arch/arm/boards/polyhex-debix/8g-lpddr4-timing.c

diff --git a/arch/arm/boards/polyhex-debix/8g-lpddr4-timing.c b/arch/arm/boards/polyhex-debix/8g-lpddr4-timing.c
old mode 100755
new mode 100644
-- 
2.39.2



