Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vy4-0002kF-AK
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:38:58 +0000
Received: by mail-pf1-x433.google.com with SMTP id m77-v6so1200134pfi.8
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:38:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Oct 2018 10:37:59 -0700
Message-Id: <20181009173805.26181-12-andrew.smirnov@gmail.com>
In-Reply-To: <20181009173805.26181-1-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/17] include: linux: phy: Add missing PHY_INTERFACE_*
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
