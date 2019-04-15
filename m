Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr820114.outbound.protection.outlook.com
 ([40.107.82.114] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hG0q9-0004pg-15
 for barebox@lists.infradead.org; Mon, 15 Apr 2019 12:36:02 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Mon, 15 Apr 2019 12:35:59 +0000
Message-ID: <1555331684-25431-3-git-send-email-renaud.barbier@abaco.com>
References: <1555331684-25431-1-git-send-email-renaud.barbier@abaco.com>
In-Reply-To: <1555331684-25431-1-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
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
Subject: [PATCH 2/2] owc: remove references to GE.
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: "Barbier, Renaud" <renaud.barbier@abaco.com>

As per contactual requirement, remove references to GE in the
code.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 arch/ppc/Makefile                          |    2 +-
 arch/ppc/boards/owc-da923rc/Makefile       |    2 +-
 arch/ppc/boards/owc-da923rc/da923rc.c      |    9 +++++----
 arch/ppc/boards/owc-da923rc/product_data.c |   17 +++++++++--------
 arch/ppc/boards/owc-da923rc/product_data.h |    5 +++--
 arch/ppc/configs/owc_da923rc_defconfig     |    2 +-
 6 files changed, 20 insertions(+), 17 deletions(-)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 05ec243..2fb9b14 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -15,7 +15,7 @@ board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
 board-$(CONFIG_P1010RDB)			:= freescale-p1010rdb
 board-$(CONFIG_P2020RDB)			:= freescale-p2020rdb
 board-$(CONFIG_P1022DS)				:= freescale-p1022ds
-board-$(CONFIG_DA923RC)				:= geip-da923rc
+board-$(CONFIG_DA923RC)				:= owc-da923rc
 
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
 machine-$(CONFIG_ARCH_MPC85XX)			:= mpc85xx
diff --git a/arch/ppc/boards/owc-da923rc/Makefile b/arch/ppc/boards/owc-da923rc/Makefile
index 7177bfa..4cf6c5c 100644
--- a/arch/ppc/boards/owc-da923rc/Makefile
+++ b/arch/ppc/boards/owc-da923rc/Makefile
@@ -4,4 +4,4 @@ obj-y += law.o
 obj-y += ddr.o
 obj-y += nand.o
 obj-y += product_data.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-geip-da923rc
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-owc-da923rc
diff --git a/arch/ppc/boards/owc-da923rc/da923rc.c b/arch/ppc/boards/owc-da923rc/da923rc.c
index 6ec4ee2..2665a15 100644
--- a/arch/ppc/boards/owc-da923rc/da923rc.c
+++ b/arch/ppc/boards/owc-da923rc/da923rc.c
@@ -1,5 +1,6 @@
 /*
  * Copyright 2013 GE Intelligent Platforms, Inc.
+ * Copyright 2019 Abaco Systems, Inc.
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -11,7 +12,7 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
- * GEIP DA923RC/GBX460 board support.
+ * Abaco Systems DA923RC/GBX460 board support.
  */
 
 #include <common.h>
@@ -61,7 +62,7 @@ static struct board_info binfo;
 static int board_eth_init(void)
 {
 	void __iomem *gur = IOMEM(MPC85xx_GUTS_ADDR);
-	struct ge_product_data product;
+	struct owc_product_data product;
 	int st;
 
 	/* Toggle eth0 reset pin */
@@ -74,7 +75,7 @@ static int board_eth_init(void)
 		 in_be32(gur + MPC85xx_DEVDISR_OFFSET) &
 		 ~MPC85xx_DEVDISR_TSEC3);
 
-	st = ge_get_product_data(&product);
+	st = owc_get_product_data(&product);
 	if (((product.v2.mac.count > 0) && (product.v2.mac.count <= MAX_MAC))
 	    && (st == 0))
 		eth_register_ethaddr(0, (const char *)&product.v2.mac.mac[0]);
@@ -98,7 +99,7 @@ static int da923rc_devices_init(void)
 	board_eth_init();
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_geip_da923rc);
+		defaultenv_append_directory(defaultenv_owc_da923rc);
 
 	return 0;
 }
