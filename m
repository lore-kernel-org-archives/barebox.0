Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBgc-00078e-9u
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:21:58 +0000
Received: by mail-lb0-f180.google.com with SMTP id w7so5241071lbi.25
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:21:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:12 +0400
Message-Id: <1403558473-26199-7-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 6/7] MIPS: dts: qemu-malta.dts: use i2c-gpio for accessing
 CBUS FPGA I2C bus
To: barebox@lists.infradead.org

Also we can enable m24c02 eeprom chip in dts-file e.g.

    &i2c0 {
            status = "okay";

            eeprom: m24c02@50 {
                    compatible = "spd";
                    reg = <0x50>;
            };
    };

Alas! qemu mips malta spd m24c02 eeprom chip emulation is not perfect:
the block read operation does not work properly.

Here is an example.

If we read eeprom content byte-by-byte then there is no problem:

    barebox:/ for i in 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f ;
    > do i2c_read -b 0 -a 0x50 -r $i -c 1 ; done
    0x01
    0x75
    0x54
    0x00
    0x82
    0x08
    0x00
    0x01

Compare this output with content of qemu.git/hw/mips/mips_malta.c:

    static eeprom24c0x_t spd_eeprom = {
        .contents = {
            ...
            /* 00000008: */ 0x01,0x75,0x54,0x00,0x82,0x08,0x00,0x01,

But if we read several bytes at once the we have data corruption:

    barebox:/ i2c_read -b 0 -a 0x50 -r 0x8 -c 8
    0x01 0xff 0xff 0xff 0xff 0xff 0xff 0xff

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/qemu-malta.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
index 204007d..cc1c960 100644
--- a/arch/mips/dts/qemu-malta.dts
+++ b/arch/mips/dts/qemu-malta.dts
@@ -32,6 +32,18 @@
 		#gpio-cells = <2>;
 	};
 
+	i2c0: i2c0 {
+		compatible = "i2c-gpio";
+		gpios = <&gpio 0 0 /* sda */
+			&gpio 1 0 /* scl */
+			>;
+		i2c-gpio,sda-open-drain;
+		i2c-gpio,scl-open-drain;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	uart2: serial@bf000900 {
 		compatible = "ns16550a";
 		reg = <0xbf000900 0x40>;
@@ -58,3 +70,7 @@
 		};
 	};
 };
+
+&i2c0 {
+	status = "okay";
+};
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
