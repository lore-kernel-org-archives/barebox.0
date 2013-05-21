Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UejKd-0005Md-68
 for barebox@lists.infradead.org; Tue, 21 May 2013 09:58:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 21 May 2013 11:57:38 +0200
Message-Id: <1369130267-8094-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
References: <1369130267-8094-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] ARM: i.MX: remove unused .mac_addr_base in iim
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c              | 6 ------
 arch/arm/mach-imx/imx25.c            | 6 +-----
 arch/arm/mach-imx/include/mach/iim.h | 4 ----
 3 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index ce2bbaf..bb806d7 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -31,8 +31,6 @@
 
 #define DRIVERNAME	"imx_iim"
 
-static unsigned long mac_addr_base;
-
 static int iim_write_enable;
 static int iim_sense_enable;
 
@@ -227,15 +225,11 @@ static int imx_iim_add_bank(struct device_d *dev, void __iomem *base, int num)
 
 static int imx_iim_probe(struct device_d *dev)
 {
-	struct imx_iim_platform_data *pdata = dev->platform_data;
 	int i;
 	void __iomem *base;
 
 	base = dev_request_mem_region(dev, 0);
 
-	if (pdata)
-		mac_addr_base = pdata->mac_addr_base;
-
 	for (i = 0; i < 8; i++) {
 		imx_iim_add_bank(dev, base, i);
 	}
diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 5011918..63e91a5 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -53,16 +53,12 @@ u64 imx_uid(void)
 	return uid;
 }
 
-static struct imx_iim_platform_data imx25_iim_pdata = {
-	.mac_addr_base	= IIM_MAC_ADDR,
-};
-
 static int imx25_init(void)
 {
 	imx25_boot_save_loc((void *)MX25_CCM_BASE_ADDR);
 
 	add_generic_device("imx_iim", 0, NULL, MX25_IIM_BASE_ADDR, SZ_4K,
-			IORESOURCE_MEM, &imx25_iim_pdata);
+			IORESOURCE_MEM, NULL);
 
 	add_generic_device("imx-iomuxv3", 0, NULL, MX25_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 	add_generic_device("imx25-ccm", 0, NULL, MX25_CCM_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
index 713f0de..1d28149 100644
--- a/arch/arm/mach-imx/include/mach/iim.h
+++ b/arch/arm/mach-imx/include/mach/iim.h
@@ -38,10 +38,6 @@
 #define IIM_SCS2	0x0034
 #define IIM_SCS3	0x0038
 
-struct imx_iim_platform_data {
-	unsigned long	mac_addr_base;
-};
-
 #ifdef CONFIG_IMX_IIM
 int imx_iim_read(unsigned int bank, int offset, void *buf, int count);
 #else
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
