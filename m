Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1csnD8-000119-Qu
 for barebox@lists.infradead.org; Tue, 28 Mar 2017 09:14:45 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 28 Mar 2017 11:14:16 +0200
Message-Id: <20170328091416.16715-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] i.MX: hab: fix compile after define renames
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Some defines was renamed by this patch:
| commit 75e98198234ce18ab15f581cf7b52aaf0b46d792
| i.MX: Add fusemap for VF610

which was not included in my initial patch. So fix it.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/hab/hab.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 56d49e8e3..512ff7ecf 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -126,7 +126,7 @@ static int imx_hab_read_srk_hash_ocotp(u8 *__srk)
 	int ret, i;
 
 	for (i = 0; i < SRK_HASH_SIZE / sizeof(uint32_t); i++) {
-		ret = imx_ocotp_read_field(IMX6_OCOTP_SRK_HASH(i), &srk[i]);
+		ret = imx_ocotp_read_field(OCOTP_SRK_HASH(i), &srk[i]);
 		if (ret < 0)
 			return ret;
 	}
@@ -140,13 +140,13 @@ static int imx_hab_write_srk_hash_ocotp(const u8 *__newsrk, unsigned flags)
 	int ret, i;
 
 	for (i = 0; i < SRK_HASH_SIZE / sizeof(uint32_t); i++) {
-		ret = imx_ocotp_write_field(IMX6_OCOTP_SRK_HASH(i), newsrk[i]);
+		ret = imx_ocotp_write_field(OCOTP_SRK_HASH(i), newsrk[i]);
 		if (ret < 0)
 			return ret;
 	}
 
 	if (flags & IMX_SRK_HASH_WRITE_LOCK) {
-		ret = imx_ocotp_write_field(IMX6_OCOTP_SRK_LOCK, 1);
+		ret = imx_ocotp_write_field(OCOTP_SRK_LOCK, 1);
 		if (ret < 0)
 			return ret;
 	}
@@ -161,7 +161,7 @@ static int imx_hab_permanent_write_enable_ocotp(int enable)
 
 static int imx_hab_lockdown_device_ocotp(void)
 {
-	return imx_ocotp_write_field(IMX6_OCOTP_SEC_CONFIG, 1);
+	return imx_ocotp_write_field(OCOTP_SEC_CONFIG_1, 1);
 }
 
 static int imx_hab_device_locked_down_ocotp(void)
@@ -169,7 +169,7 @@ static int imx_hab_device_locked_down_ocotp(void)
 	int ret;
 	unsigned int v;
 
-	ret = imx_ocotp_read_field(IMX6_OCOTP_SEC_CONFIG, &v);
+	ret = imx_ocotp_read_field(OCOTP_SEC_CONFIG_1, &v);
 	if (ret < 0)
 		return ret;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
