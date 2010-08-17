Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlH6R-0003Kp-Vs
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 08:01:01 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Tue, 17 Aug 2010 11:00:44 +0300
Message-Id: <a35012ee558f1c4bc08e12f857e172d908af73dd.1282031624.git.baruch@tkos.co.il>
In-Reply-To: <20100817065258.GU27749@pengutronix.de>
References: <20100817065258.GU27749@pengutronix.de>
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
Subject: [PATCH v3] imx iim: add mac address support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

---
 arch/arm/mach-imx/iim.c              |   22 +++++++++++++++++++++-
 arch/arm/mach-imx/include/mach/iim.h |   13 +++++++++++++
 2 files changed, 34 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 73369b7..9d14d35 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -29,6 +29,8 @@
 
 #define DRIVERNAME	"imx_iim"
 
+static unsigned long mac_addr_base;
+
 static int do_fuse_sense(unsigned long reg_base, unsigned int bank,
 		unsigned int row)
 {
@@ -224,6 +226,11 @@ static int imx_iim_blow_enable_set(struct device_d *dev, struct param_d *param,
 
 static int imx_iim_probe(struct device_d *dev)
 {
+	struct imx_iim_platform_data *pdata = dev->platform_data;
+
+	if (pdata)
+		mac_addr_base = pdata->mac_addr_base;
+
 	return 0;
 }
 
@@ -288,4 +295,17 @@ static int imx_iim_init(void)
 
 	return 0;
 }
-device_initcall(imx_iim_init);
+coredevice_initcall(imx_iim_init);
+
+int imx_iim_get_mac(unsigned char *mac)
+{
+	int i;
+
+	if (mac_addr_base == 0)
+		return -EINVAL;
+
+	for (i = 0; i < 6; i++)
+		 mac[i] = readb(mac_addr_base + i*4);
+
+	return 0;
+}
diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
index 6e13547..1b290f2 100644
--- a/arch/arm/mach-imx/include/mach/iim.h
+++ b/arch/arm/mach-imx/include/mach/iim.h
@@ -39,4 +39,17 @@
 #define IIM_SCS2	0x0034
 #define IIM_SCS3	0x0038
 
+struct imx_iim_platform_data {
+	unsigned long	mac_addr_base;
+};
+
+#ifdef CONFIG_IMX_IIM
+int imx_iim_get_mac(unsigned char *mac);
+#else
+static inline int imx_iim_get_mac(unsigned char *mac)
+{
+	return -EINVAL;
+}
+#endif /* CONFIG_IMX_IIM */
+
 #endif /* __MACH_IMX_IIM_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
