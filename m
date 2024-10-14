Delivery-date: Mon, 14 Oct 2024 15:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZJ-004HX8-13
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZH-0006SC-SS
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WjfO0BQyNaJKjSR+chMG56GMs3gJZwV8vsHu5Sh0fJw=; b=V+3AW6nObb97/T0ksKq8ThauMc
	tH/i7brw6ZW99KkePKeFYHyu+9gAviNA4aDd6C1Fe62nsJXcOIKX3kUnLCHY4fWUGSJoQ+gB/Th4C
	Z1Yfl9CJxP3b85SXzLF07RtltSpuRKZ6Fa34INPHG9lWVUNqleAJSSjpRn+KDHY/NvrM2CcMqNddR
	UvfL1iAS+eo1ZNyyEwRycdR9cjcLvXt9tFTp49mLtgY/Qj/yv8A/eQFRrMUgDdbhn9zY66+BzFo5K
	KbxrDLYJsEovzZl/vhg8a2UG4V56yOJlL7ogJ2tuSJ3qd7i0kwbzBGDSxuqGrkEKrEnO+RD/Tp2SC
	dnZAYhhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYj-00000005NQk-3ySj;
	Mon, 14 Oct 2024 13:56:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kf8-00000005Ag8-1VCG
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:59:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ker-0007L8-1L; Mon, 14 Oct 2024 14:58:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-001nNa-L6; Mon, 14 Oct 2024 14:58:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-00A8vm-1n;
	Mon, 14 Oct 2024 14:58:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:58:40 +0200
Message-Id: <20241014125843.2064532-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055902_417199_1E43CA76 
X-CRM114-Status: UNSURE (   9.86  )
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
Subject: [PATCH 3/6] crypto: caam - pbl-init: use DMA_ADDRESS_BROKEN instead of NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While functionally the same, DMA_ADDRESS_BROKEN marks that the code is
in need of improvement, so it should be used for documentation purposes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/crypto/caam/pbl-init.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/caam/pbl-init.c b/drivers/crypto/caam/pbl-init.c
index 08fad4525a21..832793031cf8 100644
--- a/drivers/crypto/caam/pbl-init.c
+++ b/drivers/crypto/caam/pbl-init.c
@@ -457,7 +457,8 @@ int early_caam_init(struct caam_ctrl __iomem *_caam, bool is_imx)
 	if (IN_PBL)
 		g_jrdata = &pbl_jrdata;
 	else
-		g_jrdata = dma_alloc_coherent(sizeof(*g_jrdata), NULL);
+		g_jrdata = dma_alloc_coherent(sizeof(*g_jrdata),
+					      DMA_ADDRESS_BROKEN);
 
 	jr = IOMEM(caam) + 0x1000;
 	r4tst = &caam->r4tst[0];
-- 
2.39.5



