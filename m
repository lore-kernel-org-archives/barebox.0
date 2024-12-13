Delivery-date: Fri, 13 Dec 2024 22:01:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCml-007jKD-2Y
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCml-0000pV-Om
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RLGJr4CLanNMinwKlwFEaXcKWXsTqvdTZ8nltX/KBt0=; b=wVP1nuZRqRFlDXEgDQVKpN8HMI
	UYwHG0pfKntZ25r1/iI8nJz2SZUj2AiBCj3yslwk38em9bNZ+3RT2Yv8+w20H/nZeNFXn9WtCZmB7
	xOoat3WtqLue6HBaAb6ipjYTsIEFdK7s5aGRzXOR4SMDmoR2i3T9fUXLxw95h4HOcIvlukdOf0uIW
	ts1OfzFsUrWlFWduQJOHjLjhQyhxLij/ckCoCR2mmm5Is1aN/6MtNnnPhtBKeYkMwUZB2DI9mTjtN
	f557JelzDAX0fvXQb2DahEeyNl9+NW/NmHvLqlAV4h9eL+RmvQxvdplkgYFy60fou5Ovj05DtDbGP
	m4jxmCTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmN-000000051ZC-025y;
	Fri, 13 Dec 2024 21:00:55 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmJ-000000051Xd-2Jf6
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:00:52 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id E98D6E7408D; Fri, 13 Dec 2024 22:00:20 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id 56D53E74071
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:19 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:09 +0100
Message-ID: <20241213210015.357249-3-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130051_732737_4BB455C8 
X-CRM114-Status: GOOD (  10.17  )
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
Subject: [PATCH 3/9] ARM: zynq: zed: guard board initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Make sure the board initcall is only executed on a
compatible board.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/avnet-zedboard/board.c b/arch/arm/boards/avnet-zedboard/board.c
index 15332189ca09..faa0bacf0ce1 100644
--- a/arch/arm/boards/avnet-zedboard/board.c
+++ b/arch/arm/boards/avnet-zedboard/board.c
@@ -12,6 +12,9 @@
 
 static int zedboard_console_init(void)
 {
+	if (!of_machine_is_compatible("avnet,zynq-zed"))
+		return 0;
+
 	barebox_set_hostname("zedboard");
 
 	return 0;
-- 
2.47.1



