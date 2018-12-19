Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZcVN-0008Ch-J1
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 14:07:23 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Wed, 19 Dec 2018 15:07:03 +0100
Message-Id: <1545228423-7461-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH] nvmem: ocotp: Fix writing of second mac address fuses on
 imx6ul
To: barebox@lists.infradead.org

Commit 19a32c0f6bf0 ("nvmem: ocotp: Add support for second mac address
fuses on imx6ul") added support for correctly reading the second MAC
address from fuses of the i.MX 6UL/ULL but not for writing. So also fit
writing of the second MAC address fuses to the correct method.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 drivers/nvmem/ocotp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index e0cf35f0b73c..d904bd08f0c5 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -446,9 +446,18 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 {
 	char buf[MAC_BYTES];
 	struct ocotp_priv_ethaddr *ethaddr = priv;
+	int ret;
 
-	ethaddr->data->format_mac(buf, ethaddr->value,
-				  OCOTP_MAC_TO_HW);
+	ret = regmap_bulk_read(ethaddr->map, ethaddr->offset, buf, MAC_BYTES);
+	if (ret < 0)
+		return ret;
+
+	if (ethaddr->offset != IMX6UL_MAC_OFFSET_1)
+		ethaddr->data->format_mac(buf, ethaddr->value,
+					  OCOTP_MAC_TO_HW);
+	else
+		ethaddr->data->format_mac(buf + 2, ethaddr->value,
+					  OCOTP_MAC_TO_HW);
 
 	return regmap_bulk_write(ethaddr->map, ethaddr->offset,
 				 buf, MAC_BYTES);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
