Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.rzone.de ([2a01:238:20a:202:5300::1])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6FVc-0007Rc-Ov
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 06:42:46 +0000
Received: from [192.168.1.10]
 (ALyon-754-1-1-147.w90-15.abo.wanadoo.fr [90.15.40.147])
 by smtp.strato.de (josoe mo26) (RZmta 30.12 DYNA|AUTH)
 with ESMTPA id t04eddo7S6RRV7 for <barebox@lists.infradead.org>;
 Tue, 28 Aug 2012 08:42:43 +0200 (CEST)
Message-ID: <503C6862.9090808@calao-systems.com>
Date: Tue, 28 Aug 2012 08:42:42 +0200
From: gregory hermant <gregory.hermant@calao-systems.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add documentation for the calao boards
To: barebox@lists.infradead.org


Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
---
 Documentation/boards.dox                    |    5 +++
 arch/arm/boards/qil-a9260/qil-a9260.dox     |   22 ++++++++++++++++
 arch/arm/boards/tny-a926x/tny-a9263.dox     |   33 ++++++++++++++++++++++++
 arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox |   37 +++++++++++++++++++++++++++
 arch/arm/boards/usb-a926x/usb-a9263.dox     |   30 +++++++++++++++++++++
 arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox |   33 ++++++++++++++++++++++++
 6 files changed, 160 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/qil-a9260/qil-a9260.dox
 create mode 100644 arch/arm/boards/tny-a926x/tny-a9263.dox
 create mode 100644 arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox
 create mode 100644 arch/arm/boards/usb-a926x/usb-a9263.dox
 create mode 100644 arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 5241f5b..41de836 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -38,6 +38,11 @@ ARM type:
 @li @subpage board_cupid
 @li @subpage phycard-a-l1
 @li @subpage toshiba-ac100
+@li @subpage qil-a9260
+@li @subpage tny-a9g20-lpw
+@li @subpage tny-a9263
+@li @subpage usb-a9g20-lpw
+@li @subpage usb-a9263
 
 Blackfin type:
 
