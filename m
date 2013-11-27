Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlbdL-0005CP-Kh
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 09:42:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2013 10:41:48 +0100
Message-Id: <1385545308-22820-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385545308-22820-1-git-send-email-s.hauer@pengutronix.de>
References: <1385545308-22820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fixup! cpsw: Add devicetree probe support
To: barebox@lists.infradead.org

---
 drivers/net/cpsw.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 801859b..5e68e1b 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -28,6 +28,7 @@
 #include <errno.h>
 #include <io.h>
 #include <of.h>
+#include <pinctrl.h>
 #include <of_net.h>
 #include <of_address.h>
 #include <xfuncs.h>
@@ -1057,6 +1058,12 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 				return ret;
 		}
 
+		if (of_device_is_compatible(child, "ti,davinci_mdio")) {
+			ret = of_pinctrl_select_state_default(child);
+			if (ret)
+				return ret;
+		}
+
 		if (!strncmp(child->name, "slave", 5)) {
 			struct cpsw_slave *slave = &priv->slaves[i];
 			uint32_t phy_id[2];
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
