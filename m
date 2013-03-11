Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEy1Q-0005jF-GD
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 08:23:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2013 09:23:46 +0100
Message-Id: <1362990229-1425-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362990229-1425-1-git-send-email-s.hauer@pengutronix.de>
References: <1362990229-1425-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] net: phy: micrel: Update id table from kernel
To: barebox@lists.infradead.org

To get more phy ids.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/micrel_phy.h | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/include/linux/micrel_phy.h b/include/linux/micrel_phy.h
index adfe8c0..9dbb41a 100644
--- a/include/linux/micrel_phy.h
+++ b/include/linux/micrel_phy.h
@@ -21,8 +21,15 @@
 #define PHY_ID_KSZ8021		0x00221555
 #define PHY_ID_KSZ8041		0x00221510
 #define PHY_ID_KSZ8051		0x00221550
-/* both for ks8001 Rev. A/B, and for ks8721 Rev 3. */
+/* same id: ks8001 Rev. A/B, and ks8721 Rev 3. */
 #define PHY_ID_KSZ8001		0x0022161A
+/* same id: KS8081, KS8091 */
+#define PHY_ID_KSZ8081		0x00221560
+#define PHY_ID_KSZ8061		0x00221570
+#define PHY_ID_KSZ9031		0x00221620
+
+#define PHY_ID_KSZ886X		0x00221430
+#define PHY_ID_KSZ8863		0x00221435
 
 /* struct phy_device dev_flags definitions */
 #define MICREL_PHY_50MHZ_CLK	0x00000001
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