diff --git a/arch/arm/boards/qil-a9260/qil-a9260.dox b/arch/arm/boards/qil-a9260/qil-a9260.dox
new file mode 100644
index 0000000..f9bbd08
--- /dev/null
+++ b/arch/arm/boards/qil-a9260/qil-a9260.dox
@@ -0,0 +1,22 @@
+/** 
+@page qil-a9260 Calao-systems QIL-A9260
+
+@section qil-a9260 The CPU module
+
+http://www.calao-systems.com
+
+This CPU module is based on an Atmel AT91SAM9260 CPU. The card is shipped with:
+
+- 64MiB or 128MiB SDRAM (3.3V)
+- 256MiB NAND type Flash Memory (3.3V)
+- 64Kib SPI EEPROM
+- RMII 10/100 ethernet PHY
+- Real Time Clock
+- micro SD socket
+
+@section mob-qil-a9xxx Supported development board
+
+Supported development board is:
+- MOB-QIL-A9xxx
+ 
+*/
diff --git a/arch/arm/boards/tny-a926x/tny-a9263.dox b/arch/arm/boards/tny-a926x/tny-a9263.dox
new file mode 100644
index 0000000..8030dc8
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/tny-a9263.dox
@@ -0,0 +1,33 @@
+/** 
+@page tny-a9263 Calao-systems TNY-A9263
+
+@section tny-a9263 The CPU module
+
+http://www.calao-systems.com
+
+This CPU module is based on an Atmel AT91SAM9263 CPU. The module is shipped with:
+
+- 64MiB SDRAM (3.3V)
+- 256MiB NAND type Flash Memory (3.3V)
+- USB device port
+- Top expansion connector for daughter boards (GPS, WIFI/BT, GPRS, 3G, ZigBee, MBUS, ...)
+- Bottom expansion connector for development boards 
+
+@section mob-tny-a9xxx-md2 Supported development board
+
+Supported development board is:
+- MOB-TNY-A9xxx-MD2
+
+@section tny-db-boards Supported daughter boards
+
+Supported daughter boards are:
+- DAB-GPI2-CXX
+- DAB-GPS
+- DAB-GPRS
+- DAB-HSDPA
+- DAB-WLAN-BT
+- DAB-ZIGBEE
+- DAB-MBUS
+- DAB-KNX-RF
+
+*/
diff --git a/arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox b/arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox
new file mode 100644
index 0000000..b030da1
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/tny-a9g20-lpw.dox
@@ -0,0 +1,37 @@
+/** 
+@page tny-a9g20-lpw Calao-systems TNY-A9G20-LPW
+
+@section tny-a9g20-lpw The CPU module
+
+http://www.calao-systems.com
+
+This CPU module is based on an Atmel AT91SAM9G20 CPU. The module is shipped with:
+
+- 64MiB Low Power SDRAM (1.8V)
+- 256MiB NAND type Flash Memory (1.8V)
+- Real Time Clock (I2C) 
+- Micro SD socket
+- USB device port
+- JTAG connector
+- Top expansion connector for daughter boards (GPS, WIFI/BT, GPRS, 3G, ZigBee, MBUS, ...)
+- Bottom expansion connector for development boards 
+
+@section mob-tny-a9xxx-md2 Supported development board
+
+Supported development board is:
+- MOB-TNY-A9xxx-MD2
+
+@section tny-db-boards Supported daughter boards
+
+Supported daughter boards are:
+- DAB-GPI2-CXX
+- DAB-GPS
+- DAB-GPRS
+- DAB-HSDPA
+- DAB-WLAN-BT
+- DAB-ZIGBEE
+- DAB-MBUS
+- DAB-KNX-RF
+
+
+*/
diff --git a/arch/arm/boards/usb-a926x/usb-a9263.dox b/arch/arm/boards/usb-a926x/usb-a9263.dox
new file mode 100644
index 0000000..0cee1c4
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/usb-a9263.dox
@@ -0,0 +1,30 @@
+/** 
+@page usb-a9263 Calao-systems USB-A9263
+
+@section usb-a9263 The CPU card
+
+http://www.calao-systems.com
+
+This CPU card is based on an Atmel AT91SAM9263 CPU. The card is shipped with:
+
+- 64MiB or 128MiB SDRAM (3.3V)
+- 256MiB NAND type Flash Memory (3.3V)
+- Ethernet 10/100M
+- USB Host port 2.0 (FS)
+- USB device port (FS)
+- Top expansion connector for expansion boards (GPS, WIFI/BT, GPRS, 3G, ZigBee, MBUS, ...)
+- Bottom expansion connector for development boards 
+
+@section usb-db-boards Supported daughter boards
+
+Supported daughter boards are:
+- DAB-GPI2-CXX
+- DAB-GPS
+- DAB-GPRS
+- DAB-HSDPA
+- DAB-WLAN-BT
+- DAB-ZIGBEE
+- DAB-MBUS
+- DAB-KNX-RF
+
+*/
diff --git a/arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox b/arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox
new file mode 100644
index 0000000..d379fc3
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/usb-a9g20-lpw.dox
@@ -0,0 +1,33 @@
+/** 
+@page usb-a9g20-lpw Calao-systems USB-A9G20-LPW
+
+@section usb-a9g20-lpw The CPU card
+
+http://www.calao-systems.com
+
+This CPU card is based on an Atmel AT91SAM9G20 CPU. The card is shipped with:
+
+- 64MiB or 128MiB SDRAM (1.8V)
+- 256MiB NAND type Flash Memory (1.8V)
+- Ethernet 10/100M
+- USB Host port 2.0 (FS)
+- USB device port (FS)
+- Micro SD socket
+- JTAG connector
+- RTC with battery backup
+- Top expansion connector for daughter boards (GPS, WIFI/BT, GPRS, 3G, ZigBee, MBUS, ...)
+- Bottom expansion connector for development boards 
+
+@section usb-db-boards Supported daughter boards
+
+Supported daughter boards are:
+- DAB-GPI2-CXX
+- DAB-GPS
+- DAB-GPRS
+- DAB-HSDPA
+- DAB-WLAN-BT
+- DAB-ZIGBEE
+- DAB-MBUS
+- DAB-KNX-RF
+
+*/
-- 
1.5.6.3



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
