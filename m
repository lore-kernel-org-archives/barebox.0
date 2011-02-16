Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pplt4-0001nR-5o
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 18:14:11 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Feb 2011 19:13:34 +0100
Message-Id: <1297880025-7184-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
References: <1297880025-7184-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 09/20] mini2440: Add some useful documentation
To: barebox@lists.infradead.org
Cc: Juergen Beisert <juergen@kreuzholzen.de>

From: Juergen Beisert <juergen@kreuzholzen.de>

Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
---
 arch/arm/boards/mini2440/mini2440.c |  157 +++++++++++++++++++++++++++++++++++
 1 files changed, 157 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index e22fbd0..17496a4 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -64,6 +64,10 @@ static struct device_d nand_dev = {
 
 /*
  * dm9000 network controller onboard
+ * Connected to CS line 4 and interrupt line EINT7,
+ * data width is 16 bit
+ * Area 1: Offset 0x300...0x303
+ * Area 2: Offset 0x304...0x307
  */
 static struct dm9000_platform_data dm9000_data = {
 	.iobase   = CS4_BASE + 0x300,
@@ -139,3 +143,156 @@ static int mini2440_console_init(void)
 }
 
 console_initcall(mini2440_console_init);
+
+/** @page mini2440 FriendlyARM's mini2440
+
+This system is based on a Samsung S3C2440 CPU. The card is shipped with:
+
+- S3C2440\@400 MHz or 533 MHz (ARM920T/ARMv4T)
+- 12 MHz crystal reference
+- 32.768 kHz crystal reference
+- SDRAM 64 MiB (one bank only)
+   - HY57V561620 (two devices for 64 MiB to form a 32 bit bus)
+     - 4M x 16bit x 4 Banks Mobile SDRAM
+     - 8192 refresh cycles / 64 ms
+     - CL2\@100 MHz
+     - 133 MHz max
+     - collumn address size is 9 bits
+     - row address size is 13 bits
+   - MT48LC16M16 (two devices for 64 MiB to form a 32 bit bus)
+     - 4M x 16bit x 4 Banks Mobile SDRAM
+     - commercial & industrial type
+     - 8192 refresh cycles / 64 ms
+     - CL2\@100 MHz
+     - 133 MHz max
+     - collumn address size is 9 bits
+     - row address size is 13 bits
+- NAND Flash 128MiB...1GiB
+   - K9Fxx08
+- NOR Flash (up to 22 address lines available)
+   - AM29LV160DB, 2 MiB
+   - SST39VF1601, 2 MiB
+   - 16 bit data bus
+- SD card interface, 3.3V (fixed voltage)
+- Host and device USB interface, USB1.1 compliant
+- UDA1341TS Audio
+- DM9000 Ethernet interface
+  - uses CS#4
+  - uses EINT7
+  - 16 bit data bus
+- I2C interface, 100 KHz and 400 KHz
+  - EEPROM
+    - ST M24C08
+    - address 0x50
+- Speaker on GPB0 ("low" = inactive)
+- LCD interface
+- Touch Screen interface
+- Camera interface
+- I2S interface
+- AC97 Audio-CODEC interface
+- three serial RS232 interfaces (one with level converter)
+- SPI interface
+- JTAG interface
+
+How to get the binary image:
+
+Using the default configuration:
+
+@code
+make ARCH=arm mini2440_defconfig
+@endcode
+
+Build the binary image:
+
+@code
+make ARCH=arm CROSS_COMPILE=armv4compiler
+@endcode
+
+@note replace the armv4compiler with your ARM v4 cross compiler.
+
+How to bring in \a barebox ?
+
+First run it as a second stage bootloader. There are two known working ways to
+do so:
+
+One way is to use the "device firmware update" feature of the 'supervivi'.
+ - connect a terminal application to the mini2440's serial connector
+ - switch S2 to 'boot from NOR' to boot into 'supervivi'
+ - connect your host to the usb device connector on the mini2440
+ - switch on your mini2440
+ - in 'supervivi' type q (command line) then:
+@code
+load ram 0x31000000 \<barebox-size\> u
+@endcode
+ - use a tool for DFU update (for example from openkomo) to transfer the 'barebox.bin' binary
+ - then in 'supervivi' just run
+@code
+go 0x31000000
+@endcode
+
+A second way is to use any kind of JTAG adapter. For this case I'm using the
+'JTAKkey tiny' from Amontec and OpenOCD. First you need an adapter for this
+kind of Dongle as it uses a 20 pin connector with 2.54 mm grid, and the
+mini2440 uses a 10 pin connector with 2 mm grid.
+
+@code
+             Amontec JTAGkey tiny               mini2440
+           -------------------------------------------------------
+              VREF  1   2  n.c.             VREF  1   2  VREF
+            TRST_N  3   4  GND            TRST_N  3   4  SRST_N
+               TDI  5   6  GND               TDI  5   6  TDO
+               TMS  7   8  GND               TMS  7   8  GND
+               TCK  9  10  GND               TCK  9  10  GND
+              n.c. 11  12  GND
+               TDO 13  14  GND
+            SRST_N 15  16  GND
+              n.c. 17  18  GND
+              n.c. 19  20  GND
+@endcode
+
+Create a simple board description file. I did it this way:
+
+@code
+source [find interface/jtagkey-tiny.cfg]
+source [find target/samsung_s3c2440.cfg]
+
+adapter_khz 12000
+@endcode
+
+And then the following steps:
+ - connect a terminal application to the mini2440's serial connector
+ - connect the mini2440 to a working network
+ - switch S2 to boot from NOR to boot into 'supervivi'
+ - switch on your mini2440
+ - run the OpenOCD daemon configured with the file shown above
+ - connect to the OpenOCD daemon via 'telnet'.
+ - run the following commands to download @a barebox into your target
+@code
+> halt
+> load_image \<path to the 'barebox.bin'\> 0x31000000 bin
+> resume 0x31000000
+@endcode
+
+Now @a barebox is starting from an already initialized CPU and SDRAM (done by
+'supervivi').
+
+Change to your terminal console and configure the network first. Adapt the
+following settings to your network:
+@code
+eth0.ipaddr=192.168.1.240
+eth0.netmask=255.255.255.0
+eth0.gateway=192.168.23.2
+eth0.serverip=192.168.1.7
+eth0.ethaddr=00:04:f3:00:06:35
+@endcode
+
+A 'ping' to your TFTP server should bring a "...is alive" message now.
+
+We are ready now to program @a barebox into the NAND flash:
+
+@code
+erase /dev/nand0.barebox.bb
+tftp barebox.bin /dev/nand0.barebox.bb
+@endcode
+
+*/
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
