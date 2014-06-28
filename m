Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0t5e-000111-B4
 for barebox@lists.infradead.org; Sat, 28 Jun 2014 13:54:52 +0000
Received: from [99.240.204.5] (port=42198 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X0t5G-0005um-JC
 for barebox@lists.infradead.org; Sat, 28 Jun 2014 09:54:26 -0400
Date: Sat, 28 Jun 2014 09:50:19 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406280944480.3700@localhost>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1188131444-1403963422=:3700"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Documentation/boards/: Numerous grammar/typo/rendering fixes.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1188131444-1403963422=:3700
Content-Type: TEXT/PLAIN; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable


Various fixes related to fonts, rendering, grammar, etc., such as:

* spelling mistakes
* hyphenation
* capitalization for proper names
* proper bullet list formatting
* sentence structure

and so on.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  the first part of the boards/ documentation, thought i'd submit this
before it got too long and unwieldy, open to suggestions as to what
other tidying up would be useful or changes i should have done
differently.

diff --git a/Documentation/boards/edb9xxx/cirrus_logic_edb9301.rst b/Docume=
ntation/boards/edb9xxx/cirrus_logic_edb9301.rst
index 78c2d30..692fb5e 100644
--- a/Documentation/boards/edb9xxx/cirrus_logic_edb9301.rst
+++ b/Documentation/boards/edb9xxx/cirrus_logic_edb9301.rst
@@ -1,7 +1,7 @@
 Cirrus Logic EP9301
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-This boards is based on a Cirrus Logic EP9301 CPU. The board is shipped wi=
th:
+This board is based on a Cirrus Logic EP9301 CPU. The board is shipped wit=
h:

   * 16MiB NOR type Flash Memory
   * 32MiB synchronous dynamic RAM on CS3
diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index c6b2087..0fde3e7 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -1,9 +1,9 @@
 Freescale i.MX
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

-Freescale i.MX is traditionally very good supported under barebox.
-Depending on the SoC there are different Boot Modes supported. Older
-SoCs up to i.MX31 only support the external Boot Mode. Newer SoCs
+Freescale i.MX is traditionally very well supported under barebox.
+Depending on the SoC, there are different Boot Modes supported. Older
+SoCs up to i.MX31 support only the external Boot Mode. Newer SoCs
 can be configured for internal or external Boot Mode with the internal
 boot mode being the more popular mode. The i.MX23 and i.MX28, also
 known as i.MXs, are special. These SoCs have a completely different
@@ -20,10 +20,10 @@ The Internal Boot Mode is supported on:
 * i.MX53
 * i.MX6

-With the Internal Boot Mode the images contain a header which describes
-where the binary shall be loaded and started. Also these headers contain
-a so called DCD table which consists of register/value pairs. These are
-executed by the Boot ROM and are used to configure the SDRAM. In barebox
+With the Internal Boot Mode, the images contain a header which describes
+where the binary shall be loaded and started. These headers also contain
+a so-called DCD table which consists of register/value pairs. These are
+executed by the Boot ROM and are used to configure the SDRAM. In barebox,
 the i.MX images are generated with the ``scripts/imx/imx-image`` tool.
 Normally it's not necessary to call this tool manually, it is executed
 automatically at the end of the build process.
@@ -36,8 +36,9 @@ SD card::
   # otherwise:
   cat barebox-flash-image > /dev/sdd

-This will overwrite the partition table on the card. It can be preserved
-with::
+The above will overwrite the MBR (and consequently the partition table)
+on the destination SD card. To preserve the MBR while writing the rest
+of the image to the card, use::

   dd if=3Dimages/barebox-freescale-imx51-babbage.img of=3D/dev/sdd bs=3D51=
2 skip=3D1 seek=3D1

@@ -50,10 +51,10 @@ USB Boot

 Most boards can be explicitly configured for USB Boot Mode or fall back
 to USB Boot when no other medium can be found. The barebox repository
-contains a USB upload tool. As it depends on the libusb development headers
+contains a USB upload tool. As it depends on the libusb development header=
s,
 it is not built by default. Enable it explicitly in ``make menuconfig``
-and install the libusb development package. On Debian this can be done
-with ``apt-get install libusb-dev``. After compilation the tool can be used
+and install the libusb development package. On Debian, this can be done
+with ``apt-get install libusb-dev``. After compilation, the tool can be us=
ed
 with only the image name as argument::

   scripts/imx/imx-usb-loader images/barebox-freescale-imx51-babbage.img
@@ -68,13 +69,13 @@ The External Boot Mode is supported by the older i.MX S=
oCs:
 * i.MX27
 * i.MX31

-(It may be supported on newer SoCs aswell, but it is not widely used there)
+(It may be supported on newer SoCs as well, but it is not widely used ther=
e.)

-The External Boot Mode only supports booting from NOR and NAND flash. On N=
OR
-flash the binary is started directly on its physical address in memory. Bo=
oting
+The External Boot Mode supports booting only from NOR and NAND flash. On N=
OR
+flash, the binary is started directly on its physical address in memory. B=
ooting
 from NAND flash is more complicated. The NAND flash controller copies the =
first
-2kb of the image to the NAND Controllers internal SRAM. This initial binary
-portion is then has to:
+2kb of the image to the NAND Controller's internal SRAM. This initial bina=
ry
+portion then has to:

 * Set up the SDRAM
 * Copy the initial binary to SDRAM to make the internal SRAM in the NAND f=
lash
diff --git a/Documentation/boards/imx/Garz-Fricke-Cupid.rst b/Documentation=
/boards/imx/Garz-Fricke-Cupid.rst
index 1328810..4520048 100644
--- a/Documentation/boards/imx/Garz-Fricke-Cupid.rst
+++ b/Documentation/boards/imx/Garz-Fricke-Cupid.rst
@@ -3,7 +3,7 @@ Garz+Fricke Cupid

 This CPU card is based on a Freescale i.MX35 CPU. The card is shipped with:

-  * 256MiB Nand flash
+  * 256MiB NAND flash
   * 128MiB synchronous dynamic RAM

 see http://www.garz-fricke.com/cupid-core_de.html for more information
diff --git a/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst b/Documenta=
tion/boards/imx/Phytec-phyCORE-i.MX31.rst
index 45fd6be..6c05bcd 100644
--- a/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
+++ b/Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst
@@ -37,5 +37,5 @@ Build the binary image::
 **NOTE:** replace ''armv5compiler'' with your ARM v5 cross compiler,
  e.g.: ''arm-1136jfs-linux-gnueabi-''

-The resulting binary image to be flashed will be barebox.bin, whereas
-the file named just barebox is an ELF executable for ARM.
+The resulting binary image to be flashed will be ``barebox.bin``, whereas
+the file named just ``barebox`` is an ELF executable for ARM.
diff --git a/Documentation/boards/imx/synertronixx_scb9328.rst b/Documentat=
ion/boards/imx/synertronixx_scb9328.rst
index 229b3d0..0e59046 100644
--- a/Documentation/boards/imx/synertronixx_scb9328.rst
+++ b/Documentation/boards/imx/synertronixx_scb9328.rst
@@ -8,5 +8,3 @@ This CPU card is based on a Freescale i.MX1 CPU. The card i=
s shipped with:
   * 16MiB NOR type Flash Memory
   * 16MiB synchronous dynamic RAM
   * DM9000 network controller
-
-It's the first i.MX board sha has ever ported Linux to.
diff --git a/Documentation/boards/mxs/Chumby-Falconwing.rst b/Documentation=
/boards/mxs/Chumby-Falconwing.rst
index 79bff70..172d684 100644
--- a/Documentation/boards/mxs/Chumby-Falconwing.rst
+++ b/Documentation/boards/mxs/Chumby-Falconwing.rst
@@ -7,13 +7,15 @@ This CPU card is based on a Freescale i.MX23 CPU. The car=
d is shipped with:

   * 64 MiB synchronous dynamic RAM (DDR type)

-Memory layout when @b barebox is running:
+Memory layout when barebox is running:

   * 0x40000000 start of SDRAM
   * 0x40000100 start of kernel's boot parameters
+
     * below malloc area: stack area
     * below barebox: malloc area
-  * 0x42000000 start of @b barebox
+
+  * 0x42000000 start of barebox

 How to get the bootloader binary image
 --------------------------------------
@@ -32,20 +34,21 @@ How to prepare an MCI card to boot the "chumby one" wit=
h barebox
 ----------------------------------------------------------------

   * Create four primary partitions on the MCI card
+
     * the first one for the bootlets (about 256 kiB)
     * the second one for the persistant environment (size is up to you, at=
 least 256k)
     * the third one for the kernel (2 MiB ... 4 MiB in size)
-    * the 4th one for the root filesystem which can fill the rest of the a=
vailable space
+    * the fourth one for the root filesystem which can fill the rest of th=
e available space

   * Mark the first partition with the partition ID "53" and copy the
-    bootlets into this partition (currently not part of @b barebox!).
+    bootlets into this partition (currently not part of barebox!).

-  * Copy the default @b barebox environment into the second partition
+  * Copy the default barebox environment into the second partition
     (no filesystem required).

   * Copy the kernel into the third partition (no filesystem required).

-  * Create the root filesystem in the 4th partition. You may copy an
+  * Create the root filesystem in the fourth partition. You may copy an
     image into this partition or you can do it in the classic way:
     mkfs on it, mount it and copy all required data and programs into
     it.
diff --git a/Documentation/boards/mxs/Freescale-i.MX23-evk.rst b/Documentat=
ion/boards/mxs/Freescale-i.MX23-evk.rst
index a2cdc38..85dde46 100644
--- a/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
+++ b/Documentation/boards/mxs/Freescale-i.MX23-evk.rst
@@ -6,13 +6,15 @@ This CPU card is based on an i.MX23 CPU. The card is ship=
ped with:
   * 32 MiB synchronous dynamic RAM (mobile DDR type)
   * ENC28j60 based network (over SPI)

-Memory layout when @b barebox is running:
+Memory layout when barebox is running:

   * 0x40000000 start of SDRAM
   * 0x40000100 start of kernel's boot parameters
+
     * below malloc area: stack area
     * below barebox: malloc area
-  * 0x41000000 start of @b barebox
+
+  * 0x41000000 start of barebox

 How to get the bootloader binary image
 --------------------------------------
diff --git a/Documentation/boards/mxs/KaRo-TX28.rst b/Documentation/boards/=
mxs/KaRo-TX28.rst
index 15984d7..0fbd4df 100644
--- a/Documentation/boards/mxs/KaRo-TX28.rst
+++ b/Documentation/boards/mxs/KaRo-TX28.rst
@@ -12,12 +12,13 @@ This CPU card is based on a Freescale i.MX28 CPU. The c=
ard is shipped with:
   * 128 MiB NAND K9F1G08U0A (3.3V type)
   * PCA9554 GPIO expander
   * DS1339 RTC
-  * LAN8710 Phy
+  * LAN8710 PHY

 Supported baseboards
 --------------------

 Supported baseboards are:
+
   * KARO's Starterkit 5

 How to get barebox for 'KARO's Starterkit 5'
@@ -34,9 +35,10 @@ Build the binary image::
 **NOTE:** replace the armv5compiler with your ARM v5 cross compiler.

 **NOTE:** to use the result, you also need the following resources from Fr=
eescale:
+
   * the 'bootlets' archive
   * the 'elftosb2' encryption tool
-  * in the case you want to start @b barebox from an attached SD card
+  * in the case you want to start barebox from an attached SD card
     the 'sdimage' tool from Freescale's 'uuc' archive.

 Memory layout when barebox is running
@@ -44,6 +46,8 @@ Memory layout when barebox is running

   * 0x40000000 start of SDRAM
   * 0x40000100 start of kernel's boot parameters
+
     * below malloc area: stack area
     * below barebox: malloc area
-  * 0x47000000 start of @b barebox
+
+  * 0x47000000 start of barebox
diff --git a/Documentation/boards/omap.rst b/Documentation/boards/omap.rst
index 56b7e64..5038613 100644
--- a/Documentation/boards/omap.rst
+++ b/Documentation/boards/omap.rst
@@ -1,20 +1,20 @@
 Texas Instruments OMAP/AM335x
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

-Texas Intruments OMAP SoCs have a two staged boot process. The first stage=
 is
+Texas Instruments OMAP SoCs have a two-stage boot process. The first stage=
 is
 known as Xload which only loads the second stage bootloader. barebox can a=
ct as
-both the first and the second stage loader. To build as a first stage load=
er
-build the \*_xload_defconfig for your board, for second stage build the no=
rmal
+both the first and the second stage loader. To build as a first stage load=
er,
+build the \*_xload_defconfig for your board; for second stage, build the n=
ormal
 \*_defconfig for your board.

 Bootstrapping a PandaBoard
 --------------------------

-The Panda board boots from SD card. The OMAP Boot ROM code loads a file na=
med
+The PandaBoard boots from SD card. The OMAP Boot ROM code loads a file nam=
ed
 'MLO' on a bootable FAT partition on this card. There are several howtos a=
nd
-scripts on the net which describe how to prepare such a card (it needs a
+scripts on the net which describe how to prepare such a card (it needs
 special partitioning). The same procedure can be used for barebox. With su=
ch a
-card (assumed to be at /dev/sdc) the following can be used to build and in=
stall
+card (assumed to be at /dev/sdc), the following can be used to build and i=
nstall
 barebox::

   # mount -t fat /dev/sdc1 /mnt
@@ -26,15 +26,16 @@ barebox::
   # cp barebox.bin /mnt/barebox.bin
   # umount /mnt

-Bootstrapping a Beagle board is the same with the corresponding Beagle boa=
rd defconfigs
+Bootstrapping a BeagleBoard is the same with the corresponding BeagleBoard=
 defconfigs.

 Networking
 ----------

-The Beagle board does not have ethernet, but a USB ethernet dongle can be =
used
-for networking. the Panda board has an integrated USB ethernet converter w=
hich
-exactly behaves like an external dongle. Barebox does not automatically de=
tect
-USB devices as this would have bad effects on boot time when USB is not ne=
eded.
+The original BeagleBoard does not have Ethernet (the newer BeagleBoard-xM =
does),
+but a USB Ethernet dongle can be used for networking. The PandaBoard has an
+integrated USB Ethernet converter which behaves exactly like an external d=
ongle.
+Barebox does not automatically detect USB devices as this would have bad e=
ffects
+on boot time when USB is not needed.
 So you have to use the [[commands:usb|usb]] command to trigger USB detecti=
on.
 After this a network device should be present which can be used with the n=
ormal
 [[commands:dhcp|dhcp]] and [[commands:tftp|tftp]] commands.
diff --git a/Documentation/boards/s3c/Digi-a9m2440.rst b/Documentation/boar=
ds/s3c/Digi-a9m2440.rst
index be3710a..d01a001 100644
--- a/Documentation/boards/s3c/Digi-a9m2440.rst
+++ b/Documentation/boards/s3c/Digi-a9m2440.rst
@@ -6,41 +6,60 @@ This CPU card is based on a Samsung S3C2440 CPU. The card=
 is shipped with:
   * S3C2440\@400 MHz or 533 MHz (ARM920T/ARMv4T)
   * 16.9344 MHz crystal reference
   * SDRAM 32/64/128 MiB
+
      * Samsung K4M563233E-EE1H (one or two devices for 32 MiB or 64 MiB)
+
        * 2M x 32bit x 4 Banks Mobile SDRAM
        * CL2\@100 MHz (CAS/RAS delay 19ns)
        * 105 MHz max
        * column address size is 9 bits
        *  Row cycle time: 69ns
+
      * Samsung K4M513233C-DG75 (one or two devices for 64 MiB or 128 MiB)
+
        * 4M x 32bit x 4 Banks Mobile SDRAM
        * CL2\@100MHz (CAS/RAS delay 18ns)
        * 111 MHz max
        * column address size is 9 bits
        * Row cycle time: 63ns
+
      * 64ms refresh period (4k)
      * 90 pin FBGA
      * 32 bit data bits
      * Extended temperature range (-25=B0C...85=B0C)
+
   * NAND Flash 32/64/128 MiB
+
      * Samsung KM29U512T (NAND01GW3A0AN6)
+
        * 64 MiB 3,3V 8-bit
        * ID: 0xEC, 0x76, 0x??, 0xBD
+
      * Samsung KM29U256T
+
        * 32 MiB 3,3V 8-bit
        * ID: 0xEC, 0x75, 0x??, 0xBD
+
      * ST Micro
+
        * 128 MiB 3,3V 8-bit
        * ID: 0x20, 0x79
+
      * 30ns/40ns/20ns
+
   * I2C interface, 100 KHz and 400 KHz
+
      * Real Time Clock
+
        * Dallas DS1337
        * address 0x68
+
      * EEPROM
+
        * ST M24LC64
        * address 0x50
        * 16bit addressing
+
   * LCD interface
   * Touch Screen interface
   * Camera interface
@@ -50,13 +69,16 @@ This CPU card is based on a Samsung S3C2440 CPU. The ca=
rd is shipped with:
   * 3 serial RS232 interfaces
   * Host and device USB interface, USB1.1 compliant
   * Ethernet interface
+
     * 10Mbps, Cirrus Logic, CS8900A (on the CPU card)
+
   * SPI interface
   * JTAG interface

-How to get the binary image:
+How to get the binary image
+---------------------------

-Using the default configuration::
+Configure with the default configuration::

   make ARCH=3Darm a9m2440_defconfig


--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--8323328-1188131444-1403963422=:3700
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323328-1188131444-1403963422=:3700--
