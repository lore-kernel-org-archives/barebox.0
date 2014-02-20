Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGU1Y-0007W5-6m
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 13:50:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Feb 2014 14:50:23 +0100
Message-Id: <1392904223-2170-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: Make mxc_iomux_v3_setup_multiple_pads argument
 const
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/iomux-v3.h | 2 +-
 drivers/pinctrl/imx-iomux-v3.c            | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
index 219786b..b8cc9af 100644
--- a/arch/arm/mach-imx/include/mach/iomux-v3.h
+++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
@@ -113,6 +113,6 @@ int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad);
  * setups mutliple pads
  * convenient way to call the above function with tables
  */
-int mxc_iomux_v3_setup_multiple_pads(iomux_v3_cfg_t *pad_list, unsigned count);
+int mxc_iomux_v3_setup_multiple_pads(const iomux_v3_cfg_t *pad_list, unsigned count);
 
 #endif /* __MACH_IOMUX_V3_H__*/
diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 7fcbb98..1319690 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -76,9 +76,9 @@ int mxc_iomux_v3_setup_pad(iomux_v3_cfg_t pad)
 EXPORT_SYMBOL(mxc_iomux_v3_setup_pad);
 
 
-int mxc_iomux_v3_setup_multiple_pads(iomux_v3_cfg_t *pad_list, unsigned count)
+int mxc_iomux_v3_setup_multiple_pads(const iomux_v3_cfg_t *pad_list, unsigned count)
 {
-	iomux_v3_cfg_t *p = pad_list;
+	const iomux_v3_cfg_t *p = pad_list;
 	int i;
 	int ret;
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
