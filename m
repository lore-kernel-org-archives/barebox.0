Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b2ave-0002Db-OA
 for barebox@lists.infradead.org; Tue, 17 May 2016 09:04:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 May 2016 11:04:13 +0200
Message-Id: <1463475854-30224-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1463475854-30224-1-git-send-email-s.hauer@pengutronix.de>
References: <1463475854-30224-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: i.MX: IIM: Add function to enable permanent write
To: Barebox List <barebox@lists.infradead.org>

This adds a function to enable/disable permanent write for the IIM
module so that C users no longer have to fiddle with device parameters.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/iim.c              | 10 ++++++++++
 arch/arm/mach-imx/include/mach/iim.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 3aba02f..2e25f69 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -122,6 +122,16 @@ int imx_iim_write_field(uint32_t field, unsigned value)
 	return regmap_write(imx_iim->bank[bank]->map, byte, value);
 }
 
+int imx_iim_permanent_write(int enable)
+{
+	if (!imx_iim)
+		return -ENODEV;
+
+	imx_iim->write_enable = enable;
+
+	return 0;
+}
+
 static int imx_iim_fuse_sense(struct iim_bank *bank, unsigned int row)
 {
 	struct iim_priv *iim = bank->iim;
diff --git a/arch/arm/mach-imx/include/mach/iim.h b/arch/arm/mach-imx/include/mach/iim.h
index f63712e..2161809 100644
--- a/arch/arm/mach-imx/include/mach/iim.h
+++ b/arch/arm/mach-imx/include/mach/iim.h
@@ -99,5 +99,6 @@ static inline int imx25_iim_register_fec_ethaddr(void)
 
 int imx_iim_read_field(uint32_t field, unsigned *value);
 int imx_iim_write_field(uint32_t field, unsigned value);
+int imx_iim_permanent_write(int enable);
 
 #endif /* __MACH_IMX_IIM_H */
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
