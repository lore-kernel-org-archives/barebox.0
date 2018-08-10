Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo4sP-0000aH-Qo
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 10:42:39 +0000
From: Bastian Stender <bst@pengutronix.de>
Date: Fri, 10 Aug 2018 12:42:20 +0200
Message-Id: <20180810104220.4391-2-bst@pengutronix.de>
In-Reply-To: <20180810104220.4391-1-bst@pengutronix.de>
References: <20180810104220.4391-1-bst@pengutronix.de>
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
Subject: [PATCH 2/2] HAB: fuse recommended OCOTP_DIR_BT_DIS
To: barebox@lists.infradead.org
Cc: Bastian Stender <bst@pengutronix.de>

This is now recommended for all systems. Especially for the HAB usecase
disallowing alternative boot selection after WDOG reset is essential.

Signed-off-by: Bastian Stender <bst@pengutronix.de>
---
 drivers/hab/hab.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 0d71f5bf26..423f69e5b1 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -161,7 +161,14 @@ static int imx_hab_permanent_write_enable_ocotp(int enable)
 
 static int imx_hab_lockdown_device_ocotp(void)
 {
+	int ret;
+
+	ret = imx_ocotp_write_field(OCOTP_DIR_BT_DIS, 1);
+	if (ret < 0)
+		return ret;
+
 	return imx_ocotp_write_field(OCOTP_SEC_CONFIG_1, 1);
+
 }
 
 static int imx_hab_device_locked_down_ocotp(void)
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
