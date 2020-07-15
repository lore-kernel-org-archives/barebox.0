Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvaP2-0006sn-0I
 for barebox@lists.infradead.org; Wed, 15 Jul 2020 05:56:25 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 15 Jul 2020 07:56:05 +0200
Message-Id: <20200715055608.20993-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20200715055608.20993-1-r.czerwinski@pengutronix.de>
References: <20200715055608.20993-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/5] nvmem: ocotp: retrieve set_timing from structure
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

i.MX7S/D use a different timing setup, prepare for a new different
timing function.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 34e33dee82..3f475e5b1f 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -86,11 +86,14 @@ enum imx_ocotp_format_mac_direction {
 	OCOTP_MAC_TO_HW,
 };
 
+struct ocotp_priv;
+
 struct imx_ocotp_data {
 	int num_regs;
 	u32 (*addr_to_offset)(u32 addr);
 	void (*format_mac)(u8 *dst, const u8 *src,
 			   enum imx_ocotp_format_mac_direction dir);
+	int (*set_timing)(struct ocotp_priv *priv);
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
 };
@@ -183,7 +186,7 @@ static int imx6_ocotp_prepare(struct ocotp_priv *priv)
 {
 	int ret;
 
-	ret = imx6_ocotp_set_timing(priv);
+	ret = priv->data->set_timing(priv);
 	if (ret)
 		return ret;
 
@@ -694,6 +697,7 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
 	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
@@ -702,6 +706,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
 	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
 };
 
 static struct imx_ocotp_data imx6ul_ocotp_data = {
@@ -710,6 +715,7 @@ static struct imx_ocotp_data imx6ul_ocotp_data = {
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
 	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
 };
 
 static struct imx_ocotp_data imx6ull_ocotp_data = {
@@ -718,6 +724,7 @@ static struct imx_ocotp_data imx6ull_ocotp_data = {
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, IMX6UL_MAC_OFFSET_1 },
 	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
@@ -726,6 +733,7 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, MAC_OFFSET_1 },
 	.format_mac = vf610_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
 };
 
 static struct imx_ocotp_data imx8mq_ocotp_data = {
@@ -734,6 +742,7 @@ static struct imx_ocotp_data imx8mq_ocotp_data = {
 	.mac_offsets_num = 1,
 	.mac_offsets = { 0x90 },
 	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
