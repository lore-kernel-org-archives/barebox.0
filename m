Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo5ph-0006dU-7b
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 11:43:54 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Fri, 10 Aug 2018 13:43:37 +0200
Message-Id: <20180810114337.4616-1-bst@pengutronix.de>
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
Subject: [PATCH v2] HAB: fuse recommended OCOTP_DIR_BT_DIS
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

This is now recommended for all systems. Especially for the HAB usecase
disallowing alternative boot selection after WDOG reset is essential.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
Changes since v1:
  - removed accidentally added empty line
---
 drivers/hab/hab.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 0d71f5bf26..03bb65e0fa 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -161,6 +161,12 @@ static int imx_hab_permanent_write_enable_ocotp(int enable)
 
 static int imx_hab_lockdown_device_ocotp(void)
 {
+	int ret;
+
+	ret = imx_ocotp_write_field(OCOTP_DIR_BT_DIS, 1);
+	if (ret < 0)
+		return ret;
+
 	return imx_ocotp_write_field(OCOTP_SEC_CONFIG_1, 1);
 }
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
