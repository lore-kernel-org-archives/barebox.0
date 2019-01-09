Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82h-00041N-12
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:13:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id c123so3245004pfb.0
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:46 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:12:02 -0800
Message-Id: <20190109071210.18896-14-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/21] reset: imx7: Fix always writing bits as 0
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 26fce0557fa639fb7bbc33e31a57cff7df25c3a0

  Right now the only user of reset-imx7 is pci-imx6 and the
  reset_control_assert and deassert calls on pciephy_reset don't toggle
  the PCIEPHY_BTN and PCIEPHY_G_RST bits as expected. Fix this by writing
  1 or 0 respectively.

  The reference manual is not very clear regarding SRC_PCIEPHY_RCR but for
  other registers like MIPIPHY and HSICPHY the bits are explicitly
  documented as "1 means assert, 0 means deassert".

  The values are still reversed for IMX7_RESET_PCIE_CTRL_APPS_EN.

  Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/reset/reset-imx7.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
index c8b7f86d4..6dc5de16a 100644
--- a/drivers/reset/reset-imx7.c
+++ b/drivers/reset/reset-imx7.c
@@ -82,7 +82,7 @@ static int imx7_reset_set(struct reset_controller_dev *rcdev,
 {
 	struct imx7_src *imx7src = to_imx7_src(rcdev);
 	const struct imx7_src_signal *signal = &imx7_src_signals[id];
-	unsigned int value = 0;
+	unsigned int value = assert ? signal->bit : 0;;
 
 	switch (id) {
 	case IMX7_RESET_PCIEPHY:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
