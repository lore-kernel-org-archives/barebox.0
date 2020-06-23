Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnima-0003DJ-4U
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:16:05 +0200
Message-Id: <20200623131606.16316-20-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/20] ARM: i.MX8MP: Add ocotp support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 34e33dee82..62f510785b 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -728,6 +728,14 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.format_mac = vf610_ocotp_format_mac,
 };
 
+static struct imx_ocotp_data imx8mp_ocotp_data = {
+	.num_regs = 1024,
+	.addr_to_offset = imx6sl_addr_to_offset,
+	.mac_offsets_num = 2,
+	.mac_offsets = { 0x90, 0x96 },
+	.format_mac = imx_ocotp_format_mac,
+};
+
 static struct imx_ocotp_data imx8mq_ocotp_data = {
 	.num_regs = 2048,
 	.addr_to_offset = imx6sl_addr_to_offset,
@@ -752,6 +760,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6ull-ocotp",
 		.data = &imx6ull_ocotp_data,
+	}, {
+		.compatible = "fsl,imx8mp-ocotp",
+		.data = &imx8mp_ocotp_data,
 	}, {
 		.compatible = "fsl,imx8mq-ocotp",
 		.data = &imx8mq_ocotp_data,
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
