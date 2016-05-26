Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.179.251])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b5zd0-0003Mg-Oc
 for barebox@lists.infradead.org; Thu, 26 May 2016 18:03:27 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 26 May 2016 21:02:59 +0300
Message-Id: <1464285779-18920-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] pinctrl: iomux-v3: Cleaning SION patch before applying
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/pinctrl/imx-iomux-v3.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/imx-iomux-v3.c b/drivers/pinctrl/imx-iomux-v3.c
index 66443b7..92fac18 100644
--- a/drivers/pinctrl/imx-iomux-v3.c
+++ b/drivers/pinctrl/imx-iomux-v3.c
@@ -132,8 +132,10 @@ static int imx_iomux_v3_set_state(struct pinctrl_device *pdev, struct device_nod
 		u32 input_val = be32_to_cpu(*list++);
 		u32 conf_val = be32_to_cpu(*list++);
 
-		if (conf_val & IMX_PAD_SION)
+		if (conf_val & IMX_PAD_SION) {
 			mux_val |= IOMUXC_CONFIG_SION;
+			conf_val &= ~IMX_PAD_SION;
+		}
 
 		if (conf_val & IMX_DT_NO_PAD_CTL)
 			conf_reg = 0;
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
