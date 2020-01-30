Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixE7c-0000HC-Gh
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 18:00:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1ixE7b-0003xV-0q
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 19:00:55 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1ixE7a-000801-Oc
 for barebox@lists.infradead.org; Thu, 30 Jan 2020 19:00:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 30 Jan 2020 19:00:53 +0100
Message-Id: <20200130180053.30000-3-m.grzeschik@pengutronix.de>
In-Reply-To: <20200130180053.30000-1-m.grzeschik@pengutronix.de>
References: <20200130180053.30000-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH v2 3/3] ARM: phyCORE-i.MX8M SOM: add pmic initialisation for
 power good
To: barebox@lists.infradead.org

This patch is adding the same PMIC handling as the u-boot spl does for
this Board. It ensures sane defaults.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx8mq/board.c | 38 +++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx8mq/board.c b/arch/arm/boards/phytec-som-imx8mq/board.c
index 4fd098c5f6..7df53a7cfb 100644
--- a/arch/arm/boards/phytec-som-imx8mq/board.c
+++ b/arch/arm/boards/phytec-som-imx8mq/board.c
@@ -10,9 +10,45 @@
 #include <init.h>
 #include <linux/sizes.h>
 #include <mach/bbu.h>
+#include <mfd/pfuze.h>
 
 #include <envfs.h>
 
+#define PFUZE100_DEVICEID	0x0
+#define PFUZE100_REVID		0x3
+
+#define PFUZE100_SW1ABMODE	0x23
+#define PFUZE100_SW2MODE	0x38
+#define PFUZE100_SW1CMODE	0x31
+#define PFUZE100_SW3AVOL	0x3c
+
+#define APS_PFM			0xc
+
+static void imx8mq_setup_pmic_voltages(struct regmap *map)
+{
+	int offset = PFUZE100_SW1CMODE;
+	int switch_num = 6;
+	int val, i;
+
+	regmap_read(map, PFUZE100_SW3AVOL, &val);
+
+	/* ensure the correct VDD_DRAM_0V9 output voltage */
+	regmap_write_bits(map, PFUZE100_SW3AVOL, 0x3f, 0x18);
+
+	/* pfuze200 */
+	regmap_read(map, PFUZE100_DEVICEID, &val);
+	if (val & 0xf) {
+		offset = PFUZE100_SW2MODE;
+		switch_num = 4;
+	}
+
+	/* set all switches APS in normal and PFM mode in standby */
+	regmap_write(map, PFUZE100_SW1ABMODE, APS_PFM);
+
+	for (i = 0; i < switch_num - 1; i++)
+		regmap_write(map, offset + i * 7, APS_PFM);
+}
+
 static int physom_imx8mq_devices_init(void)
 {
 	int flag_emmc = 0;
@@ -23,6 +59,8 @@ static int physom_imx8mq_devices_init(void)
 
 	barebox_set_hostname("phycore-imx8mq");
 
+	pfuze_register_init_callback(imx8mq_setup_pmic_voltages);
+
 	switch (bootsource_get_instance()) {
 	case 0:
 		flag_emmc = BBU_HANDLER_FLAG_DEFAULT;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
