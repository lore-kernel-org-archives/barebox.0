Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x230.google.com ([2607:f8b0:400e:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyuLK-000297-Ij
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 04:27:39 +0000
Received: by pacdm15 with SMTP id dm15so31203632pac.3
 for <barebox@lists.infradead.org>; Tue, 17 Nov 2015 20:27:17 -0800 (PST)
From: Jason Cobham <cobham.jason@gmail.com>
Date: Tue, 17 Nov 2015 20:27:02 -0800
Message-Id: <1447820824-12471-2-git-send-email-cobham.jason@gmail.com>
In-Reply-To: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
References: <1447820824-12471-1-git-send-email-cobham.jason@gmail.com>
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
Subject: [PATCH 2/4] ARM: ccxmx53: Added memory detection 
To: barebox@lists.infradead.org
Cc: cobham.jason@gmail.com

Add module identification table.

Tested with a 512M and 1GB module on a JSK dev board.
Signed-off-by: Jason Cobham <cobham.jason@gmail.com>
---
 arch/arm/boards/ccxmx53/board.c | 92 +++++++++++++++++++++++++++++++++++++++++
 dts/src/arm/imx53-ccxmx53.dtsi  |  4 +-
 2 files changed, 94 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/ccxmx53/board.c b/arch/arm/boards/ccxmx53/board.c
index b86648b..f6ba117 100644
--- a/arch/arm/boards/ccxmx53/board.c
+++ b/arch/arm/boards/ccxmx53/board.c
@@ -25,8 +25,47 @@
 #include <mach/imx5.h>
 #include <mach/generic.h>
 #include <mach/imx53-regs.h>
+#include <mach/esdctl.h>
 #include <asm/armlinux.h>
 #include <mach/bbu.h>
+#include <mach/iim.h>
+
+struct ccwmx53_hwid {
+	u8		variant;
+	u8		version;
+	u32		sn;
+	char	mloc;
+};
+
+struct ccwmx53_ident {
+	const char	*id_string;
+	const int	mem_sz;
+	const char	industrial;
+	const char	eth0;
+	const char	eth1;
+	const char	wless;
+};
+
+static struct ccwmx53_ident ccwmx53_ids[] = {
+/* 0x00 - 5500xxxx-xx */	{ "Unknown",						         			0,			0,		0,		0,      0},
+/* 0x01 - 5500xxxx-xx */	{ "Not supported",					         			0,			0,		0,		0,      0},
+/* 0x02 - 55001604-01 */	{ "i.MX535@1000MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,	0,		1,		1, 		1},
+/* 0x03 - 55001605-01 */	{ "i.MX535@1000MHz, PHY, Accel",						SZ_512M,	0,		1,		0,		0},
+/* 0x04 - 55001604-02 */	{ "i.MX535@1000MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M,	0,		1,		1,		1},
+/* 0x05 - 5500xxxx-xx */	{ "i.MX535@1000MHz, PHY, Ext. Eth, Accel",				SZ_512M,	0,		1,		1,		0},
+/* 0x06 - 55001604-03 */	{ "i.MX535@1000MHz, Wireless, PHY, Accel",				SZ_512M,	0,		1,		0,		1},
+/* 0x07 - 5500xxxx-xx */	{ "i.MX535@1000MHz, PHY, Accel",						SZ_512M,	0,		1,		0,		0},
+/* 0x08 - 55001604-04 */	{ "i.MX537@800MHz, Wireless, PHY, Accel",				SZ_512M,	1,		1,		0,		1},
+/* 0x09 - 55001605-02 */	{ "i.MX537@800MHz, PHY, Accel",							SZ_512M,	1,		1,		0,		0},
+/* 0x0a - 5500xxxx-xx */	{ "i.MX537@800MHz, Wireless, PHY, Ext. Eth, Accel",		SZ_512M,	1,		1,		1,		1},
+/* 0x0b - 55001605-03 */	{ "i.MX537@800MHz, PHY, Ext. Eth, Accel",				SZ_1G,		1,		1,		1,		0},
+/* 0x0c - 5500xxxx-xx */	{ "Reserved for future use",				        	0,     		0,      0,		0,	    0},
+/* 0x0d - 55001605-05 */	{ "i.MX537@800MHz, PHY, Accel",							SZ_1G,		1,  	1,		0,		0},
+/* 0x0e - 5500xxxx-xx */	{ "Reserved for future use",				         	0,     		0,      0,   	0,		0},
+/* 0x0f - 5500xxxx-xx */	{ "Reserved for future use",				        	0,     		0,      0,		0,	    0},
+};
+
+struct ccwmx53_ident *ccwmx53_id;
 
 #define ccwmx53_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
 
@@ -37,6 +76,59 @@ static void ccwmx53_fec_reset(void)
 	gpio_set_value(ccwmx53_FEC_PHY_RST, 1);
 }
 
+/*
+ * On this board the SDRAM is always configured for 512Mib in dt. The real
+ * size is determined by the board id read from the IIM module.
+ */
+
+static int ccwmx53_devices_init(void)
+{
+	u8 hwid[6] = {0};
+	char manloc = 0;
+
+	if ((imx_iim_read(1, 9, hwid, sizeof(hwid)) != sizeof(hwid)) || (hwid[0] < 0x02) || (hwid[0] >= ARRAY_SIZE(ccwmx53_ids)))
+	{
+		printf("Module Variant: Unknown (0x%02x) (0x%02x) (0x%02x) (0x%02x) (0x%02x) (0x%02x)\n", hwid[0],hwid[1],hwid[2],hwid[3],hwid[4],hwid[5]);
+		memset(hwid, 0x00, sizeof(hwid));
+	}
+	
+	ccwmx53_id = &ccwmx53_ids[hwid[0]];
+	printf("Module Variant: %s (0x%02x)\n", ccwmx53_id->id_string, hwid[0]);
+
+	if (hwid[0]) {
+		printf("Module HW Rev : %02x\n", hwid[1] + 1);
+		switch (hwid[2] & 0xc0) {
+		case 0x00:
+			manloc = 'B';
+			break;
+		case 0x40:
+			manloc = 'W';
+			break;
+		case 0x80:
+			manloc = 'S';
+			break;
+		default:
+			manloc = 'N';
+			break;
+		}
+		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
+		printf("Module RAM    : %dK\n", (ccwmx53_id->mem_sz)/1024);
+		if ((ccwmx53_id->mem_sz - SZ_512M) > 0)
+		{
+			arm_add_mem_device("ram1", MX53_CSD0_BASE_ADDR+SZ_512M, ccwmx53_id->mem_sz-SZ_512M);
+		}
+	} else {
+		return -ENOSYS;
+	}
+	
+	ccwmx53_fec_reset();
+
+	armlinux_set_architecture(MACH_TYPE_CCWMX53);
+
+	return 0;
+}
+device_initcall(ccwmx53_devices_init);
+
 static int ccxmx53_reg_init(void)
 {
 	unsigned char value = 0;
diff --git a/dts/src/arm/imx53-ccxmx53.dtsi b/dts/src/arm/imx53-ccxmx53.dtsi
index c89a093..5ca177b 100644
--- a/dts/src/arm/imx53-ccxmx53.dtsi
+++ b/dts/src/arm/imx53-ccxmx53.dtsi
@@ -17,8 +17,8 @@
 	compatible = "digi,imx53-ccxmx53", "fsl,imx53";
 
 	memory {
-		reg = <0x70000000 0x20000000>,
-		      <0xb0000000 0x20000000>;
+		device_type = "memory";
+		reg = <0x70000000 0x20000000>;
 	};
 };
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
