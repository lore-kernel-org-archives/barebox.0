Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WdeiW-00047O-Gy
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 11:54:57 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5E7E4BF0EB
 for <barebox@lists.infradead.org>; Fri, 25 Apr 2014 13:54:31 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Fri, 25 Apr 2014 13:54:27 +0200
Message-Id: <1398426868-30285-3-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] dts: imx6qdl: add ethernet pin group for mii
To: barebox@lists.infradead.org

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-pingrp.h |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-pingrp.h b/arch/arm/dts/imx6qdl-pingrp.h
index 082f0df..97d76dc 100644
--- a/arch/arm/dts/imx6qdl-pingrp.h
+++ b/arch/arm/dts/imx6qdl-pingrp.h
@@ -97,6 +97,18 @@
 	MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1		0x1b0b0	\
 	MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN		0x1b0b0
 
+#define MX6QDL_ENET_PINGRP5 \
+	MX6QDL_ENET_PINGRP4 \
+	MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK		0x1b0b0 \
+	MX6QDL_PAD_KEY_COL0__ENET_RX_DATA3		0x1b0b0 \
+	MX6QDL_PAD_KEY_ROW0__ENET_TX_DATA3		0x1b0b0 \
+	MX6QDL_PAD_KEY_ROW1__ENET_COL			0x1b0b0 \
+	MX6QDL_PAD_KEY_COL2__ENET_RX_DATA2		0x1b0b0 \
+	MX6QDL_PAD_KEY_ROW2__ENET_TX_DATA2		0x1b0b0 \
+	MX6QDL_PAD_KEY_COL3__ENET_CRS			0x1b0b0 \
+	MX6QDL_PAD_GPIO_18__ENET_RX_CLK			0x1b0b0 \
+	MX6QDL_PAD_GPIO_19__ENET_TX_ER			0x1b0b0
+
 #define MX6QDL_ENET_PINGRP1_GPIO6	MX6QDL_ENET_PINGRP1 \
 	MX6QDL_PAD_GPIO_6__ENET_IRQ	0x000b1
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
