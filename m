Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtFb-00024E-Eg
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 07:43:41 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Oct 2020 09:43:33 +0200
Message-Id: <20201001074337.23430-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/5] treewide: fix unterminated of_device_id[] reported by
 Coccinelle
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

driver_d::of_compatible outght to point at a NULL-terminated array.
Fix instances where this is not the case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/socfpga.c       | 1 +
 drivers/firmware/zynqmp-fpga.c   | 1 +
 drivers/serial/serial_clps711x.c | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 6d11da32a5f7..234fb2d0945f 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -471,6 +471,7 @@ static struct of_device_id fpgamgr_id_table[] = {
 	{
 		.compatible = "altr,socfpga-fpga-mgr",
 	},
+	{ /* sentinel */ }
 };
 
 static struct driver_d fpgamgr_driver = {
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index e02667355f82..ab70d99933b6 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -403,6 +403,7 @@ static struct of_device_id zynqmpp_fpga_id_table[] = {
 	{
 		.compatible = "xlnx,zynqmp-pcap-fpga",
 	},
+	{ /* sentinel */ }
 };
 
 static struct driver_d zynqmp_fpga_driver = {
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 7a7d595dff93..294c88b92fdd 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -184,6 +184,7 @@ out_err:
 
 static struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
 	{ .compatible = "cirrus,ep7209-uart", },
+	{ /* sentinel */ }
 };
 
 static struct driver_d clps711x_driver = {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
