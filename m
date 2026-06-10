Delivery-date: Wed, 10 Jun 2026 19:50:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXN4n-004QA8-2x
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 19:50:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXN4n-0004WE-AZ
	for lore@pengutronix.de; Wed, 10 Jun 2026 19:50:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a9/V6zUe7Wlp9CwPF1+5xY/97JmzRRQPNBf35gt6cRc=; b=vPfeagoMRzaYs2q1DE8RbPqVjY
	yF16etlR05miozNMMaUY+MGT8S1EalAvKSpW4FjB6g3HWpDY4eXPtgP/RUt9YMk1tGrU9DYj8kU5p
	d7TBnI/Q35hNPh1fqrLZQN+2hrMWMsisAF0akFnWcC1gqt8cr03g1eJgYw55Mx1FZl6OYpxkkPEds
	l6HXnr1MLCABmRmCQbluOq6IxHWTlZgW1b6+50loHEo2cj/0Uq5af6tWUVne/SaK74VhaGAvstZ9i
	oaVKpxdVlkgiy8ev13u/hOp8R4QEnX2aO66LMogLjwC9P/Fv5oOM9AF06R7Jy0fCAePNWid6agRX8
	l2qyAkvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXN3W-00000008CkJ-2imC;
	Wed, 10 Jun 2026 17:49:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXN3U-00000008Cjc-0V7v
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 17:49:34 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1wXN3R-0004H0-Vp; Wed, 10 Jun 2026 19:49:29 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Wed, 10 Jun 2026 19:49:19 +0200
Message-ID: <20260610174919.3813577-2-bst@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610174919.3813577-1-bst@pengutronix.de>
References: <20260610174919.3813577-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_104932_156633_74971FC2 
X-CRM114-Status: UNSURE (   9.07  )
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
Subject: [PATCH 2/2] ARM: nxp-imx93-frdm: add bbu handler for eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows updating barebox via barebox_update as well as via fastboot.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 arch/arm/boards/nxp-imx93-frdm/board.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boards/nxp-imx93-frdm/board.c b/arch/arm/boards/nxp-imx93-frdm/board.c
index 09ce3349537..b9463e3d172 100644
--- a/arch/arm/boards/nxp-imx93-frdm/board.c
+++ b/arch/arm/boards/nxp-imx93-frdm/board.c
@@ -1,6 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0
 
+#include <common.h>
 #include <deep-probe.h>
+#include <mach/imx/bbu.h>
+
+static int imx93_frdm_probe(struct device *dev)
+{
+	imx9_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", 0);
+
+	return 0;
+}
 
 static const struct of_device_id frdm_imx93_of_match[] = {
 	{
@@ -10,3 +19,10 @@ static const struct of_device_id frdm_imx93_of_match[] = {
 };
 
 BAREBOX_DEEP_PROBE_ENABLE(frdm_imx93_of_match);
+
+static struct driver frdm_imx93_board_driver = {
+	.name = "board-imx93-frdm",
+	.probe = imx93_frdm_probe,
+	.of_compatible = frdm_imx93_of_match,
+};
+coredevice_platform_driver(frdm_imx93_board_driver);
-- 
2.47.3



