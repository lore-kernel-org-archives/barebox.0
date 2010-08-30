Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Opyz2-0007hq-Om
	for barebox@lists.infradead.org; Mon, 30 Aug 2010 07:40:50 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Aug 2010 09:40:20 +0200
Message-Id: <1283154020-9650-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1283141106-21671-2-git-send-email-plagnioj@jcrosoft.com>
References: <1283141106-21671-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2 v2] stm8815: fix the uart device clock match
To: barebox@lists.infradead.org

that use the device name + id to found it's clock
to use the right match as we fix the dev_name macro

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-nomadik/8815.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 8598f14..e79c3a2 100644
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
+		nmdk_clk_create(&st8815_clk_48, dev_name(uart0_serial_device));
 		break;
 	case 1:
-		nmdk_clk_create(&st8815_clk_48, uart1_serial_device.name);
 		register_device(&uart1_serial_device);
+		nmdk_clk_create(&st8815_clk_48, dev_name(uart0_serial_device));
 		break;
 	}
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
