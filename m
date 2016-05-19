Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3XXl-0006LJ-DX
 for barebox@lists.infradead.org; Thu, 19 May 2016 23:39:54 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 19 May 2016 23:39:32 +0000
Message-ID: <1463701176.15779.33.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <8B135D542E4A1246934716CB6B3A6E66@kymetacorp.com>
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
Subject: [PATCH 2/2] rtc: ds1307: Add support for configuring external clock
 pin
To: barebox <barebox@lists.infradead.org>

The DS1307 has a square wave output pin, which can be used to output a
clock signal from the DS1307.  Additionally, the DS1308 supports
configuring this pin as an input from an external clock source to
which it should sync itself.

Add support with OF device tree properties to configure these
settings.  Supported features are using the clock pin as an output, an
input, the rate of the pin, and if it should be enabled on battery
backup power.

The driver does not check that the selected features are supported by
the clock chip being used.  It is the designer's responsibility to
create a valid device tree node; the bootloader does not attempt to be
a device tree validator.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 .../devicetree/bindings/rtc/dallas,ds1307.rst      | 33 ++++++++++++++++
 drivers/rtc/rtc-ds1307.c                           | 45 +++++++++++++++++++++-
 2 files changed, 77 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/dallas,ds1307.rst

diff --git a/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst b/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
new file mode 100644
index 0000000..52787a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/dallas,ds1307.rst
@@ -0,0 +1,33 @@
+Dallas DS1307 I2C Serial Real-Time Clock
+========================================
+
+Required properties:
+* ``compatible``: ``dallas,ds1307``, ``dallas,ds1308``, ``dallas,ds1338``
+	"maxim" can be used in place of "dallas"
+
+* ``reg``: I2C address for chip
+
+Optional properties:
+* ``ext-clock-input``: Enable external clock input pin
+* ``ext-clock-output``:  Enable square wave output.  The above two
+  properties are mutually exclusive
+* ``ext-clock-bb``: Enable external clock on battery power
+* ``ext-clock-rate``:  Expected/Generated rate on external clock pin
+  in Hz.  Allowable values are 1, 50, 60, 4096, 8192, and 32768 Hz. 
+  Not all values are valid for all configurations.
+
+The default is ext-clock-input, ext-clock-output, and ext-clock-bb
+disabled and ext-clock-rate of 1 Hz.
+
+Example::
+	ds1307: rtc@68 {
+		compatible = "dallas,ds1307";
+		reg = <0x68>;
+	};
+
+	ds1308: rtc@68 {
+		compatible = "maxim,ds1308";
+		reg = <0x68>;
+		ext-clock-output;
+		ext-clock-rate = <32768>;
+	};
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index ca630ea..73d88ba 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -59,10 +59,13 @@ enum ds_type {
  * start at 7, and they differ a LOT. Only control and status matter for
  * basic RTC date and time functionality; be careful using them.
  */
-#define DS1307_REG_CONTROL	0x07		/* or ds1338 */
+#define DS1307_REG_CONTROL	0x07		/* or ds1338, 1308 */
 #	define DS1307_BIT_OUT		0x80
+#	define DS1308_BIT_ECLK		0x40
 #	define DS1338_BIT_OSF		0x20
 #	define DS1307_BIT_SQWE		0x10
+#	define DS1308_BIT_LOS		0x08
+#	define DS1308_BIT_BBCLK		0x04
 #	define DS1307_BIT_RS1		0x02
 #	define DS1307_BIT_RS0		0x01
 #define DS1337_REG_CONTROL	0x0e
@@ -288,6 +291,7 @@ static int ds1307_probe(struct device_d *dev)
 	int			tmp;
 	unsigned char		*buf;
 	unsigned long driver_data;
+	const struct device_node *np = dev->device_node;
 
 	ds1307 = xzalloc(sizeof(struct ds1307));
 
@@ -377,6 +381,45 @@ read_rtc:
 		goto exit;
 	}
 
+	/* Configure clock using OF data if available */
+	if (IS_ENABLED(CONFIG_OFDEVICE) && np) {
+		u8 control = ds1307->regs[DS1307_REG_CONTROL];
+		u32 rate = 0;
+
+		if (of_property_read_bool(np, "ext-clock-input"))
+			control |= DS1308_BIT_ECLK;
+		else
+			control &= ~DS1308_BIT_ECLK;
+
+		if (of_property_read_bool(np, "ext-clock-output"))
+			control |= DS1307_BIT_SQWE;
+		else
+			control &= ~DS1307_BIT_SQWE;
+
+		if (of_property_read_bool(np, "ext-clock-bb"))
+			control |= DS1308_BIT_BBCLK;
+		else
+			control &= ~DS1308_BIT_BBCLK;
+
+		control &= ~(DS1307_BIT_RS1 | DS1307_BIT_RS0);
+		of_property_read_u32(np, "ext-clock-rate", &rate);
+		switch (rate) {
+			default:
+			case 1:     control |= 0; break;
+			case 50:    control |= 1; break;
+			case 60:    control |= 2; break;
+			case 4096:  control |= 1; break;
+			case 8192:  control |= 2; break;
+			case 32768: control |= 3; break;
+		}
+		dev_dbg(&client->dev, "control reg: 0x%02x\n", control);
+
+		if (ds1307->regs[DS1307_REG_CONTROL] != control) {
+			i2c_smbus_write_byte_data(client, DS1307_REG_CONTROL, control);
+			ds1307->regs[DS1307_REG_CONTROL]  = control;
+		}
+	}
+
 	/*
 	 * minimal sanity checking; some chips (like DS1340) don't
 	 * specify the extra bits as must-be-zero, but there are
-- 
2.7.0.25.gfc10eb5.dirty


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