diff --git a/arch/ppc/boards/owc-da923rc/product_data.c b/arch/ppc/boards/owc-da923rc/product_data.c
index eda10a4..5135afd 100644
--- a/arch/ppc/boards/owc-da923rc/product_data.c
+++ b/arch/ppc/boards/owc-da923rc/product_data.c
@@ -1,5 +1,6 @@
 /*
  * Copyright 2013 GE Intelligent Platforms Inc.
+ * Copyright 2019 Abaco Systems Inc.
  *
  * This program is free software; you can redistribute it and/or
  * modify it under the terms of the GNU General Public License as
@@ -21,7 +22,7 @@
 #include <mach/fsl_i2c.h>
 #include "product_data.h"
 
-static int ge_pd_header_check(unsigned short header)
+static int owc_pd_header_check(unsigned short header)
 {
 	if (header != 0xa5a5)
 		return -1;
@@ -29,12 +30,12 @@ static int ge_pd_header_check(unsigned short header)
 		return 0;
 }
 
-static int ge_is_data_valid(struct ge_product_data *v)
+static int owc_is_data_valid(struct owc_product_data *v)
 {
 	int crc, ret = 0;
 	const unsigned char *p = (const unsigned char *)v;
 
-	if (ge_pd_header_check(v->v1.pdh.tag))
+	if (owc_pd_header_check(v->v1.pdh.tag))
 		return -1;
 
 	switch (v->v1.pdh.version) {
@@ -56,7 +57,7 @@ static int ge_is_data_valid(struct ge_product_data *v)
 	return ret;
 }
 
-int ge_get_product_data(struct ge_product_data *productp)
+int owc_get_product_data(struct owc_product_data *productp)
 {
 	struct i2c_adapter *adapter;
 	struct i2c_client client;
@@ -70,14 +71,14 @@ int ge_get_product_data(struct ge_product_data *productp)
 			   sizeof(unsigned short));
 
 	/* If there is no valid header, it may be a 16-bit eeprom. */
-	if (ge_pd_header_check(productp->v1.pdh.tag))
+	if (owc_pd_header_check(productp->v1.pdh.tag))
 		width = I2C_ADDR_16_BIT;
 
 	ret = i2c_read_reg(&client, width, (uint8_t *) productp,
-			   sizeof(struct ge_product_data));
+			   sizeof(struct owc_product_data));
 
-	if (ret == sizeof(struct ge_product_data))
-		ret = ge_is_data_valid(productp);
+	if (ret == sizeof(struct owc_product_data))
+		ret = owc_is_data_valid(productp);
 
 	return ret;
 }
diff --git a/arch/ppc/boards/owc-da923rc/product_data.h b/arch/ppc/boards/owc-da923rc/product_data.h
index f172fb5..cbbb8d3 100644
--- a/arch/ppc/boards/owc-da923rc/product_data.h
+++ b/arch/ppc/boards/owc-da923rc/product_data.h
@@ -1,5 +1,6 @@
 /*
  * Copyright 2013 GE Intelligent Platforms, Inc.
+ * Copyright 2019 Abaco Systems, Inc.
  *
  * The product data structure and function prototypes.
  *
@@ -51,12 +52,12 @@ struct __attribute__ ((__packed__)) product_data_v2 {
 	int crc32;
 };
 
-struct __attribute__ ((__packed__)) ge_product_data {
+struct __attribute__ ((__packed__)) owc_product_data {
 	union {
 		struct product_data_v1 v1;
 		struct product_data_v2 v2;
 	};
 };
 
-extern int ge_get_product_data(struct ge_product_data *productp);
+extern int owc_get_product_data(struct owc_product_data *productp);
 extern void da923rc_boardinfo_get(struct board_info *bi);
diff --git a/arch/ppc/configs/owc_da923rc_defconfig b/arch/ppc/configs/owc_da923rc_defconfig
index 6c0a81e..183ddb1 100644
--- a/arch/ppc/configs/owc_da923rc_defconfig
+++ b/arch/ppc/configs/owc_da923rc_defconfig
@@ -3,7 +3,7 @@ CONFIG_DA923RC=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
 CONFIG_MALLOC_SIZE=0x4000000
 CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="GE> "
+CONFIG_PROMPT="OWBOOT> "
 CONFIG_BAUDRATE=9600
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
-- 
1.7.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
