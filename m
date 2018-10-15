Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsWQ-0006zW-4B
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:22:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id g2-v6so8389316pgu.11
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:22:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:19 -0700
Message-Id: <20181015022125.24020-17-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 16/22] include: linux: phy: Add missing PHY_INTERFACE_*
 constants
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/phy.h | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index ac750f5c3..5b2c63ff6 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -54,7 +54,16 @@ typedef enum {
 	PHY_INTERFACE_MODE_RGMII_TXID,
 	PHY_INTERFACE_MODE_RTBI,
 	PHY_INTERFACE_MODE_SMII,
+	PHY_INTERFACE_MODE_XGMII,
 	PHY_INTERFACE_MODE_QSGMII,
+	PHY_INTERFACE_MODE_TRGMII,
+	PHY_INTERFACE_MODE_1000BASEX,
+	PHY_INTERFACE_MODE_2500BASEX,
+	PHY_INTERFACE_MODE_RXAUI,
+	PHY_INTERFACE_MODE_XAUI,
+	/* 10GBASE-KR, XFI, SFI - single lane 10G Serdes */
+	PHY_INTERFACE_MODE_10GKR,
+	PHY_INTERFACE_MODE_MAX,
 } phy_interface_t;
 
 #define PHY_INIT_TIMEOUT	100000
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
