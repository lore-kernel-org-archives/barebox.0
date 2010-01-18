Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqEF-0006Ki-8a
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:14 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:26 +0100
Message-Id: <1263815791-10839-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-3-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-2-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-3-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/8] i.MX35 3stack: adopt board to new mc13892 and mc9sdz60
	driver interface
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 board/freescale-mx35-3-stack/3stack.c |   97 ++++++++++++++++++---------------
 1 files changed, 53 insertions(+), 44 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index e541966..f671936 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -157,7 +157,7 @@ static int f3s_devices_init(void)
 	reg = readl(IMX_CCM_BASE + CCM_RCSR);
 	/* some fuses provide us vital information about connected hardware */
 	if (reg & 0x20000000)
-		nand_info.width = 2;	/* bit */
+		nand_info.width = 2;	/* 16 bit */
 	else
 		nand_info.width = 1;	/* 8 bit */
 
@@ -358,74 +358,84 @@ static int f3s_core_init(void)
 
 core_initcall(f3s_core_init);
 
-static int f3s_get_rev(struct i2c_client *client)
+static int f3s_get_rev(struct mc13892 *mc13892)
 {
-	u8 reg[3];
-	int rev;
+	u32 rev;
+	int err;
 
-	i2c_read_reg(client, 0x7, reg, sizeof(reg));
+	err = mc13892_reg_read(mc13892, MC13892_REG_IDENTIFICATION, &rev);
+	if (err)
+		return err;
 
-	rev = reg[0] << 16 | reg [1] << 8 | reg[2];
-	dev_info(&client->dev, "revision: 0x%x\n", rev);
+	dev_info(&mc13892->client->dev, "revision: 0x%x\n", rev);
+	if (rev == 0x00ffffff)
+		return -ENODEV;
 
-	/* just return '0' or '1' */
-	return !!((rev >> 6) & 0x7);
+	return ((rev >> 6) & 0x7) ? 20 : 10;
 }
 
-static void f3s_pmic_init_v2(struct i2c_client *client)
+static int f3s_pmic_init_v2(struct mc13892 *mc13892)
 {
-	u8 reg[3];
+	int err = 0;
 
-	i2c_read_reg(client, 0x1e, reg, sizeof(reg));
-	reg[2] |= 0x03;
-	i2c_write_reg(client, 0x1e, reg, sizeof(reg));
+	err |= mc13892_set_bits(mc13892, MC13892_REG_SETTING_0, 0x03, 0x03);
+	err |= mc13892_set_bits(mc13892, MC13892_REG_MODE_0, 0x01, 0x01);
+	if (err)
+		dev_err(&mc13892->client->dev,
+			"Init sequence failed, the system might not be working!\n");
 
-	i2c_read_reg(client, 0x20, reg, sizeof(reg));
-	reg[2] |= 0x01;
-	i2c_write_reg(client, 0x20, reg, sizeof(reg));
+	return err;
 }
 
-static void f3s_pmic_init_all(struct i2c_client *client)
+static int f3s_pmic_init_all(struct mc9sdz60 *mc9sdz60)
 {
-	u8 reg[1];
+	int err = 0;
 
-	i2c_read_reg(client, 0x20, reg, sizeof(reg));
-	reg[0] |= 0x04;
-	i2c_write_reg(client, 0x20, reg, sizeof(reg));
+	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_INT_FLAG_1, 0x04, 0x04);
 
+	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_2, 0x80, 0x00);
 	mdelay(200);
+	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_2, 0x80, 0x80);
 
-	i2c_read_reg(client, 0x1a, reg, sizeof(reg));
-	reg[0] &= 0x7f;
-	i2c_write_reg(client, 0x1a, reg, sizeof(reg));
-
-	mdelay(200);
+	if (err)
+		dev_err(&mc9sdz60->client->dev,
+			"Init sequence failed, the system might not be working!\n");
 
-	reg[0] |= 0x80;
-	i2c_write_reg(client, 0x1a, reg, sizeof(reg));
+	return err;
 }
 
 static int f3s_pmic_init(void)
 {
-	struct i2c_client *client;
+	struct mc13892 *mc13892;
+	struct mc9sdz60 *mc9sdz60;
 	int rev;
 
-	client = mc13892_get_client();
-	if (!client)
-		return -ENODEV;
+	mc13892 = mc13892_get();
+	if (!mc13892) {
+		printf("FAILED to get mc13892 handle!\n");
+		return 0;
+	}
 
-	rev = f3s_get_rev(client);
-	if (rev) {
-		printf("i.MX35 CPU board version 2.0\n");
-		f3s_pmic_init_v2(client);
-	} else {
-		printf("i.MX35 CPU board version 1.0\n");
+	rev = f3s_get_rev(mc13892);
+	switch (rev) {
+	case 10:
+		break;
+	case 20:
+		f3s_pmic_init_v2(mc13892);
+		break;
+	default:
+		printf("FAILED to identify board revision!\n");
+		return 0;
 	}
+	printf("i.MX35 PDK CPU board version %d.%d\n", rev / 10, rev % 10);
 
-	client = mc9sdz60_get_client();
-	if (!client)
-		return -ENODEV;
-	f3s_pmic_init_all(client);
+	mc9sdz60 = mc9sdz60_get();
+	if (!mc9sdz60) {
+		printf("FAILED to get mc9sdz60 handle!\n");
+		return 0;
+	}
+
+	f3s_pmic_init_all(mc9sdz60);
 
 	return 0;
 }
@@ -442,4 +452,3 @@ void __bare_init nand_boot(void)
 	imx_nand_load_image((void *)TEXT_BASE, 256 * 1024);
 }
 #endif
-
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
