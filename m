Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrAWC-0008Kk-Ng
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 14:12:00 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 16:10:18 +0200
Message-Id: <1283436624-29567-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902141001.GA28968@game.jcrosoft.org>
References: <20100902141001.GA28968@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/9] stm8815: fix the uart device clock match
To: barebox@lists.infradead.org

that use the device name + id to found it's clock
to use the right match as we fix the dev_name macro

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-nomadik/8815.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 8598f14..faeded4 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -50,12 +50,14 @@ void st8815_add_device_sdram(u32 size)
 }
 
 static struct device_d uart0_serial_device = {
+	.id = 0,
 	.name = "uart-pl011",
 	.map_base = NOMADIK_UART0_BASE,
 	.size = 4096,
 };
 
 static struct device_d uart1_serial_device = {
+	.id = 1,
 	.name = "uart-pl011",
 	.map_base = NOMADIK_UART1_BASE,
 	.size = 4096,
@@ -65,12 +67,12 @@ void st8815_register_uart(unsigned id)
 {
 	switch (id) {
 	case 0:
-		nmdk_clk_create(&st8815_clk_48, uart0_serial_device.name);
 		register_device(&uart0_serial_device);
+		nmdk_clk_create(&st8815_clk_48, dev_name(&uart0_serial_device));
 		break;
 	case 1:
-		nmdk_clk_create(&st8815_clk_48, uart1_serial_device.name);
 		register_device(&uart1_serial_device);
+		nmdk_clk_create(&st8815_clk_48, dev_name(&uart0_serial_device));
 		break;
 	}
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
