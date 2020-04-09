Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oln040092064022.outbound.protection.outlook.com
 ([40.92.64.22] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYNC-00073h-Nl
 for barebox@lists.infradead.org; Thu, 09 Apr 2020 14:41:44 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 9 Apr 2020 14:41:40 +0000
Message-ID: <DB7PR02MB43326610A7F9795CB53F7185ABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
Content-Language: de-DE
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
Subject: [PATCH v2 5/7] added-fpga-clock-control-and-pcap-clock-control
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Added the configuration for FPGA an PCAP clock control

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 6f05d934c..b8001fcf6 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -276,6 +276,15 @@ static void avnet_zedboard_ps7_init(void)

 	writel(0x00000001, 0xf8000B00);

+	/* FPGA Clock Control */
+	writel(0x00101400, 0xf8000170);
+	writel(0x00101400, 0xf8000180);
+	writel(0x00101400, 0xf8000190);
+	writel(0x00101400, 0xf80001a0);
+
+	/* PCAP Clock Control */
+	writel(0x00000501, 0xf8000168);
+
 	/* lock up. secure, secure */
 	writel(0x0000767B, ZYNQ_SLCR_LOCK);
 }
--
2.17.1
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
