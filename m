Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WlFQ8-0007t8-Rn
 for barebox@lists.infradead.org; Fri, 16 May 2014 10:31:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 May 2014 12:30:58 +0200
Message-Id: <1400236258-17924-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400236258-17924-1-git-send-email-s.hauer@pengutronix.de>
References: <1400236258-17924-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/11] ARM: i.MX: iim: provide a MAC address convenience
 variable
To: barebox@lists.infradead.org

Allow to read/write the registered MAC addresses in the iim
module directly via a device parameter.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 60 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 57 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index e87f5bc..294f41c 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -257,18 +257,69 @@ static int imx_iim_add_bank(struct iim_priv *iim, int num)
 
 #if IS_ENABLED(CONFIG_OFDEVICE)
 
+#define MAC_BYTES	6
+
+struct imx_iim_mac {
+	struct iim_bank *bank;
+	int offset;
+	u8 ethaddr[MAC_BYTES];
+};
+
+static int imx_iim_get_mac(struct param_d *param, void *priv)
+{
+	struct imx_iim_mac *iimmac = priv;
+	struct iim_bank *bank = iimmac->bank;
+	int ret;
+
+	ret = imx_iim_cdev_read(&bank->cdev, iimmac->ethaddr, MAC_BYTES, iimmac->offset, 0);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int imx_iim_set_mac(struct param_d *param, void *priv)
+{
+	struct imx_iim_mac *iimmac = priv;
+	struct iim_bank *bank = iimmac->bank;
+	int ret;
+
+	ret = imx_iim_cdev_write(&bank->cdev, iimmac->ethaddr, MAC_BYTES, iimmac->offset, 0);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static void imx_iim_add_mac_param(struct iim_priv *iim, int macnum, int bank, int offset)
+{
+	struct imx_iim_mac *iimmac;
+	char *name;
+
+	iimmac = xzalloc(sizeof(*iimmac));
+	iimmac->offset = offset;
+	iimmac->bank = iim->bank[bank];
+
+	name = asprintf("ethaddr%d", macnum);
+
+	dev_add_param_mac(&iim->dev, name, imx_iim_set_mac,
+			imx_iim_get_mac, iimmac->ethaddr, iimmac);
+
+	free(name);
+}
+
 /*
  * a single MAC address reference has the form
  * <&phandle iim-bank-no offset>, so three cells
  */
 #define MAC_ADDRESS_PROPLEN	(3 * sizeof(__be32))
 
-static void imx_iim_init_dt(struct device_d *dev)
+static void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
 {
 	char mac[6];
 	const __be32 *prop;
 	struct device_node *node = dev->device_node;
-	int len, ret;
+	int len, ret, macnum = 0;
 
 	if (!node)
 		return;
@@ -294,11 +345,14 @@ static void imx_iim_init_dt(struct device_d *dev)
 			dev_err(dev, "cannot read: %s\n", strerror(-ret));
 		}
 
+		imx_iim_add_mac_param(iim, macnum, bank, offset);
+		macnum++;
+
 		len -= MAC_ADDRESS_PROPLEN;
 	}
 }
 #else
-static inline void imx_iim_init_dt(struct device_d *dev)
+static inline void imx_iim_init_dt(struct device_d *dev, struct iim_priv *iim)
 {
 }
 #endif
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
