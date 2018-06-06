Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdQy-0000e8-3q
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:44 +0000
Received: by mail-pl0-x243.google.com with SMTP id 30-v6so4351165pld.13
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:07 -0700
Message-Id: <20180606184431.10348-15-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 14/38] ARM: i.MX: ocotp: Add i.MX8MQ support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[andrew.smirnov@gmail.com: Rebased to account for move to nvmem]
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/Kconfig |  2 +-
 drivers/nvmem/ocotp.c | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 53086d1aa..a3797b4aa 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -18,7 +18,7 @@ config NVMEM_SNVS_LPGPR
 
 config IMX_OCOTP
 	tristate "i.MX6 On Chip OTP controller"
-	depends on ARCH_IMX6 || ARCH_VF610
+	depends on ARCH_IMX6 || ARCH_VF610 || ARCH_IMX8MQ
 	depends on OFDEVICE
 	help
 	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 86d0b9cd0..f3af8620e 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -647,6 +647,13 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.format_mac = vf610_ocotp_format_mac,
 };
 
+static struct imx_ocotp_data imx8mq_ocotp_data = {
+	.num_regs = 2048,
+	.addr_to_offset = imx6sl_addr_to_offset,
+	.mac_offsets_num = 1,
+	.mac_offsets = { 0x90 },
+};
+
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	{
 		.compatible = "fsl,imx6q-ocotp",
@@ -660,6 +667,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx6ul-ocotp",
 		.data = &imx6q_ocotp_data,
+	}, {
+		.compatible = "fsl,imx8mq-ocotp",
+		.data = &imx8mq_ocotp_data,
 	}, {
 		.compatible = "fsl,vf610-ocotp",
 		.data = &vf610_ocotp_data,
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
