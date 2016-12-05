Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cDufy-0005SB-Ug
 for barebox@lists.infradead.org; Mon, 05 Dec 2016 14:55:32 +0000
Received: by mail-pg0-x242.google.com with SMTP id p66so16675244pga.2
 for <barebox@lists.infradead.org>; Mon, 05 Dec 2016 06:55:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Dec 2016 06:54:32 -0800
Message-Id: <1480949684-18520-5-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
References: <1480949684-18520-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/16] i.MX: ocotp: Initialize 'sense_enable' to true on Vybrid
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Reading speed grading information (OCOTP word 0x4) only seem to work
when that data read is straigh out of a fusebox. Allow differenet SoC to
deafalut 'sense_enable' to different values and set it to true on
Vybrid.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 667555a..e9c07c2 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -79,6 +79,7 @@ struct imx_ocotp_data {
 	u32 (*addr_to_offset)(u32 addr);
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
+	bool sense_enable;
 };
 
 struct ocotp_priv {
@@ -494,6 +495,8 @@ static int imx_ocotp_probe(struct device_d *dev)
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
+	priv->sense_enable = priv->data->sense_enable;
+
 	strcpy(priv->dev.name, "ocotp");
 	priv->dev.parent = dev;
 	register_device(&priv->dev);
@@ -565,6 +568,7 @@ static struct imx_ocotp_data imx6q_ocotp_data = {
 	.addr_to_offset = imx6q_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
+	.sense_enable = false,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
@@ -572,6 +576,7 @@ static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.addr_to_offset = imx6sl_addr_to_offset,
 	.mac_offsets_num = 1,
 	.mac_offsets = { MAC_OFFSET_0 },
+	.sense_enable = false,
 };
 
 static struct imx_ocotp_data vf610_ocotp_data = {
@@ -579,6 +584,7 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.addr_to_offset = vf610_addr_to_offset,
 	.mac_offsets_num = 2,
 	.mac_offsets = { MAC_OFFSET_0, MAC_OFFSET_1 },
+	.sense_enable = true,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
