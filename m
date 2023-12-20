Delivery-date: Wed, 20 Dec 2023 15:55:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFxz2-006N9u-04
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 15:55:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFxz1-0001nR-G5
	for lore@pengutronix.de; Wed, 20 Dec 2023 15:55:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16f1snvS6h5ZyjbD8kfLYkVXCNooqhcBmt6Kor+CVCM=; b=YUhZuJ+uv1ygrgIXJbYrF3c7pH
	KgZKY52KuLW1Vv/FcpUHOIfhKN+68sWk9cDnUppSQTo/P6vZQXA+I7g6gXqEt5uxtw2o4f9HwdlHn
	rOc15IEvlBcDvlAXLlgzJEucrHvtwQMNTSS99+KhzqJz/BJZoR7gBllkkQP0sobQKalem4M/kxOIC
	XbNGNbikELs27LjzFkaTVQsMpGgmMkcpgnl5MA3ECAqV34OIN8xkBsL571T2HGsJz95OTjLmRdNXf
	2ow14d/IzMeK/yufijqoBdpY41lqJGyiSPAIWtEev0MO8JVq/dylgG0Y7TchjTcPGgHoRJdhT6kZK
	b1TI+Bpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFxxr-0008kA-2z;
	Wed, 20 Dec 2023 14:54:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFxxp-0008jV-0q
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 14:54:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rFxxj-0001XT-RB
	for barebox@lists.infradead.org; Wed, 20 Dec 2023 15:54:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 20 Dec 2023 15:54:18 +0100
Message-Id: <20231220145418.88750-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231220145418.88750-1-m.felsch@pengutronix.de>
References: <20231220145418.88750-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_065425_297555_3E3CFC06 
X-CRM114-Status: UNSURE (   5.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: boards: polyhex-debix: fix file mode for 8g-lpddr4-timing.c
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



