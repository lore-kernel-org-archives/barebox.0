Delivery-date: Wed, 10 Jun 2026 19:50:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXN4n-004QA7-2r
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 19:50:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXN4n-0004WD-AZ
	for lore@pengutronix.de; Wed, 10 Jun 2026 19:50:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lsKMTqT9RnrSwvE/hDX/z2hthl72+NLtGvIiyoWb47A=; b=h3YvpFUby9Go5PVJfyHv4jTNe7
	t7NNIczFfs4fH4YlM6i6Ykmdy+q5qQEJiVygeDU8eMRUTqGxYOkoDopENzSne2MUF0mrmeyZH9z54
	ku5mh1sa2NNHNufnu1iNFmEEIo62bptACRFQP1moTfcmJivkOClj0o662SjXV/g1wDuMflM9M1RPu
	5UF7rr2RI4LTPe+Pdoka9j6yZ+xUIZSlHH7c+fFqDl6VI+W+JmMj5iR67UC2rZH/FW81ZE4Vw8xgl
	WoXbXUnmZbT4cxyb4C3QpJp9Vxw7XRTnNLMq+JJr0Ut0gm+q1MrDuX3qMJvN88+5IjHDOAM9gD/Kg
	JQO6mfgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXN3W-00000008CkD-2RE0;
	Wed, 10 Jun 2026 17:49:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXN3U-00000008Cjb-0Cv2
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 17:49:33 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1wXN3R-0004H0-9q; Wed, 10 Jun 2026 19:49:29 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Wed, 10 Jun 2026 19:49:18 +0200
Message-ID: <20260610174919.3813577-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_104932_089164_0258C42A 
X-CRM114-Status: UNSURE (   9.31  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: nxp-imx93-frdm: use tabs instead of spaces
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 arch/arm/boards/nxp-imx93-frdm/board.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/nxp-imx93-frdm/board.c b/arch/arm/boards/nxp-imx93-frdm/board.c
index 1e1c54ce811..09ce3349537 100644
--- a/arch/arm/boards/nxp-imx93-frdm/board.c
+++ b/arch/arm/boards/nxp-imx93-frdm/board.c
@@ -3,9 +3,9 @@
 #include <deep-probe.h>
 
 static const struct of_device_id frdm_imx93_of_match[] = {
-        {
-                .compatible = "fsl,imx93-11x11-frdm",
-        },
+	{
+		.compatible = "fsl,imx93-11x11-frdm",
+	},
         { /* sentinel */ },
 };
 
-- 
2.47.3



