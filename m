Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg4z-0005uA-NY
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:46:23 +0000
Received: by mail-pf0-x243.google.com with SMTP id j20-v6so4085494pff.10
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:46:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:17 -0700
Message-Id: <20180526204451.16530-15-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 14/48] ARM: i.MX: ocotp: Add i.MX8MQ support
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |  2 +-
 arch/arm/mach-imx/ocotp.c | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 85143bd26..020b6fa05 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -736,7 +736,7 @@ config IMX_IIM_FUSE_BLOW
 
 config IMX_OCOTP
 	tristate "i.MX6 On Chip OTP controller"
-	depends on ARCH_IMX6 || ARCH_VF610
+	depends on ARCH_IMX6 || ARCH_VF610 || ARCH_IMX8MQ
 	depends on OFDEVICE
 	help
 	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 99b365aad..09f8cf4ff 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -584,6 +584,13 @@ static struct imx_ocotp_data vf610_ocotp_data = {
 	.mac_offsets = { MAC_OFFSET_0, MAC_OFFSET_1 },
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
@@ -597,6 +604,9 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
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
