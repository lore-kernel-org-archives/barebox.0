Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dFR4D-0008Dk-Q3
 for barebox@lists.infradead.org; Mon, 29 May 2017 20:15:07 +0000
Received: from tellur.fritz.box (a89-183-58-206.net-htp.de [89.183.58.206])
 by lynxeye.de (Postfix) with ESMTPA id BD5E0E7421F
 for <barebox@lists.infradead.org>; Mon, 29 May 2017 22:02:45 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 29 May 2017 22:02:41 +0200
Message-Id: <20170529200242.17934-1-dev@lynxeye.de>
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
Subject: [PATCH 1/2] ARM: imx6: gw54xx: add function to retrieve board
 revision from GSC
To: barebox@lists.infradead.org

This parses the board revision from the GSC EEPROm model string.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/gateworks-ventana/gsc.c | 14 ++++++++++++++
 arch/arm/boards/gateworks-ventana/gsc.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm/boards/gateworks-ventana/gsc.c b/arch/arm/boards/gateworks-ventana/gsc.c
index 3614230..92244d1 100644
--- a/arch/arm/boards/gateworks-ventana/gsc.c
+++ b/arch/arm/boards/gateworks-ventana/gsc.c
@@ -65,3 +65,17 @@ int gsc_i2c_write(struct i2c_client *client, u32 addr, const u8 *buf, u16 count)
 
 	return ret;
 }
+
+char gsc_get_rev(struct i2c_client *client)
+{
+	int i;
+	u8 model[16];
+
+	gsc_i2c_read(client, 0x30, model, 16);
+	for (i = sizeof(model) - 1; i > 0; i--) {
+		if (model[i] >= 'A')
+			return model[i];
+	}
+
+	return 'A';
+}
diff --git a/arch/arm/boards/gateworks-ventana/gsc.h b/arch/arm/boards/gateworks-ventana/gsc.h
index a6e7e22..13f2262 100644
--- a/arch/arm/boards/gateworks-ventana/gsc.h
+++ b/arch/arm/boards/gateworks-ventana/gsc.h
@@ -56,3 +56,5 @@
  */
 int gsc_i2c_read(struct i2c_client *client, u32 addr, u8 *buf, u16 count);
 int gsc_i2c_write(struct i2c_client *client, u32 addr, const u8 *buf, u16 count);
+
+char gsc_get_rev(struct i2c_client *client);
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
