Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exqpk-0000gW-B4
 for barebox@lists.infradead.org; Mon, 19 Mar 2018 09:12:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Mar 2018 10:11:46 +0100
Message-Id: <20180319091146.4112-15-s.hauer@pengutronix.de>
In-Reply-To: <20180319091146.4112-1-s.hauer@pengutronix.de>
References: <20180319091146.4112-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] ARM: i.MX: ocotp: Add i.MX8MQ support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |  2 +-
 arch/arm/mach-imx/ocotp.c | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5b430b19d6..b49bef3f27 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -744,7 +744,7 @@ config IMX_IIM_FUSE_BLOW
 
 config IMX_OCOTP
 	tristate "i.MX6 On Chip OTP controller"
-	depends on ARCH_IMX6 || ARCH_VF610
+	depends on ARCH_IMX6 || ARCH_VF610 || ARCH_IMX8MQ
 	depends on OFDEVICE
 	help
 	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 99b365aad8..09f8cf4ff6 100644
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
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
