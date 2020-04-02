Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-am6eur05olkn2056.outbound.protection.outlook.com
 ([40.92.91.56] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJv6b-00005H-Ih
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 08:21:43 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 2 Apr 2020 08:21:38 +0000
Message-ID: <DB7PR02MB4332B4E518B456DF86F01A6DABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: [PATCH 5/7] Zedboard added FPGA and PCAP clock control
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Added the configuration for FPGA an PCAP clock control

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
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
