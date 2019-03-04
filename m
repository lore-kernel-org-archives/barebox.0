Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0los-00037r-QE
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 11:31:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2019 12:31:40 +0100
Message-Id: <20190304113140.9787-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] include/phy: Add missing modes
To: Barebox List <barebox@lists.infradead.org>

PHY_INTERFACE_MODE_SGMII_2500 and PHY_INTERFACE_MODE_NONE are missing.
Add these to be consistent with the Kernel.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/phy.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index 5081ebacb3..82c8da03ce 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -66,6 +66,8 @@ typedef enum {
 	PHY_INTERFACE_MODE_XAUI,
 	/* 10GBASE-KR, XFI, SFI - single lane 10G Serdes */
 	PHY_INTERFACE_MODE_10GKR,
+	PHY_INTERFACE_MODE_SGMII_2500,
+	PHY_INTERFACE_MODE_NONE,
 	PHY_INTERFACE_MODE_MAX,
 } phy_interface_t;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
