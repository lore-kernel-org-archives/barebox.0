Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBgc-00077W-IO
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:21:59 +0000
Received: by mail-lb0-f179.google.com with SMTP id z11so5386246lbi.10
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:21:35 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:10 +0400
Message-Id: <1403558473-26199-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/7] MIPS: dts: qemu-malta.dts: enable CBUS FPGA I2C gpio
 driver
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/qemu-malta.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 67fe591..204007d 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -25,6 +25,13 @@
 		clock-frequency = <1843200>;
 	};
 
+	gpio: gpio@1f000b00 {
+		compatible = "mti,malta-fpga-i2c-gpio";
+		gpio-controller;
+		reg = <0xbf000b00 0x20>;
+		#gpio-cells = <2>;
+	};
+
 	uart2: serial@bf000900 {
 		compatible = "ns16550a";
 		reg = <0xbf000900 0x40>;
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
