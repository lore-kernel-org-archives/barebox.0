Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gh0-f177.google.com ([209.85.160.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZJSM-0003FS-D0
 for barebox@lists.infradead.org; Tue, 29 May 2012 10:15:19 +0000
Received: by ghbf11 with SMTP id f11so1841236ghb.36
 for <barebox@lists.infradead.org>; Tue, 29 May 2012 03:15:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
References: <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
 <20120523134733.6164c4fb@eb-e6520>
 <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
 <20120529092958.GP30400@pengutronix.de>
 <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
From: Roberto Nibali <rnibali@gmail.com>
Date: Tue, 29 May 2012 12:14:52 +0200
Message-ID: <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8784144281687461080=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Booting mx25 based device from SD and NOR
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

--===============8784144281687461080==
Content-Type: multipart/alternative; boundary=e89a8f3ba4b92fb4b004c12a1c34

--e89a8f3ba4b92fb4b004c12a1c34
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

ADDENDUM:

>         { .ptr_type =3D 4, .addr =3D 0xB8002000, .val =3D 0x0000D003, },
>> >         { .ptr_type =3D 4, .addr =3D 0xB8002004, .val =3D 0x00330D01, =
},
>> >         { .ptr_type =3D 4, .addr =3D 0xB8002008, .val =3D 0x00220800, =
},
>>
>> Do these values match the ones you read out of the registers using your
>> U-Boot?
>>
>
> Yep, the corresponing dcdheader.S entries:
>
> DCDGEN( 1, 4, 0xB8002000, 0x0000D003) /* CS0_CSCRU */
> DCDGEN( 2, 4, 0xB8002004, 0x00330d01) /* CS0_CSCRL */
> DCDGEN( 3, 4, 0xB8002008, 0x00220800) /* CS0_CSCRA */
>
> So I reckon at least I got this part working fine.
>
>  > /* Set up 16bit NOR flash on WEIM CS0 */
>> > writel(0xB8002000, 0x0000D003);
>> >  writel(0xB8002004, 0x00330D01);
>> > writel(0xB8002008, 0x00220800);
>>
>> You mixed up the argument order.
>>
>> Yikes!!!! I hope I didn't fry something. I'll quickly try the reversed
> order and report back.
>

It does not change the fact that it still does not recognize my NOR. I am
at my wits' end here, so I go along posting my patch to support the mx25
based device for review:

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d0bfd71..483b47e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -133,6 +133,7 @@ board-$(CONFIG_MACH_TX25) :=3D karo-tx25
 board-$(CONFIG_MACH_TQMA53) :=3D tqma53
 board-$(CONFIG_MACH_TX51) :=3D karo-tx51
 board-$(CONFIG_MACH_MX6Q_ARM2) :=3D freescale-mx6-arm2
+board-$(CONFIG_MACH_MX25_NOAH) :=3D fq-sid1-mx25-noah

 machdirs :=3D $(patsubst %,arch/arm/mach-%/,$(machine-y))

diff --git a/arch/arm/boards/fq-sid1-mx25-noah/Makefile
b/arch/arm/boards/fq-sid1-mx25-noah/Makefile
new file mode 100644
index 0000000..1e9cd54
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/Makefile
@@ -0,0 +1,26 @@
+#
+# (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>
+#
+# See file CREDITS for list of people who contributed to this
+# project.
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License as
+# published by the Free Software Foundation; either version 2 of
+# the License, or (at your option) any later version.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program; if not, write to the Free Software
+# Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+# MA 02111-1307 USA
+#
+
+obj-y +=3D lowlevel.o
+obj-y +=3D sid1_noah.o
+obj-y +=3D extra_commands.o
+obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT) +=3D flash_header.o
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/config.h
b/arch/arm/boards/fq-sid1-mx25-noah/config.h
new file mode 100644
index 0000000..f35e8a0
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/config.h
@@ -0,0 +1,31 @@
+/*
+ * (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+/*
+ * Definitions related to passing arguments to kernel.
+ */
+
+#define CONFIG_MX25_HCLK_FREQ 24000000
+
+#endif
+
+/* nothing to do here yet */
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/_update
b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/_update
new file mode 100644
index 0000000..014bce3
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/_update
@@ -0,0 +1,36 @@
+#!/bin/sh
+
+if [ -z "$part" -o -z "$image" ]; then
+ echo "define \$part and \$image"
+ exit 1
+fi
+
+if [ ! -e "$part" ]; then
+ echo "Partition $part does not exist"
+ exit 1
+fi
+
+if [ $# =3D 1 ]; then
+ image=3D$1
+fi
+
+if [ x$ip =3D xdhcp ]; then
+ dhcp
+fi
+
+ping $eth0.serverip
+if [ $? -ne 0 ] ; then
+ echo "update aborted"
+ exit 1
+fi
+
+unprotect $part
+
+echo
+echo "erasing partition $part"
+erase $part
+
+echo
+echo "flashing $image to $part"
+echo
+tftp $image $part
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/boot
b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/boot
new file mode 100644
index 0000000..d06fc16
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/boot
@@ -0,0 +1,38 @@
+#!/bin/sh
+
+. /env/config
+
+if [ x$1 !=3D x ]; then
+ boot=3D$1
+ kernel=3D$1
+fi
+
+if [ x$boot =3D xnor ]; then
+ bootargs=3D"$bootargs root=3D$nor_rootpart rootfstype=3Djffs2"
+elif [ x$boot =3D xmmc ]; then
+ bootargs=3D"$bootargs root=3D$mmc_rootpart rootfstype=3Dext3"
+elif [ x$boot =3D xnfs ]; then
+ bootargs=3D"$bootargs root=3D/dev/nfs nfsroot=3D$eth0.serverip:$nfsroot,v=
3,tcp"
+ if [ x$getip =3D xdhcp ]; then
+ bootargs=3D"$bootargs ip=3Ddhcp"
+ else
+ bootargs=3D"$bootargs
ip=3D$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
+ fi
+fi
+
+# Generally add mtdparts to kernel cmdline
+bootargs=3D"$bootargs mtdparts=3Dphysmap-flash.0:$nor_parts"
+
+if [ x$kernel =3D xtftp -o x$kernel =3D xnfs ]; then
+ if [ x$getip =3D xdhcp ]; then
+ echo "BOOT: Fetching IP address from $eth0.serverip"
+ dhcp
+ fi
+ tftp $tftp_uimage uImage || exit 1
+ bootm uImage
+elif [ x$kernel =3D xmmc ]; then
+ bootm $mmc_kernel
+elif [ x$kernel =3D xnor ]; then
+ bootm /dev/nor0.kernel
+fi
+
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/init
b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/init
new file mode 100644
index 0000000..070220d
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/init
@@ -0,0 +1,23 @@
+#!/bin/sh
+
+PATH=3D/env/bin
+export PATH
+
+. /env/config
+
+if [ -e /dev/nor0 ]; then
+ addpart /dev/nor0 $nor_parts
+fi
+
+echo
+echo -n "Hit any key to stop autoboot: "
+timeout -a $autoboot_timeout
+if [ $? !=3D 0 ]; then
+ echo
+ echo "type update_kernel nor [<imagename>] to update kernel into flash"
+ echo "type update_root nor [<imagename>] to update rootfs into flash"
+ echo
+ exit
+fi
+
+boot
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_kernel
b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_kernel
new file mode 100644
index 0000000..49523aa
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_kernel
@@ -0,0 +1,13 @@
+#!/bin/sh
+
+. /env/config
+
+image=3D$uimage
+if [ x$1 =3D xnor ]; then
+ part=3D/dev/nor0.kernel
+else
+ echo "usage: $0 nor [imagename]"
+ exit 1
+fi
+
+. /env/bin/_update $2
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_root
b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_root
new file mode 100644
index 0000000..0935bc1
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_root
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+. /env/config
+
+image=3D$uimage
+if [ x$1 =3D xnand ]; then
+ part=3D/dev/nand0.root.bb
+elif [ x$1 =3D xnor ]; then
+ part=3D/dev/nor0.root
+else
+ echo "usage: $0 nor [imagename]"
+ exit 1
+fi
+
+. /env/bin/_update $2
+
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/config
b/arch/arm/boards/fq-sid1-mx25-noah/env/config
new file mode 100644
index 0000000..240056d
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/config
@@ -0,0 +1,25 @@
+#!/bin/sh
+
+autoboot_timeout=3D5
+
+# can be either 'nfs', 'tftp', 'nor', or 'mmc'
+kernel=3Dtftp
+root=3Dmmc
+
+version=3D/v2.1.8-rc
+tftp_uimage=3D$version/uImage
+tftp_jffs2=3D$version/console-image.jffs2
+bootargs=3D"console=3Dttymxc0,115200"
+nfsroot=3D"/home/develop/SID1/nfsroot"
+nor_parts=3D"512k(barebox)ro,512k(bareboxenv),3072k(kernel),-(root)"
+nor_rootpart=3D"/dev/mtdblock3"
+mmc_kernel=3D"/dev/mmcblk0p1"
+mmc_rootpart=3D"/dev/mmcblk0p2"
+getip=3Ddhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=3D192.168.1.80
+#eth0.netmask=3D255.255.255.0
+#eth0.gateway=3Da.b.c.d
+eth0.serverip=3D192.168.1.23
+eth0.ethaddr=3D00:50:c2:8c:e6:0e
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/extra_commands.c
b/arch/arm/boards/fq-sid1-mx25-noah/extra_commands.c
new file mode 100644
index 0000000..e57c61f
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/extra_commands.c
@@ -0,0 +1,66 @@
+/*
+ * (C) 2012 FQ Ingenieria, Roberto Nibali <rnibali@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <io.h>
+#include <common.h>
+#include <command.h>
+#include <mach/imx-regs.h>
+#include <mach/imx-pll.h>
+
+#define MPCTL_PARAM_399     (IMX_PLL_PD(0) | IMX_PLL_MFD(15) |
IMX_PLL_MFI(8) | IMX_PLL_MFN(5))
+#define MPCTL_PARAM_532     ((1 << 31) | IMX_PLL_PD(0) | IMX_PLL_MFD(11) |
IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
+
+static int do_cpufreq(int argc, char *argv[])
+{
+ /* 15.3.3.1 Core PLL (MPLL) Control Register (MPCTL) */
+        unsigned long freq;
+
+        if (argc !=3D 2)
+                return COMMAND_ERROR_USAGE;
+
+        freq =3D simple_strtoul(argv[1], NULL, 0);
+
+        switch (freq) {
+        case 399:
+                writel(MPCTL_PARAM_399, IMX_CCM_BASE + CCM_MPCTL);
+                break;
+        case 532:
+                writel(MPCTL_PARAM_532, IMX_CCM_BASE + CCM_MPCTL);
+                break;
+        default:
+                return COMMAND_ERROR_USAGE;
+        }
+
+        printf("Switched CPU frequency to %ldMHz\n", freq);
+
+        return 0;
+}
+
+static const __maybe_unused char cmd_cpufreq_help[] =3D
+"Usage: cpufreq 399|532\n"
+"\n"
+"Set CPU frequency to <freq> MHz\n";
+
+BAREBOX_CMD_START(cpufreq)
+ .cmd            =3D do_cpufreq,
+ .usage          =3D "adjust CPU frequency",
+ BAREBOX_CMD_HELP(cmd_cpufreq_help)
+BAREBOX_CMD_END
+
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c
b/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c
new file mode 100644
index 0000000..982fc52
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c
@@ -0,0 +1,88 @@
+#include <common.h>
+#include <mach/imx-flash-header.h>
+#include <mach/imx-regs.h>
+#include <asm/barebox-arm-head.h>
+
+extern void exception_vectors(void);
+
+void __naked __flash_header_start go(void)
+{
+ barebox_arm_head();
+}
+
+/*
+   The Flash header is a data structure that the boot code reads from
+   Flash which provides information about the application. The Flash
+   header must be located at a known fixed address depending on the
+   type of external Flash device connected to i.MX25. The Flash header
+   is only required when an internal boot mode is selected from
+   BOOT_MODE[0:1]. The required offsets of the Flash header for each
+   device type are described in Table 7-10.
+
+   NOR:   4 Kbyte =3D 0x1000 bytes
+   NAND:  1 Kbyte =3D 0x400 bytes
+   OneNAND: 256 bytes =3D 0x100 bytes
+   SD/eSD/MMC/eMMC:   1 kbyte =3D 0x400 bytes
+   I2C/CSPI EEPROM:   1 kbyte =3D 0x400 bytes
+
+   The above flash header offsets are set accordingly in:
+ arch/arm/mach-imx/include/mach/imx-flash-header.h
+
+   TEXT_BASE =3D 0x83F00000
+   IMX_CS0_BASE =3D 0xA0000000
+   #if INTERNAL_BOOT
+ DEST_BASE =3D IMX_CS0_BASE
+   #else
+ DEST_BASE =3D TEXT_BASE
+   #endif
+   FLASH_HEADER_BASE =3D (DEST_BASE + FLASH_HEADER_OFFSET)
+ */
+
+struct imx_dcd_entry __dcd_entry_section dcd_entry[] =3D {
+ /* NOR flash, CS0_CSCRU, CS0_CSCRL, CS0_CSCRA */
+ { .ptr_type =3D 4, .addr =3D 0xB8002000, .val =3D 0x0000D003, },
+ { .ptr_type =3D 4, .addr =3D 0xB8002004, .val =3D 0x00330D01, },
+ { .ptr_type =3D 4, .addr =3D 0xB8002008, .val =3D 0x00220800, },
+ /* DDR2 init */
+ { .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x0076e83a, }, /* initi=
al
value for ESDCFG0 */
+ { .ptr_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x00000204, }, /* ESD_M=
ISC */
+ { .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92210000, }, /* CS0
precharge command */
+ { .ptr_type =3D 4, .addr =3D 0x80000f00, .val =3D 0x12344321, }, /* prech=
arge
all dummy write */
+ { .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb2210000, }, /* Load =
Mode
Register command */
+ { .ptr_type =3D 1, .addr =3D 0x82000000, .val =3D 0xda, },   /* dummy wri=
te
Load EMR2 */
+ { .ptr_type =3D 1, .addr =3D 0x83000000, .val =3D 0xda, },   /* dummy wri=
te
Load EMR3 */
+ { .ptr_type =3D 1, .addr =3D 0x81000400, .val =3D 0xda, },   /* dummy wri=
te
Load EMR1; enable DLL */
+ { .ptr_type =3D 1, .addr =3D 0x80000333, .val =3D 0xda, },   /* dummy wri=
te
Load MR; reset DLL */
+
+ { .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92210000, }, /* CS0
precharge command */
+ { .ptr_type =3D 4, .addr =3D 0x80000400, .val =3D 0x12345678, }, /* prech=
arge
all dummy write */
+ { .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xA2210000, }, /* selec=
t
manual refresh mode */
+ { .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, }, /* manua=
l
refresh */
+ { .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, }, /* manua=
l
refresh twice */
+
+ { .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb2210000, }, /* Load =
Mode
Register command */
+ { .ptr_type =3D 1, .addr =3D 0x80000233, .val =3D 0xda, },   /* Load MR; =
CL=3D3,
BL=3D8, end DLL reset */
+ { .ptr_type =3D 1, .addr =3D 0x81000780, .val =3D 0xda, },   /* Load EMR1=
; OCD
default */
+ { .ptr_type =3D 1, .addr =3D 0x81000400, .val =3D 0xda, },   /* Load EMR1=
; OCD
exit */
+ { .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x82216080, }, /* norma=
l mode
*/
+ /* IOMUX_SW_PAD setup */
+ { .ptr_type =3D 4, .addr =3D 0x43FAC454, .val =3D 0x00001000, }, /*
IOMUXC_SW_PAD_CTL_GRP_DDRTYPE(1-5) */
+ { .ptr_type =3D 4, .addr =3D 0x43FAC448, .val =3D 0x00002000, }, /*
IOMUXC_SW_PAD NFC voltage 1.8 */
+
+ /* CLKCTL */
+ { .ptr_type =3D 4, .addr =3D 0x53f80008, .val =3D 0x20034000, }, /* CLKCT=
L
ARM=3D399 AHB=3D133 */
+};
+
+struct imx_flash_header __flash_header_section flash_header =3D {
+ .app_code_jump_vector =3D DEST_BASE + ((unsigned int)&exception_vectors -
TEXT_BASE),
+ .app_code_barker =3D APP_CODE_BARKER,
+ .app_code_csf =3D 0, /* non-secure boot (table 7-11) */
+ .dcd_ptr_ptr =3D FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dc=
d),
+ .super_root_key =3D 0, /* non-secure boot (table 7-11) */
+ .dcd =3D FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker=
),
+ .app_dest =3D DEST_BASE,
+ .dcd_barker =3D DCD_BARKER,
+ .dcd_block_len =3D sizeof(dcd_entry),
+};
+
+unsigned long __image_len_section barebox_len =3D DCD_BAREBOX_SIZE;
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/lowlevel.c
b/arch/arm/boards/fq-sid1-mx25-noah/lowlevel.c
new file mode 100644
index 0000000..04ece36
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/lowlevel.c
@@ -0,0 +1,188 @@
+/*
+ *
+ * (c) 2011 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#include <common.h>
+#include <init.h>
+#include <mach/imx-regs.h>
+#include <mach/esdctl.h>
+#include <io.h>
+#include <mach/imx-nand.h>
+#include <asm/barebox-arm.h>
+#include <asm/system.h>
+#include <asm-generic/sections.h>
+#include <asm-generic/memory_layout.h>
+
+#ifdef CONFIG_NAND_IMX_BOOT
+static void __bare_init __naked insdram(void)
+{
+ uint32_t r;
+
+ /* setup a stack to be able to call imx_nand_load_image() */
+ r =3D STACK_BASE + STACK_SIZE - 12;
+ __asm__ __volatile__("mov sp, %0" : : "r"(r));
+
+ imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);
+
+ board_init_lowlevel_return();
+}
+#endif
+
+/* Check 24.3.3.1 and 24.5.4.1.1 */
+static inline void __bare_init  setup_sdram(uint32_t base, uint32_t esdctl=
,
+ uint32_t esdcfg)
+{
+ uint32_t esdctlreg =3D ESDCTL0;
+ uint32_t esdcfgreg =3D ESDCFG0;
+
+ if (base =3D=3D 0x90000000) {
+ esdctlreg +=3D 8;
+ esdcfgreg +=3D 8;
+ }
+
+ esdctl |=3D ESDCTL0_SDE;
+
+ writel(esdcfg, esdcfgreg);
+ writel(esdctl | ESDCTL0_SMODE_PRECHARGE, esdctlreg);
+ writel(0, base + 1024);
+ writel(esdctl | ESDCTL0_SMODE_AUTO_REFRESH, esdctlreg);
+ readb(base);
+ readb(base);
+ writel(esdctl | ESDCTL0_SMODE_LOAD_MODE, esdctlreg);
+ writeb(0, base + 0x33);
+ writel(esdctl, esdctlreg);
+}
+
+void __bare_init __naked board_init_lowlevel(void)
+{
+ uint32_t r;
+#ifdef CONFIG_NAND_IMX_BOOT
+ unsigned int *trg, *src;
+#endif
+
+        /* restart the MPLL and wait until it's stable */
+        writel(readl(IMX_CCM_BASE + CCM_CCTL) | (1 << 27),
+                                                IMX_CCM_BASE + CCM_CCTL);
+        while (readl(IMX_CCM_BASE + CCM_CCTL) & (1 << 27)) {};
+
+        /* Configure dividers and ARM clock source
+         *      ARM @ 400 MHz
+         *      AHB @ 133 MHz
+         */
+ writel(0x20034000, IMX_CCM_BASE + CCM_CCTL);
+
+ /* Set up 16bit NOR flash on WEIM CS0 */
+ writel(0x0000D003, 0xB8002000);
+ writel(0x00330D01, 0xB8002004);
+ writel(0x00220800, 0xB8002008);
+
+ /* AIPS setup - Only setup MPROTx registers. The PACR default values are
good.
+ * Set all MPROTx to be non-bufferable, trusted for R/W,
+ * not forced to user-mode.
+ */
+ writel(0x77777777, 0x43f00000);
+ writel(0x77777777, 0x43f00004);
+ writel(0x77777777, 0x53f00000);
+ writel(0x77777777, 0x53f00004);
+
+ /* MAX (Multi-Layer AHB Crossbar Switch) setup
+ * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
+ */
+ writel(0x00043210, 0x43f04000);
+ writel(0x00043210, 0x43f04100);
+ writel(0x00043210, 0x43f04200);
+ writel(0x00043210, 0x43f04300);
+ writel(0x00043210, 0x43f04400);
+ /* SGPCR - always park on last master */
+ writel(0x10, 0x43f04010);
+ writel(0x10, 0x43f04110);
+ writel(0x10, 0x43f04210);
+ writel(0x10, 0x43f04310);
+ writel(0x10, 0x43f04410);
+ /* MGPCR - restore default values */
+ writel(0x0, 0x43f04800);
+ writel(0x0, 0x43f04900);
+ writel(0x0, 0x43f04a00);
+ writel(0x0, 0x43f04b00);
+ writel(0x0, 0x43f04c00);
+
+ /* Configure M3IF registers
+ * M3IF Control Register (M3IFCTL) for MX25
+ * MRRP[0] =3D LCDC           on priority list (1 << 0)  =3D 0x00000001
+ * MRRP[1] =3D MAX1       not on priority list (0 << 1)  =3D 0x00000000
+ * MRRP[2] =3D MAX0       not on priority list (0 << 2)  =3D 0x00000000
+ * MRRP[3] =3D USB HOST   not on priority list (0 << 3)  =3D 0x00000000
+ * MRRP[4] =3D SDMA       not on priority list (0 << 4)  =3D 0x00000000
+ * MRRP[5] =3D SD/ATA/FEC not on priority list (0 << 5)  =3D 0x00000000
+ * MRRP[6] =3D SCMFBC     not on priority list (0 << 6)  =3D 0x00000000
+ * MRRP[7] =3D CSI        not on priority list (0 << 7)  =3D 0x00000000
+ *                                                       ----------
+ *                                                       0x00000001
+ */
+ writel(0x1, 0xb8003000);
+
+ /* enable all the clocks */
+ writel(0x1fffffff, IMX_CCM_BASE + CCM_CGCR0);
+ writel(0xffffffff, IMX_CCM_BASE + CCM_CGCR1);
+ writel(0x000fdfff, IMX_CCM_BASE + CCM_CGCR2);
+
+ /* Set DDR2 and NFC group driver voltages */
+ writel(0x1000, IMX_IOMUXC_BASE + 0x454);
+ writel(0x2000, IMX_IOMUXC_BASE + 0x448);
+
+ /* Skip SDRAM initialization if we run from RAM */
+ r =3D get_pc();
+ if (r > 0x80000000 && r < 0x90000000)
+ board_init_lowlevel_return();
+
+ writel(ESDMISC_RST, ESDMISC);
+
+ while (!(readl(ESDMISC) & (1 << 31)));
+
+#define ESDCTLVAL (ESDCTL0_ROW13 | ESDCTL0_COL9 | ESDCTL0_DSIZ_15_0 | \
+ ESDCTL0_REF4 | ESDCTL0_PWDT_PRECHARGE_PWDN | ESDCTL0_BL)
+#define ESDCFGVAL (ESDCFGx_tRP_3 | ESDCFGx_tMRD_2 | ESDCFGx_tRAS_6 | \
+ ESDCFGx_tRRD_2 | ESDCFGx_tCAS_3 | ESDCFGx_tRCD_3 | \
+ ESDCFGx_tRC_9)
+
+ setup_sdram(0x80000000, ESDCTLVAL, ESDCFGVAL);
+ setup_sdram(0x90000000, ESDCTLVAL, ESDCFGVAL);
+
+#ifdef CONFIG_NAND_IMX_BOOT
+ /* skip NAND boot if not running from NFC space */
+ r =3D get_pc();
+ if (r < IMX_NFC_BASE || r > IMX_NFC_BASE + 0x800)
+ board_init_lowlevel_return();
+
+ src =3D (unsigned int *)IMX_NFC_BASE;
+ trg =3D (unsigned int *)TEXT_BASE;
+
+ /* Move ourselves out of NFC SRAM */
+ for (i =3D 0; i < 0x800 / sizeof(int); i++)
+ *trg++ =3D *src++;
+
+ /* Jump to SDRAM */
+ r =3D (unsigned int)&insdram;
+ __asm__ __volatile__("mov pc, %0" : : "r"(r));
+#else
+ board_init_lowlevel_return();
+#endif
+}
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.c
b/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.c
new file mode 100644
index 0000000..239d72a
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.c
@@ -0,0 +1,377 @@
+/*
+ * (C) 2012 FQ Ingenieria, Roberto Nibali <rnibali@gmail.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ */
+
+#include <io.h>
+#include <sizes.h>
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <environment.h>
+#include <partition.h>
+#include <driver.h>
+#include <fec.h>
+#include <linux/err.h>
+#include <i2c/i2c.h>
+#include <generated/mach-types.h>
+#include <asm/armlinux.h>
+#include <asm/mmu.h>
+#include <asm/barebox-arm-head.h>
+#include <asm-generic/sections.h>
+#include <mach/gpio.h>
+#include <mach/iim.h>
+#include <mach/usb.h>
+#include <mach/imx-regs.h>
+#include <mach/imx-pll.h>
+#include <mach/imx-flash-header.h>
+#include <mach/iomux-mx25.h>
+#include <mach/generic.h>
+#include <mach/devices-imx25.h>
+
+/* The currently used MOSFET IRLMLL6402 needs
+   3.3V driver voltage to function, however the
+   basic GPIO driver voltage is 1.8V, which is
+   not sufficient, unless the MOSFET switches
+   starting from VGS > 1.5V.
+ */
+#define MX25_PAD_CS1__GPIO_4_3_DVS      IOMUX_PAD(0x000, 0x050, 0x05, 0,
0, NO_PAD_CTRL | PAD_CTL_DVS)
+
+static struct fec_platform_data fec_info =3D {
+ .xcv_type =3D RMII,
+ .phy_addr =3D 1,
+};
+
+#ifdef CONFIG_USB
+static void imx25_usb_init(void)
+{
+ uint32_t reg;
+
+        /* Host 1 */
+        reg =3D readl(IMX_OTG_BASE + 0x600);
+        reg &=3D ~(MX35_H1_SIC_MASK | MX35_H1_PM_BIT | MX35_H1_TLL_BIT |
+                MX35_H1_USBTE_BIT | MX35_H1_IPPUE_DOWN_BIT |
MX35_H1_IPPUE_UP_BIT);
+        reg |=3D (MXC_EHCI_INTERFACE_SINGLE_UNI) << MX35_H1_SIC_SHIFT;
+        reg |=3D MX35_H1_USBTE_BIT;
+        reg |=3D MX35_H1_IPPUE_DOWN_BIT;
+ writel(reg, IMX_OTG_BASE + 0x600);
+
+ reg =3D readl(IMX_OTG_BASE + 0x584);
+ reg |=3D 3 << 30;
+ writel(reg, IMX_OTG_BASE + 0x584);
+
+ /* Set to Host mode */
+ reg =3D readl(IMX_OTG_BASE + 0x5a8);
+ writel(reg | 0x3, IMX_OTG_BASE + 0x5a8);
+}
+#endif
+
+/*
+static struct at24_platform_data board_eeprom =3D {
+ .byte_len =3D 65536,
+ .page_size =3D 128,
+ .flags =3D AT24_FLAG_ADDR16,
+};
+*/
+
+static struct i2c_board_info i2c_devices[] =3D {
+ {
+ I2C_BOARD_INFO("at24", 0x50),
+ //.platform_data =3D &board_eeprom,
+ },
+};
+
+#if 0
+struct gpio_led noah_leds[] =3D {
+ {
+ .led =3D { .name =3D "GPIO-LED", },
+ .gpio =3D IMX_GPIO_NR(4, 10),
+ .active_low =3D 1,
+ },
+};
+
+static void noah_leds_init(void)
+{
+ int i;
+ for (i =3D 0; i < ARRAY_SIZE(noah_leds); i++)
+ led_gpio_register(&noah_leds[i]);
+}
+#endif
+
+#define MX25_NOAH_BOOT_UNKNOWN 0
+#define MX25_NOAH_BOOT_NOR 1
+#define MX25_NOAH_BOOT_MMC 2
+static int noah_read_ccm_regs(void) {
+ uint32_t reg;
+
+ /*  15.3.3.12 CCM Reset and Debug Register (CRDR)
+ */
+ reg =3D readl(IMX_CCM_BASE + CCM_CRDR);
+ printf("%s: CCM CRDR =3D %08X\n", __func__, reg);
+
+ /* 15.3.3.11 CCM Status Register (RCSR)
+ if (readl(IMX_CCM_BASE + CCM_RCSR) & (1 << 14))
+ nand_info.width =3D 2;
+ */
+ reg =3D readl(IMX_CCM_BASE + CCM_RCSR);
+ printf("%s: CCM RCSR =3D %08X\n", __func__, reg);
+ if ((reg & (0x3 << 30)) =3D=3D 0x3 << 30) {
+ printf("%s: Booting from expansion device: ", __func__);
+ if ((reg & (0x3 << 28)) =3D=3D 0x0 << 28) {
+ printf("SD/MMC\n");
+ return MX25_NOAH_BOOT_MMC;
+ } else {
+ printf("unknown\n");
+ }
+ } else if ((reg & (0x3 << 30)) =3D=3D 0x0 << 30) {
+ printf("%s: Booting from WEIM: ", __func__);
+ if ((reg & (0x3 << 28)) =3D=3D 0x0 << 28) {
+ printf("NOR\n");
+ return MX25_NOAH_BOOT_NOR;
+ } else {
+ printf("unknown\n");
+ }
+ }
+
+ return MX25_NOAH_BOOT_UNKNOWN;
+}
+
+#ifdef CONFIG_DRIVER_VIDEO_IMX
+static struct imx_fb_videomode imxfb_mode =3D {
+ .mode   =3D {
+ .name =3D "Chunghwa CLAA057VA01CT",
+ .refresh =3D 60,
+ .xres =3D 640,
+ .yres =3D 480,
+ .pixclock =3D KHZ2PICOS(25600),
+ .left_margin =3D 46,
+ .right_margin =3D 114,
+ .upper_margin =3D 34,
+ .lower_margin =3D 11,
+ .hsync_len =3D 48,
+ .vsync_len =3D 3,
+ },
+ .bpp =3D 16,
+ .pcr =3D 0xFA000080, /* 16bpp: Check 33.3.10 of the IMX25RM: LPCR */
+};
+
+static struct imx_fb_platform_data noah_fb_data =3D {
+ .mode   =3D &imxfb_mode,
+ .num_modes =3D 1,
+ .pwmr   =3D 0x00A903FF,
+ .lscr1  =3D 0x00120300,
+ .dmacr  =3D 0x00020010,
+};
+#endif
+
+static iomux_v3_cfg_t imx25_pads[] =3D {
+ /* FEC RMII */
+ MX25_PAD_FEC_MDC__FEC_MDC,              /* Management data clock */
+ MX25_PAD_FEC_MDIO__FEC_MDIO,            /* Management data input/output *=
/
+ MX25_PAD_FEC_TX_EN__FEC_TX_EN,          /* Transmit enable */
+ MX25_PAD_FEC_RX_DV__FEC_RX_DV,          /* Carrier sense / receive data
valid */
+ MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,        /* Synchronous clock reference
(REF_CLK) */
+ MX25_PAD_UART2_CTS__FEC_RX_ER,          /* Receive error */
+ MX25_PAD_FEC_RDATA0__FEC_RDATA0,        /* Receive data */
+ MX25_PAD_FEC_RDATA1__FEC_RDATA1,        /* Receive data */
+ MX25_PAD_FEC_TDATA0__FEC_TDATA0,        /* Transmit data */
+ MX25_PAD_FEC_TDATA1__FEC_TDATA1,        /* Transmit data */
+#ifdef CONFIG_DRIVER_SERIAL_IMX
+ /* UART1 */
+ MX25_PAD_UART1_RXD__UART1_RXD,
+ MX25_PAD_UART1_TXD__UART1_TXD,
+ MX25_PAD_UART1_RTS__UART1_RTS,
+ MX25_PAD_UART1_CTS__UART1_CTS,
+#endif
+#ifdef CONFIG_USB
+ /* USBH2 */
+ MX25_PAD_D9__USBH2_PWR,
+ MX25_PAD_D8__USBH2_OC,
+ MX25_PAD_LD0__USBH2_CLK,
+ MX25_PAD_LD1__USBH2_DIR,
+ MX25_PAD_LD2__USBH2_STP,
+ MX25_PAD_LD3__USBH2_NXT,
+ MX25_PAD_LD4__USBH2_DATA0,
+ MX25_PAD_LD5__USBH2_DATA1,
+ MX25_PAD_LD6__USBH2_DATA2,
+ MX25_PAD_LD7__USBH2_DATA3,
+ MX25_PAD_HSYNC__USBH2_DATA4,
+ MX25_PAD_VSYNC__USBH2_DATA5,
+ MX25_PAD_LSCLK__USBH2_DATA6,
+ MX25_PAD_OE_ACD__USBH2_DATA7,
+#endif
+ /* I2C1 */
+ MX25_PAD_I2C1_CLK__I2C1_CLK,
+ MX25_PAD_I2C1_DAT__I2C1_DAT,
+ /* ESDHC */
+ /*
+ MX25_PAD_SD1_CMD__SD1_CMD_NPU,
+ MX25_PAD_SD1_CLK__SD1_CLK_NPU,
+ MX25_PAD_SD1_DATA0__SD1_DATA0_NPU,
+ MX25_PAD_SD1_DATA1__SD1_DATA1_NPU,
+ MX25_PAD_SD1_DATA2__SD1_DATA2_NPU,
+ MX25_PAD_SD1_DATA3__SD1_DATA3_NPU,
+ */
+#ifdef CONFIG_DRIVER_VIDEO_IMX
+ /* LCD */
+ MX25_PAD_LD0__LD0,                      /* TFT[19]: Blue[0] (LSB)*/
+ MX25_PAD_LD1__LD1,                      /* TFT[18]: Blue[1] */
+ MX25_PAD_LD2__LD2,                      /* TFT[17]: Blue[2] */
+ MX25_PAD_LD3__LD3,                      /* TFT[15]: Blue[3] */
+ MX25_PAD_LD4__LD4,                      /* TFT[14]: Blue[4] */
+ MX25_PAD_LD5__LD5,                      /* TFT[13]: Blue[5] (MSB) */
+ MX25_PAD_LD6__LD6,                      /* TFT[27]: Green[0] (LSB) */
+ MX25_PAD_LD7__LD7,                      /* TFT[26]: Green[1] */
+ MX25_PAD_LD8__LD8,                      /* TFT[25]: Green[2] */
+ MX25_PAD_LD9__LD9,                      /* TFT[23]: Green[3] */
+ MX25_PAD_LD10__LD10,                    /* TFT[22]: Green[4] */
+ MX25_PAD_LD11__LD11,                    /* TFT[21]: Green[5] (MSB) */
+ MX25_PAD_LD12__LD12,                    /* TFT[35]: Red[0] (LSB) */
+ MX25_PAD_LD13__LD13,                    /* TFT[34]: Red[1] */
+ MX25_PAD_LD14__LD14,                    /* TFT[33]: Red[2] */
+ MX25_PAD_LD15__LD15,                    /* TFT[31]: Red[3] */
+ MX25_PAD_GPIO_E__LD16,                  /* TFT[30]: Red[4] */
+ MX25_PAD_GPIO_F__LD17,                  /* TFT[29]: Red[5] (MSB) */
+ MX25_PAD_HSYNC__GPIO_1_22,              /* TFT[ 3]: LCD_HSYNC */
+ MX25_PAD_VSYNC__GPIO_1_23,              /* TFT[ 8]: LCD_VSYNC */
+ MX25_PAD_LSCLK__LSCLK,                  /* TFT[38]: LCD_LSCLK */
+ MX25_PAD_OE_ACD__OE_ACD,                /* TFT[ 9]: LCD_DRDY */
+ MX25_PAD_CONTRAST__PWM4_PWMO,           /* TFT[12]: LCD backlight (PWM):
*/
+ MX25_PAD_CS1__GPIO_4_3_DVS,             /* TFT[xx]: LCD_EN */
+ MX25_PAD_EB1__GPIO_2_13,                /* TFT[ 1]: LCD_UP_DOWN */
+ MX25_PAD_BCLK__GPIO_4_4,                /* TFT[40]: LCD_LEFT_RIGHT */
+ MX25_PAD_CSI_D4__GPIO_1_29,             /* TFT[ 2]: LCD_DMS */
+#endif
+};
+
+static int noah_fec_init(void)
+{
+ /*
+ * Set up the FEC_RESET_B and FEC_ENABLE GPIO pins.
+ * Assert FEC_RESET_B, then power up the PHY by asserting
+ * FEC_ENABLE, at the same time lifting FEC_RESET_B.
+ *
+ * FEC_RESET_B: gpio2[3] is ALT 5 mode of pin A17
+ * FEC_ENABLE_B: gpio4[8] is ALT 5 mode of pin D12
+ */
+ writel(0x8, IMX_IOMUXC_BASE + 0x0238); /* open drain */
+ writel(0x0, IMX_IOMUXC_BASE + 0x028C); /* cmos, no pu/pd */
+
+#define FEC_ENABLE_GPIO 35
+#define FEC_RESET_B_GPIO 104
+
+ /* make the pins output */
+ gpio_direction_output(FEC_ENABLE_GPIO, 0);  /* drop PHY power */
+ gpio_direction_output(FEC_RESET_B_GPIO, 0); /* assert reset */
+ udelay(2);
+
+ /* turn on power & lift reset */
+ gpio_set_value(FEC_ENABLE_GPIO, 1);
+ gpio_set_value(FEC_RESET_B_GPIO, 1);
+
+ return 0;
+}
+late_initcall(noah_fec_init);
+
+static int imx25_mem_init(void)
+{
+ /* add memory bank to 0x80000000 (barebox_add_memory_bank()) */
+ arm_add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024);
+
+ return 0;
+}
+mem_initcall(imx25_mem_init);
+
+static int imx25_devices_init(void)
+{
+ int bootdev;
+
+ bootdev =3D noah_read_ccm_regs();
+ mxc_iomux_v3_setup_multiple_pads(imx25_pads, ARRAY_SIZE(imx25_pads));
+ i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
+ imx25_add_i2c0(NULL);
+ imx25_add_mmc0(NULL);
+ imx25_iim_register_fec_ethaddr();
+ imx25_add_fec(&fec_info);
+
+ printf("%s: Adding NOR flash device\n", __func__);
+ /* Configure 16 bit nor flash on WEIM cs0 */
+ imx25_setup_weimcs(0, 0x0000D003, 0x00330D01, 0x00220800);
+ /* NOR flash starts at CS0 addr 0xA0000000, set to 64MB */
+ add_cfi_flash_device(DEVICE_ID_DYNAMIC, IMX_CS0_BASE, SZ_64M, 0);
+ printf("%s: Adding initial NOR flash partitions\n", __func__);
+ devfs_add_partition("nor0", 0x00000, SZ_512K, PARTITION_FIXED, "self0");
+ devfs_add_partition("nor0", SZ_512K, SZ_512K, PARTITION_FIXED, "env0");
+ //protect_file("/dev/env0", 1);
+#ifdef CONFIG_USB
+ imx25_usb_init();
+ add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400,
NULL);
+#endif
+#ifdef CONFIG_DRIVER_VIDEO_IMX
+ //imx25_add_fb(&noah_fb_data);
+#endif
+ //noah_leds_init();
+ armlinux_set_bootparams((void *)0x80000100);
+ armlinux_set_architecture(MACH_TYPE_MX25_3DS);
+ armlinux_set_serial(imx_uid());
+
+ return 0;
+}
+device_initcall(imx25_devices_init);
+
+static int imx25_console_init(void)
+{
+ //imx25_init_lowlevel(800) + imx25_core_setup();
+ imx25_add_uart0();
+ return 0;
+}
+console_initcall(imx25_console_init);
+
+/*=C2=AC=E2=80=A0Check arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+   for more information, especially with regard to low_level
+   setup inside the core_setup part.
+*/
+static int imx25_core_setup(void)
+{
+ uint32_t reg;
+ /* Enable clocks:
+   UART1: 15
+   FEC : 23
+   SDHC1: 3/21
+   USB : 28
+   I2C : 6
+ */
+ reg =3D readl(IMX_CCM_BASE + CCM_CGCR0);
+ reg |=3D (1 << 6) | (1 << 23) | (1 << 15) | (1 << 21) | (1 << 3) | (1 <<
28);
+ reg =3D writel(reg, IMX_CCM_BASE + CCM_CGCR0);
+
+ reg =3D readl(IMX_CCM_BASE + CCM_CGCR1);
+ reg |=3D (1 << 23) | (1 << 15) | (1 << 13);
+ reg =3D writel(reg, IMX_CCM_BASE + CCM_CGCR1);
+
+ reg =3D readl(IMX_CCM_BASE + CCM_CGCR2);
+ reg |=3D (1 << 14);
+ reg =3D writel(reg, IMX_CCM_BASE + CCM_CGCR2);
+ /* CCM clocks: PER_12 -- PER_15 (15.3.3.10) */
+ //writel(0x03010101, IMX_CCM_BASE + CCM_PCDR3);
+ /* CCM clocks: PER_8 -- PER_11 (15.3.3.9) */
+ //writel(0x01010103, IMX_CCM_BASE + CCM_PCDR2);
+ return 0;
+
+}
+core_initcall(imx25_core_setup);
diff --git a/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.dox
b/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.dox
new file mode 100644
index 0000000..8b0e28a
--- /dev/null
+++ b/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.dox
@@ -0,0 +1,79 @@
+/** @page SID1 (FQ=C2=AC=E2=80=A0Ingenier=E2=88=9A=E2=89=A0a)
+
+This device is also known as "NOAH" (http://www.fqingenieria.es/)
+
+This CPU card is based on a Freescale i.MX25 CPU. The card is shipped with=
:
+
+- 64 MiB synchronous dynamic RAM (DDR type)
+- 4=C2=AC=E2=80=A0SIM/SAM=C2=AC=E2=80=A0sockets
+- USB OTG
+- ...
+
+Memory layout when @b barebox is running:
+
+- 0x80000000 start of SDRAM (IMX_SDRAM_CS0)
+- 0x80000100 start of kernel's boot parameters
+  - below malloc area: stack area
+  - below barebox: malloc area
+- 0x82000000 start of @b barebox
+
+@section get_sid1_noah_binary How to get the bootloader binary image:
+
+Using the default configuration:
+
+@verbatim
+make ARCH=3Darm noah_defconfig
+@endverbatim
+
+Build the bootloader binary image:
+
+@verbatim
+make ARCH=3Darm CROSS_COMPILE=3Darmv5compiler
+@endverbatim
+
+@note replace the armv5compiler with your ARM v5 cross compiler.
+
+@section setup_falconwing How to prepare an MCI card to boot the "chumby
one" with barebox
+
+- Create four primary partitions on the SD=C2=AC=E2=80=A0card
+ - the second one for the persistant environment (512 kiB, at least 256k)
+ - the third one for the kernel (3 MiB ... 4 MiB in size)
+ - the fourth one for the root filesystem which can fill the rest of the
available space
+
+- Copy the default @b barebox environment into the second partition (no
filesystem required).
+
+- Copy the kernel into the third partition (no filesystem required).
+
+- Create the root filesystem in the 4th partition. You may copy an image
into this
+  partition or you can do it in the classic way: mkfs on it, mount it and
copy
+  all required data and programs into it.
+
+@section gpio_falconwing Available GPIOs
+
+The SID1 NOAH=C2=AC=E2=80=A0uses some GPIOs to control various features. W=
ith the
regular
+GPIO commands these features can be controlled at @a barebox's runtime.
+
+<table width=3D"100%" border=3D"1" cellspacing=3D"1" cellpadding=3D"3">
+        <tr>
+                <td>No</td>
+                <td>Direction</td>
+                <td>Function</td>
+                <td>Reset</td>
+                <td>Set</td>
+        </tr>
+        <tr>
+                <td>60</td>
+                <td>Output</td>
+                <td>Display Backlight</td>
+                <td>Backlight<br>Off</td>
+                <td>Backlight<br>On (100 %)</td>
+        </tr>
+        <tr>
+                <td>62</td>
+                <td>Input</td>
+                <td>Bend</td>
+                <td>Not pressed</td>
+                <td>Pressed</td>
+        </tr>
+</table>
+*/
diff --git a/arch/arm/configs/noah_defconfig
b/arch/arm/configs/noah_defconfig
new file mode 100644
index 0000000..152f0bf
--- /dev/null
+++ b/arch/arm/configs/noah_defconfig
@@ -0,0 +1,97 @@
+CONFIG_ARCH_IMX=3Dy
+CONFIG_ARCH_IMX_EXTERNAL_BOOT=3Dy
+CONFIG_ARCH_IMX25=3Dy
+CONFIG_MACH_MX25_NOAH=3Dy
+CONFIG_IMX_CLKO=3Dy
+CONFIG_IMX_IIM=3Dy
+CONFIG_AEABI=3Dy
+CONFIG_ARM_UNWIND=3Dy
+CONFIG_MMU=3Dy
+CONFIG_BROKEN=3Dy
+CONFIG_EXPERIMENTAL=3Dy
+CONFIG_PROMPT=3D"sid1-noah:"
+CONFIG_LONGHELP=3Dy
+CONFIG_GLOB=3Dy
+CONFIG_CMDLINE_EDITING=3Dy
+CONFIG_AUTO_COMPLETE=3Dy
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=3Dy
+CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm/boards/fq-sid1-mx25-noah/env"
+CONFIG_BAREBOXENV_TARGET=3Dy
+CONFIG_ENABLE_FLASH_NOISE=3Dy
+CONFIG_ENABLE_PARTITION_NOISE=3Dy
+CONFIG_ENABLE_DEVICE_NOISE=3Dy
+CONFIG_CMD_EDIT=3Dy
+CONFIG_CMD_SLEEP=3Dy
+CONFIG_CMD_SAVEENV=3Dy
+CONFIG_CMD_EXPORT=3Dy
+CONFIG_CMD_PRINTENV=3Dy
+CONFIG_CMD_READLINE=3Dy
+CONFIG_CMD_TIME=3Dy
+CONFIG_CMD_AUTOMOUNT=3Dy
+CONFIG_CMD_ECHO_E=3Dy
+CONFIG_CMD_LOADB=3Dy
+CONFIG_CMD_LOADY=3Dy
+CONFIG_CMD_LOADS=3Dy
+CONFIG_CMD_SAVES=3Dy
+CONFIG_CMD_MEMINFO=3Dy
+CONFIG_CMD_IOMEM=3Dy
+CONFIG_CMD_MD5SUM=3Dy
+CONFIG_CMD_SHA1SUM=3Dy
+CONFIG_CMD_SHA256SUM=3Dy
+CONFIG_CMD_SHA224SUM=3Dy
+CONFIG_CMD_MTEST=3Dy
+CONFIG_CMD_MTEST_ALTERNATIVE=3Dy
+CONFIG_CMD_FLASH=3Dy
+CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy
+CONFIG_CMD_BOOTM_VERBOSE=3Dy
+CONFIG_CMD_BOOTM_INITRD=3Dy
+CONFIG_CMD_BOOTM_OFTREE=3Dy
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=3Dy
+CONFIG_CMD_UIMAGE=3Dy
+CONFIG_CMD_RESET=3Dy
+CONFIG_CMD_GO=3Dy
+CONFIG_CMD_OFTREE=3Dy
+CONFIG_CMD_TIMEOUT=3Dy
+CONFIG_CMD_PARTITION=3Dy
+CONFIG_CMD_MAGICVAR=3Dy
+CONFIG_CMD_MAGICVAR_HELP=3Dy
+CONFIG_CMD_BMP=3Dy
+CONFIG_CMD_GPIO=3Dy
+CONFIG_CMD_UNCOMPRESS=3Dy
+CONFIG_CMD_I2C=3Dy
+CONFIG_CMD_LED=3Dy
+CONFIG_NET=3Dy
+CONFIG_NET_DHCP=3Dy
+CONFIG_NET_NFS=3Dy
+CONFIG_NET_PING=3Dy
+CONFIG_NET_TFTP=3Dy
+CONFIG_NET_TFTP_PUSH=3Dy
+CONFIG_NET_NETCONSOLE=3Dy
+CONFIG_NET_RESOLV=3Dy
+CONFIG_DRIVER_NET_FEC_IMX=3Dy
+CONFIG_DRIVER_SPI_IMX=3Dy
+CONFIG_I2C=3Dy
+CONFIG_I2C_IMX=3Dy
+CONFIG_DRIVER_CFI=3Dy
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
+CONFIG_MTD=3Dy
+CONFIG_USB=3Dy
+CONFIG_USB_EHCI=3Dy
+CONFIG_USB_OHCI=3Dy
+CONFIG_USB_STORAGE=3Dy
+CONFIG_VIDEO=3Dy
+CONFIG_DRIVER_VIDEO_IMX=3Dy
+CONFIG_MCI=3Dy
+CONFIG_MCI_STARTUP=3Dy
+CONFIG_MCI_IMX_ESDHC=3Dy
+CONFIG_LED=3Dy
+CONFIG_LED_GPIO=3Dy
+CONFIG_EEPROM_AT25=3Dy
+CONFIG_FS_CRAMFS=3Dy
+CONFIG_FS_TFTP=3Dy
+CONFIG_FS_FAT=3Dy
+CONFIG_FS_FAT_WRITE=3Dy
+CONFIG_FS_FAT_LFN=3Dy
+CONFIG_BZLIB=3Dy
+CONFIG_LZO_DECOMPRESS=3Dy
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3236762..839de09 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -23,6 +23,7 @@ config ARCH_TEXT_BASE
  default 0x7ff00000 if MACH_MX53_SMD
  default 0x87f00000 if MACH_GUF_CUPID
  default 0x93d00000 if MACH_TX25
+ default 0x83f00000 if MACH_MX25_NOAH
  default 0x7ff00000 if MACH_TQMA53
  default 0x97f00000 if MACH_TX51
  default 0x4fc00000 if MACH_MX6Q_ARM2
@@ -47,6 +48,7 @@ config BOARDINFO
  default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
  default "Garz+Fricke Cupid" if MACH_GUF_CUPID
  default "Ka-Ro tx25" if MACH_TX25
+ default "SID1 NOAH" if MACH_MX25_NOAH
  default "TQ tqma53" if MACH_TQMA53
  default "Ka-Ro tx51" if MACH_TX51
  default "Freescale i.MX6q armadillo2" if MACH_MX6Q_ARM2
@@ -251,6 +253,12 @@ config MACH_TX25
  help
   Say Y here if you are using the Ka-Ro tx25 board

+config MACH_MX25_NOAH
+ bool "SID1 NOAH"
+ select MACH_HAS_LOWLEVEL_INIT
+ help
+  Say Y here if you are using the SID1 NOAH board
+
 endchoice

 endif
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h
b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 73307c4..8225832 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -72,6 +72,7 @@
 #define CCM_LTR1 0x44
 #define CCM_LTR2 0x48
 #define CCM_LTR3 0x4c
+#define CCM_MCR 0x64

 #define PDR0_AUTO_MUX_DIV(x) (((x) & 0x7) << 9)
 #define PDR0_CCM_PER_AHB(x) (((x) & 0x7) << 12)
@@ -107,6 +108,22 @@
 #define CSCR_L(x)     (WEIM_BASE + 4 + (x) * 0x10)
 #define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)

+/* Chip Select Registers */
+#define IMX_WEIM_BASE WEIM_BASE
+#define CSxU(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x00) /* Chip Select x
Upper Register    */
+#define CSxL(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x04) /* Chip Select x
Lower Register    */
+#define CSxA(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x08) /* Chip Select x
Addition Register */
+#define EIM  __REG(IMX_WEIM_BASE + 0x60) /* WEIM Configuration Register
  */
+
+#ifndef __ASSEMBLY__
+static inline void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned
lower, unsigned addional)
+{
+        CSxU(cs) =3D upper;
+        CSxL(cs) =3D lower;
+        CSxA(cs) =3D addional;
+}
+#endif /* __ASSEMBLY__ */
+
 /*
  * Definitions for the clocksource driver
  *

Thanks and best regards
Roberto

--e89a8f3ba4b92fb4b004c12a1c34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

ADDENDUM:<br><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div class=3D"gmail_quote"><div class=3D"im"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>

<div>&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .ptr_type =3D 4, .addr =3D 0xB80020=
00, .val =3D 0x0000D003, },<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .ptr_type =3D 4, .addr =3D 0xB8002004, .=
val =3D 0x00330D01, },<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .ptr_type =3D 4, .addr =3D 0xB8002008, .=
val =3D 0x00220800, },<br>
<br>
</div>Do these values match the ones you read out of the registers using yo=
ur<br>
U-Boot?<br></blockquote><div><br></div></div><div>Yep, the corresponing dcd=
header.S entries:</div><div><br></div><div><div>DCDGEN( 1, 4, 0xB8002000, 0=
x0000D003) /* CS0_CSCRU */</div><div>DCDGEN( 2, 4, 0xB8002004, 0x00330d01) =
/* CS0_CSCRL */</div>


<div>DCDGEN( 3, 4, 0xB8002008, 0x00220800) /* CS0_CSCRA */</div></div><div>=
<br></div><div>So I reckon at least I got this part working fine.</div><div=
 class=3D"im"><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">


<div>
&gt; /* Set up 16bit NOR flash on WEIM CS0 */<br>
&gt; writel(0xB8002000, 0x0000D003);<br>
&gt; =C2=A0writel(0xB8002004, 0x00330D01);<br>
&gt; writel(0xB8002008, 0x00220800);<br>
<br>
</div>You mixed up the argument order.<br>
<div><br></div></blockquote></div><div>Yikes!!!! I hope I didn&#39;t fry so=
mething. I&#39;ll quickly try the reversed order and report back.</div></di=
v></blockquote><div><br></div><div>It does not change the fact that it stil=
l does not recognize my NOR. I am at my wits&#39; end here, so I go along p=
osting my patch to support the mx25 based device for review:</div>

<div><br></div><div>diff --git a/arch/arm/Makefile b/arch/arm/Makefile</div=
><div>index d0bfd71..483b47e 100644</div><div>--- a/arch/arm/Makefile</div>=
<div>+++ b/arch/arm/Makefile</div><div>@@ -133,6 +133,7 @@ board-$(CONFIG_M=
ACH_TX25)<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span=
>:=3D karo-tx25</div>

<div>=C2=A0board-$(CONFIG_MACH_TQMA53)<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">			</span>:=3D tqma53</div><div>=C2=A0board-$(CONFIG_M=
ACH_TX51)<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span=
>:=3D karo-tx51</div>

<div>=C2=A0board-$(CONFIG_MACH_MX6Q_ARM2)<span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">			</span>:=3D freescale-mx6-arm2</div><div>+board-$=
(CONFIG_MACH_MX25_NOAH)<span class=3D"Apple-tab-span" style=3D"white-space:=
pre">			</span>:=3D fq-sid1-mx25-noah</div>

<div>=C2=A0</div><div>=C2=A0machdirs :=3D $(patsubst %,arch/arm/mach-%/,$(m=
achine-y))</div><div>=C2=A0</div><div>diff --git a/arch/arm/boards/fq-sid1-=
mx25-noah/Makefile b/arch/arm/boards/fq-sid1-mx25-noah/Makefile</div><div>n=
ew file mode 100644</div>

<div>index 0000000..1e9cd54</div><div>--- /dev/null</div><div>+++ b/arch/ar=
m/boards/fq-sid1-mx25-noah/Makefile</div><div>@@ -0,0 +1,26 @@</div><div>+#=
</div><div>+# (C) Copyright 2007 Juergen Beisert &lt;<a href=3D"mailto:jbe@=
pengutronix.de">jbe@pengutronix.de</a>&gt;</div>

<div>+#</div><div>+# See file CREDITS for list of people who contributed to=
 this</div><div>+# project.</div><div>+#</div><div>+# This program is free =
software; you can redistribute it and/or</div><div>+# modify it under the t=
erms of the GNU General Public License as</div>

<div>+# published by the Free Software Foundation; either version 2 of</div=
><div>+# the License, or (at your option) any later version.</div><div>+#</=
div><div>+# This program is distributed in the hope that it will be useful,=
</div>

<div>+# but WITHOUT ANY WARRANTY; without even the implied warranty of</div=
><div>+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =C2=A0See the=
</div><div>+# GNU General Public License for more details.</div><div>+#</di=
v>

<div>+# You should have received a copy of the GNU General Public License</=
div><div>+# along with this program; if not, write to the Free Software</di=
v><div>+# Foundation, Inc., 59 Temple Place, Suite 330, Boston,</div><div>

+# MA 02111-1307 USA</div><div>+#</div><div>+</div><div>+obj-y<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">					</span>+=3D lowlevel.o</=
div><div>+obj-y<span class=3D"Apple-tab-span" style=3D"white-space:pre">			=
		</span>+=3D sid1_noah.o</div>

<div>+obj-y<span class=3D"Apple-tab-span" style=3D"white-space:pre">					</=
span>+=3D extra_commands.o</div><div>+obj-$(CONFIG_ARCH_IMX_INTERNAL_BOOT)<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>+=3D flash_=
header.o</div>

<div>diff --git a/arch/arm/boards/fq-sid1-mx25-noah/config.h b/arch/arm/boa=
rds/fq-sid1-mx25-noah/config.h</div><div>new file mode 100644</div><div>ind=
ex 0000000..f35e8a0</div><div>--- /dev/null</div><div>+++ b/arch/arm/boards=
/fq-sid1-mx25-noah/config.h</div>

<div>@@ -0,0 +1,31 @@</div><div>+/*</div><div>+ * (C) Copyright 2007 Juerge=
n Beisert &lt;<a href=3D"mailto:jbe@pengutronix.de">jbe@pengutronix.de</a>&=
gt;</div><div>+ *</div><div>+ * This program is free software; you can redi=
stribute it and/or</div>

<div>+ * modify it under the terms of the GNU General Public License as</di=
v><div>+ * published by the Free Software Foundation; either version 2 of</=
div><div>+ * the License, or (at your option) any later version.</div>
<div>
+ *</div><div>+ * This program is distributed in the hope that it will be u=
seful,</div><div>+ * but WITHOUT ANY WARRANTY; without even the implied war=
ranty of</div><div>+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=
 =C2=A0See the</div>

<div>+ * GNU General Public License for more details.</div><div>+ *</div><d=
iv>+ * You should have received a copy of the GNU General Public License</d=
iv><div>+ * along with this program; if not, write to the Free Software</di=
v>

<div>+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,</div><div>+ =
* MA 02111-1307 USA</div><div>+ */</div><div>+</div><div>+#ifndef __CONFIG_=
H</div><div>+#define __CONFIG_H</div><div>+</div><div>+/*</div><div>+ * Def=
initions related to passing arguments to kernel.</div>

<div>+ */</div><div>+</div><div>+#define CONFIG_MX25_HCLK_FREQ<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>24000000</div><div>+<=
/div><div>+#endif</div><div>+</div><div>+/* nothing to do here yet */</div>=
<div>

diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/_update b/arch/arm/b=
oards/fq-sid1-mx25-noah/env/bin/_update</div><div>new file mode 100644</div=
><div>index 0000000..014bce3</div><div>--- /dev/null</div><div>+++ b/arch/a=
rm/boards/fq-sid1-mx25-noah/env/bin/_update</div>

<div>@@ -0,0 +1,36 @@</div><div>+#!/bin/sh</div><div>+</div><div>+if [ -z &=
quot;$part&quot; -o -z &quot;$image&quot; ]; then</div><div>+<span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>echo &quot;define \$part=
 and \$image&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>exit=
 1</div><div>+fi</div><div>+</div><div>+if [ ! -e &quot;$part&quot; ]; then=
</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>echo &quot;Partition $part does not exist&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>exit=
 1</div><div>+fi</div><div>+</div><div>+if [ $# =3D 1 ]; then</div><div>+<s=
pan class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>image=3D$1</=
div><div>

+fi</div><div>+</div><div>+if [ x$ip =3D xdhcp ]; then</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>dhcp</div><div>+fi<=
/div><div>+</div><div>+ping $eth0.serverip</div><div>+if [ $? -ne 0 ] ; the=
n</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>echo=
 &quot;update aborted&quot;</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>exit 1</div><div>+fi</div><div>+</div><div>+un=
protect $part</div>

<div>+</div><div>+echo</div><div>+echo &quot;erasing partition $part&quot;<=
/div><div>+erase $part</div><div>+</div><div>+echo</div><div>+echo &quot;fl=
ashing $image to $part&quot;</div><div>+echo</div><div>+tftp $image $part</=
div>

<div>diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/boot b/arch/arm=
/boards/fq-sid1-mx25-noah/env/bin/boot</div><div>new file mode 100644</div>=
<div>index 0000000..d06fc16</div><div>--- /dev/null</div><div>+++ b/arch/ar=
m/boards/fq-sid1-mx25-noah/env/bin/boot</div>

<div>@@ -0,0 +1,38 @@</div><div>+#!/bin/sh</div><div>+</div><div>+. /env/co=
nfig</div><div>+</div><div>+if [ x$1 !=3D x ]; then</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>boot=3D$1</div><div>+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>kernel=3D$=
1</div>

<div>+fi</div><div>+</div><div>+if [ x$boot =3D xnor ]; then</div><div>+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>bootargs=3D&q=
uot;$bootargs root=3D$nor_rootpart rootfstype=3Djffs2&quot;</div><div>+elif=
 [ x$boot =3D xmmc ]; then</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>boot=
args=3D&quot;$bootargs root=3D$mmc_rootpart rootfstype=3Dext3&quot;</div><d=
iv>+elif [ x$boot =3D xnfs ]; then</div><div>+<span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span>bootargs=3D&quot;$bootargs root=3D/dev/=
nfs nfsroot=3D$eth0.serverip:$nfsroot,v3,tcp&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if [=
 x$getip =3D xdhcp ]; then</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">		</span>bootargs=3D&quot;$bootargs ip=3Ddhcp&quot;</d=
iv><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>e=
lse</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>boo=
targs=3D&quot;$bootargs ip=3D$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth=
0.netmask:::&quot;</div><div>+<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>fi</div>

<div>+fi</div><div>+</div><div>+# Generally add mtdparts to kernel cmdline<=
/div><div>+bootargs=3D&quot;$bootargs mtdparts=3Dphysmap-flash.0:$nor_parts=
&quot;</div><div>+</div><div>+if [ x$kernel =3D xtftp -o x$kernel =3D xnfs =
]; then</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if [=
 x$getip =3D xdhcp ]; then</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">		</span>echo &quot;BOOT: Fetching IP address from $et=
h0.serverip&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>dhc=
p</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an>fi</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>tftp $tftp_uimage uImage || exit 1</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>boot=
m uImage</div><div>+elif [ x$kernel =3D xmmc ]; then</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>bootm $mmc_kernel</di=
v><div>

+elif [ x$kernel =3D xnor ]; then</div><div>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>bootm /dev/nor0.kernel</div><div>+fi</di=
v><div>+</div><div>diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/i=
nit b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/init</div>

<div>new file mode 100644</div><div>index 0000000..070220d</div><div>--- /d=
ev/null</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/init</div=
><div>@@ -0,0 +1,23 @@</div><div>+#!/bin/sh</div><div>+</div><div>+PATH=3D/=
env/bin</div>

<div>+export PATH</div><div>+</div><div>+. /env/config</div><div>+</div><di=
v>+if [ -e /dev/nor0 ]; then</div><div>+<span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">	</span>addpart /dev/nor0 $nor_parts</div><div>+fi</d=
iv>

<div>+</div><div>+echo</div><div>+echo -n &quot;Hit any key to stop autoboo=
t: &quot;</div><div>+timeout -a $autoboot_timeout</div><div>+if [ $? !=3D 0=
 ]; then</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>echo</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>echo=
 &quot;type update_kernel nor [&lt;imagename&gt;] to update kernel into fla=
sh&quot;</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>echo &quot;type update_root nor [&lt;imagename&gt;] to update roo=
tfs into flash&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>echo=
</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>exit</div><div>+fi</div><div>+</div><div>+boot</div><div>diff --git a/arc=
h/arm/boards/fq-sid1-mx25-noah/env/bin/update_kernel b/arch/arm/boards/fq-s=
id1-mx25-noah/env/bin/update_kernel</div>

<div>new file mode 100644</div><div>index 0000000..49523aa</div><div>--- /d=
ev/null</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_ke=
rnel</div><div>@@ -0,0 +1,13 @@</div><div>+#!/bin/sh</div><div>+</div>
<div>
+. /env/config</div><div>+</div><div>+image=3D$uimage</div><div>+if [ x$1 =
=3D xnor ]; then</div><div>+<span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">	</span>part=3D/dev/nor0.kernel</div><div>+else</div><div>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>echo &quot;usage=
: $0 nor [imagename]&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>exit=
 1</div><div>+fi</div><div>+</div><div>+. /env/bin/_update $2</div><div>dif=
f --git a/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_root b/arch/arm/=
boards/fq-sid1-mx25-noah/env/bin/update_root</div>

<div>new file mode 100644</div><div>index 0000000..0935bc1</div><div>--- /d=
ev/null</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/bin/update_ro=
ot</div><div>@@ -0,0 +1,16 @@</div><div>+#!/bin/sh</div><div>+</div><div>

+. /env/config</div><div>+</div><div>+image=3D$uimage</div><div>+if [ x$1 =
=3D xnand ]; then</div><div>+<span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span>part=3D/dev/<a href=3D"http://nand0.root.bb">nand0.root.=
bb</a></div>

<div>+elif [ x$1 =3D xnor ]; then</div><div>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>part=3D/dev/nor0.root</div><div>+else</d=
iv><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>e=
cho &quot;usage: $0 nor [imagename]&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>exit=
 1</div><div>+fi</div><div>+</div><div>+. /env/bin/_update $2</div><div>+</=
div><div>diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/config b/arch/a=
rm/boards/fq-sid1-mx25-noah/env/config</div>

<div>new file mode 100644</div><div>index 0000000..240056d</div><div>--- /d=
ev/null</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/env/config</div><=
div>@@ -0,0 +1,25 @@</div><div>+#!/bin/sh</div><div>+</div><div>+autoboot_t=
imeout=3D5</div>

<div>+</div><div>+# can be either &#39;nfs&#39;, &#39;tftp&#39;, &#39;nor&#=
39;, or &#39;mmc&#39;</div><div>+kernel=3Dtftp</div><div>+root=3Dmmc</div><=
div>+</div><div>+version=3D/v2.1.8-rc</div><div>+tftp_uimage=3D$version/uIm=
age</div>

<div>+tftp_jffs2=3D$version/console-image.jffs2</div><div>+bootargs=3D&quot=
;console=3Dttymxc0,115200&quot;</div><div>+nfsroot=3D&quot;/home/develop/SI=
D1/nfsroot&quot;</div><div>+nor_parts=3D&quot;512k(barebox)ro,512k(bareboxe=
nv),3072k(kernel),-(root)&quot;</div>

<div>+nor_rootpart=3D&quot;/dev/mtdblock3&quot;</div><div>+mmc_kernel=3D&qu=
ot;/dev/mmcblk0p1&quot;</div><div>+mmc_rootpart=3D&quot;/dev/mmcblk0p2&quot=
;</div><div>+getip=3Ddhcp</div><div>+</div><div>+# or set your networking p=
arameters here</div>

<div>+#eth0.ipaddr=3D192.168.1.80</div><div>+#eth0.netmask=3D255.255.255.0<=
/div><div>+#eth0.gateway=3Da.b.c.d</div><div>+eth0.serverip=3D192.168.1.23<=
/div><div>+eth0.ethaddr=3D00:50:c2:8c:e6:0e</div><div>diff --git a/arch/arm=
/boards/fq-sid1-mx25-noah/extra_commands.c b/arch/arm/boards/fq-sid1-mx25-n=
oah/extra_commands.c</div>

<div>new file mode 100644</div><div>index 0000000..e57c61f</div><div>--- /d=
ev/null</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/extra_commands.c<=
/div><div>@@ -0,0 +1,66 @@</div><div>+/*</div><div>+ * (C) 2012 FQ Ingenier=
ia, Roberto Nibali &lt;<a href=3D"mailto:rnibali@gmail.com">rnibali@gmail.c=
om</a>&gt;</div>

<div>+ *</div><div>+ * This program is free software; you can redistribute =
it and/or</div><div>+ * modify it under the terms of the GNU General Public=
 License as</div><div>+ * published by the Free Software Foundation; either=
 version 2 of</div>

<div>+ * the License, or (at your option) any later version.</div><div>+ *<=
/div><div>+ * This program is distributed in the hope that it will be usefu=
l,</div><div>+ * but WITHOUT ANY WARRANTY; without even the implied warrant=
y of</div>

<div>+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =C2=A0See the=
</div><div>+ * GNU General Public License for more details.</div><div>+ *</=
div><div>+ * You should have received a copy of the GNU General Public Lice=
nse</div>

<div>+ * along with this program; if not, write to the Free Software</div><=
div>+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,</div><div>+ *=
 MA 02111-1307 USA</div><div>+ *</div><div>+ */</div><div>+</div><div>
+#include &lt;io.h&gt;</div>
<div>+#include &lt;common.h&gt;</div><div>+#include &lt;command.h&gt;</div>=
<div>+#include &lt;mach/imx-regs.h&gt;</div><div>+#include &lt;mach/imx-pll=
.h&gt;</div><div>+</div><div>+#define MPCTL_PARAM_399 =C2=A0 =C2=A0 (IMX_PL=
L_PD(0) | IMX_PLL_MFD(15) | IMX_PLL_MFI(8) | IMX_PLL_MFN(5))</div>

<div>+#define MPCTL_PARAM_532 =C2=A0 =C2=A0 ((1 &lt;&lt; 31) | IMX_PLL_PD(0=
) | IMX_PLL_MFD(11) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))</div><div>+</div><d=
iv>+static int do_cpufreq(int argc, char *argv[])</div><div>+{</div><div>+<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* 15.3.3.1=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>Core PLL (=
MPLL) Control Register (MPCTL) */</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned long freq;</div><div>+</div><div=
>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0if (argc !=3D 2)</div><div>+ =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return COMMAND_ERROR_USAGE;</div><=
div>+</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0freq =3D simple_strtoul(argv[1=
], NULL, 0);</div><div>+</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0switch (freq) {</div><div>+ =C2=A0 =C2=A0=
 =C2=A0 =C2=A0case 399:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0writel(MPCTL_PARAM_399, IMX_CCM_BASE + CCM_MPCTL);</div><d=
iv>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;</div><di=
v>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0case 532:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0writel(MPCTL_PARAM_532, IMX_CCM_BASE + CC=
M_MPCTL);</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;</div><=
div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0default:</div><div>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return COMMAND_ERROR_USAGE;</div><div>+ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0}</div><div>+</div><div>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0printf(&quot;Switched CPU frequency to %ldMHz\n&quot;, freq);</div>

<div>+</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;</div><div>+}</div><=
div>+</div><div>+static const __maybe_unused char cmd_cpufreq_help[] =3D</d=
iv><div>+&quot;Usage: cpufreq 399|532\n&quot;</div><div>+&quot;\n&quot;</di=
v><div>+&quot;Set CPU frequency to &lt;freq&gt; MHz\n&quot;;</div>

<div>+</div><div>+BAREBOX_CMD_START(cpufreq)</div><div>+<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>.cmd =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D do_cpufreq,</div><div>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>.usage =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;adjust CPU frequency&quot;,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>BARE=
BOX_CMD_HELP(cmd_cpufreq_help)</div><div>+BAREBOX_CMD_END</div><div>+</div>=
<div>diff --git a/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c b/arch/a=
rm/boards/fq-sid1-mx25-noah/flash_header.c</div>

<div>new file mode 100644</div><div>index 0000000..982fc52</div><div>--- /d=
ev/null</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c</d=
iv><div>@@ -0,0 +1,88 @@</div><div>+#include &lt;common.h&gt;</div><div>

+#include &lt;mach/imx-flash-header.h&gt;</div><div>+#include &lt;mach/imx-=
regs.h&gt;</div><div>+#include &lt;asm/barebox-arm-head.h&gt;</div><div>+</=
div><div>+extern void exception_vectors(void);</div><div>+</div><div>+void =
__naked __flash_header_start go(void)</div>

<div>+{</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span>barebox_arm_head();</div><div>+}</div><div>+</div><div>+/*</div><d=
iv>+ =C2=A0 The Flash header is a data structure that the boot code reads f=
rom</div>

<div>+ =C2=A0 Flash which provides information about the application. The F=
lash</div><div>+ =C2=A0 header must be located at a known fixed address dep=
ending on the</div><div>+ =C2=A0 type of external Flash device connected to=
 i.MX25. The Flash header</div>

<div>+ =C2=A0 is only required when an internal boot mode is selected from<=
/div><div>+ =C2=A0 BOOT_MODE[0:1]. The required offsets of the Flash header=
 for each</div><div>+ =C2=A0 device type are described in Table 7-10.</div>=
<div>+</div>

<div>+ =C2=A0 NOR: <span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>		</span> =C2=A04 Kbyte =3D 0x1000 bytes</div><div>+ =C2=A0 NAND:<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">		</span> =C2=A01 Kbyte =3D=
 0x400 bytes</div><div>+ =C2=A0 OneNAND: <span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">		</span>256 bytes =3D 0x100 bytes</div>

<div>+ =C2=A0 SD/eSD/MMC/eMMC: <span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span> =C2=A01 kbyte =3D 0x400 bytes</div><div>+ =C2=A0 I2C/=
CSPI EEPROM: <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an> =C2=A01 kbyte =3D 0x400 bytes</div>

<div>+</div><div>+ =C2=A0 The above flash header offsets are set accordingl=
y in:</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>arch/arm/mach-imx/include/mach/imx-flash-header.h</div><div>+</div><=
div>
+ =C2=A0 TEXT_BASE =3D 0x83F00000</div>
<div>+ =C2=A0 IMX_CS0_BASE =3D 0xA0000000</div><div>+ =C2=A0 #if INTERNAL_B=
OOT</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</=
span>DEST_BASE =3D IMX_CS0_BASE</div><div>+ =C2=A0 #else</div><div>+<span c=
lass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>DEST_BASE =3D TEX=
T_BASE</div>

<div>+ =C2=A0 #endif</div><div>+ =C2=A0 FLASH_HEADER_BASE =3D (DEST_BASE + =
FLASH_HEADER_OFFSET)</div><div>+ */</div><div>+</div><div>+struct imx_dcd_e=
ntry __dcd_entry_section dcd_entry[] =3D {</div><div>+<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span>/* NOR flash, CS0_CSCRU, CS0_CS=
CRL, CS0_CSCRA */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0xB8002000, .val =3D 0x0000D003, },</div><div>+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_type =
=3D 4, .addr =3D 0xB8002004, .val =3D 0x00330D01, },</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0xB8002008, .val =3D 0x00220800, },</div><div>+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* DDR2 init =
*/</div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_ty=
pe =3D 4, .addr =3D 0xb8001004, .val =3D 0x0076e83a, }, /* initial value fo=
r ESDCFG0 */</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0xb8001010, .val =3D 0x00000204,=
 }, /* ESD_MISC */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92210000, }, /* CS0 prechar=
ge command */</div><div>+<span class=3D"Apple-tab-span" style=3D"white-spac=
e:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0x80000f00, .val =3D 0x12344321=
, }, /* precharge all dummy write */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xb2210000, }, /* Load Mode R=
egister command */</div><div>+<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>{ .ptr_type =3D 1, .addr =3D 0x82000000, .val =3D 0xda,=
 },<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =C2=A0=
 /* dummy write Load EMR2 */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 1, .addr =3D 0x83000000, .val =3D 0xda, },<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span> =C2=A0 /* dummy write Load EMR=
3 */</div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_ty=
pe =3D 1, .addr =3D 0x81000400, .val =3D 0xda, },<span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span> =C2=A0 /* dummy write Load EMR1; en=
able DLL */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 1, .addr =3D 0x80000333, .val =3D 0xda, },<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span> =C2=A0 /* dummy write Load MR;=
 reset DLL */</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x92210000, }, /*=
 CS0 precharge command */</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0x80000400, .val =
=3D 0x12345678, }, /* precharge all dummy write */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0xA2210000, }, /* select manu=
al refresh mode */</div><div>+<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x876=
54321, }, /* manual refresh */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0x80000000, .val =3D 0x87654321, }, /* manual refr=
esh twice */</div><div>+</div><div>+<span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D=
 0xb2210000, }, /* Load Mode Register command */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 1, .addr =3D 0x80000233, .val =3D 0xda, },<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span> =C2=A0 /* Load MR; CL=3D3, BL=
=3D8, end DLL reset */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 1, .addr =3D 0x81000780, .val =3D 0xda, },<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span> =C2=A0 /* Load EMR1; OCD defau=
lt */</div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .ptr_ty=
pe =3D 1, .addr =3D 0x81000400, .val =3D 0xda, },<span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span> =C2=A0 /* Load EMR1; OCD exit */</d=
iv><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{=
 .ptr_type =3D 4, .addr =3D 0xb8001000, .val =3D 0x82216080, }, /* normal m=
ode */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* I=
OMUX_SW_PAD setup */</div><div>+<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span>{ .ptr_type =3D 4, .addr =3D 0x43FAC454, .val =3D 0x0=
0001000, }, /* IOMUXC_SW_PAD_CTL_GRP_DDRTYPE(1-5) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0x43FAC448, .val =3D 0x00002000, }, /* IOMUXC_SW_P=
AD NFC voltage 1.8 */</div><div>+</div><div>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>/* CLKCTL */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>{ .p=
tr_type =3D 4, .addr =3D 0x53f80008, .val =3D 0x20034000, }, /* CLKCTL ARM=
=3D399 AHB=3D133 */</div><div>+};</div><div>+</div><div>+struct imx_flash_h=
eader __flash_header_section flash_header =3D {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.app=
_code_jump_vector<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>=3D DEST_BASE + ((unsigned int)&amp;exception_vectors - TEXT_BASE),<=
/div>
<div>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.app_code=
_barker<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=3D=
 APP_CODE_BARKER,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span>.app_code_csf<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">		</span>=3D 0, /* non-secure boot (table 7-11) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.dcd=
_ptr_ptr<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>=
=3D FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),</div><div>+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.super_roo=
t_key<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>=3D =
0, /* non-secure boot (table 7-11) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.dcd=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>=3D FLAS=
H_HEADER_BASE + offsetof(struct imx_flash_header, dcd_barker),</div><div>+<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.app_dest<s=
pan class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>=3D DEST_BA=
SE,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.dcd=
_barker<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>=
=3D DCD_BARKER,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>.dcd_block_len<span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">		</span>=3D sizeof(dcd_entry),</div>

<div>+};</div><div>+</div><div>+unsigned long __image_len_section barebox_l=
en =3D DCD_BAREBOX_SIZE;</div><div>diff --git a/arch/arm/boards/fq-sid1-mx2=
5-noah/lowlevel.c b/arch/arm/boards/fq-sid1-mx25-noah/lowlevel.c</div><div>

new file mode 100644</div><div>index 0000000..04ece36</div><div>--- /dev/nu=
ll</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/lowlevel.c</div><div>@=
@ -0,0 +1,188 @@</div><div>+/*</div><div>+ *</div><div>+ * (c) 2011 Pengutr=
onix, Sascha Hauer &lt;<a href=3D"mailto:s.hauer@pengutronix.de">s.hauer@pe=
ngutronix.de</a>&gt;</div>

<div>+ *</div><div>+ * See file CREDITS for list of people who contributed =
to this</div><div>+ * project.</div><div>+ *</div><div>+ * This program is =
free software; you can redistribute it and/or</div><div>+ * modify it under=
 the terms of the GNU General Public License as</div>

<div>+ * published by the Free Software Foundation; either version 2 of</di=
v><div>+ * the License, or (at your option) any later version.</div><div>+ =
*</div><div>+ * This program is distributed in the hope that it will be use=
ful,</div>

<div>+ * but WITHOUT ANY WARRANTY; without even the implied warranty of</di=
v><div>+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =C2=A0See t=
he</div><div>+ * GNU General Public License for more details.</div><div>+ *=
</div>

<div>+ * You should have received a copy of the GNU General Public License<=
/div><div>+ * along with this program; if not, write to the Free Software</=
div><div>+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,</div>

<div>+ * MA 02111-1307 USA</div><div>+ */</div><div>+#include &lt;common.h&=
gt;</div><div>+#include &lt;init.h&gt;</div><div>+#include &lt;mach/imx-reg=
s.h&gt;</div><div>+#include &lt;mach/esdctl.h&gt;</div><div>+#include &lt;i=
o.h&gt;</div>

<div>+#include &lt;mach/imx-nand.h&gt;</div><div>+#include &lt;asm/barebox-=
arm.h&gt;</div><div>+#include &lt;asm/system.h&gt;</div><div>+#include &lt;=
asm-generic/sections.h&gt;</div><div>+#include &lt;asm-generic/memory_layou=
t.h&gt;</div>

<div>+</div><div>+#ifdef CONFIG_NAND_IMX_BOOT</div><div>+static void __bare=
_init __naked insdram(void)</div><div>+{</div><div>+<span class=3D"Apple-ta=
b-span" style=3D"white-space:pre">	</span>uint32_t r;</div><div>+</div><div=
>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* setup =
a stack to be able to call imx_nand_load_image() */</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>r =3D STACK_BASE + ST=
ACK_SIZE - 12;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>__as=
m__ __volatile__(&quot;mov sp, %0&quot; : : &quot;r&quot;(r));</div><div>+<=
/div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>imx_nand_load_image((void *)TEXT_BASE, barebox_image_size);</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>board_init_lowlevel_return();</div><div>+}</div><div>+#endif</div><=
div>+</div><div>+/* Check 24.3.3.1 and 24.5.4.1.1 */</div><div>+static inli=
ne void __bare_init =C2=A0setup_sdram(uint32_t base, uint32_t esdctl,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>uin=
t32_t esdcfg)</div><div>+{</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>uint32_t esdctlreg =3D ESDCTL0;</div><div>+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>uint32_t esdc=
fgreg =3D ESDCFG0;</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>if (base =3D=3D 0x90000000) {</div><div>+<span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">		</span>esdctlreg +=3D 8;</div><div>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>esdcfgreg +=3D =
8;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>}</d=
iv><div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span>esdctl |=3D ESDCTL0_SDE;</div><div>+</div><div>+<span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span>writel(esdcfg, esdcfgreg);=
</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(esdctl | ESDCTL0_SMODE_PRECHARGE, esdctlreg);</div><div>+<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>writel(0, base + 1024);</=
div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(esdctl | ESDCTL0_SMODE_AUTO_REFRESH, esdctlreg);</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>readb(base);</div><di=
v>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>readb(b=
ase);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(esdctl | ESDCTL0_SMODE_LOAD_MODE, esdctlreg);</div><div>+<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>writeb(0, base + 0x33);</=
div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(esdctl, esdctlreg);</div><div>+}</div><div>+</div><div>+void __bare_init=
 __naked board_init_lowlevel(void)</div><div>+{</div><div>+<span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span>uint32_t r;</div>

<div>+#ifdef CONFIG_NAND_IMX_BOOT</div><div>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>unsigned int *trg, *src;</div><div>+#end=
if</div><div>+</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0/* restart the MPLL a=
nd wait until it&#39;s stable */</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0writel(readl(IMX_CCM_BASE + CCM_CCTL) | (=
1 &lt;&lt; 27),</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0IMX_CCM_BASE + CCM_CCTL);</=
div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0while (readl(IMX_CCM_BASE + CCM_CCTL)=
 &amp; (1 &lt;&lt; 27)) {};</div>

<div>+</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Configure dividers and ARM=
 clock source</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 * =C2=A0 =C2=A0 =C2=
=A0ARM @ 400 MHz</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 * =C2=A0 =C2=A0 =
=C2=A0AHB @ 133 MHz</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 */</div><div>+<=
span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x20=
034000, IMX_CCM_BASE + CCM_CCTL);</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>/* Set up 16bit NOR flash on WEIM CS0 */</div><div>+<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x0000D003, 0xB800=
2000);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x00330D01, 0xB8002004);</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>writel(0x00220800, 0xB8002008);</div><div>+</d=
iv>
<div>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* AIPS s=
etup - Only setup MPROTx registers. The PACR default values are good.</div>=
<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * S=
et all MPROTx to be non-bufferable, trusted for R/W,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * n=
ot forced to user-mode.</div><div>+<span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span> */</div><div>+<span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">	</span>writel(0x77777777, 0x43f00000);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x77777777, 0x43f00004);</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>writel(0x77777777, 0x53f00000);</div><div>+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x7777=
7777, 0x53f00004);</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>/* MAX (Multi-Layer AHB Crossbar Switch) setup</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * MPR - priority f=
or MX25 is (SDHC2/SDMA)&gt;USBOTG&gt;RTIC&gt;IAHB&gt;DAHB</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> */<=
/div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>writel(0x00043210, 0x43f04000);</div><div>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>writel(0x00043210, 0x43f04100);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x00043210, 0x43f04200);</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>writel(0x00043210, 0x43f04300);</div><div>+<sp=
an class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x0004=
3210, 0x43f04400);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* S=
GPCR - always park on last master */</div><div>+<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>writel(0x10, 0x43f04010);</div><div>+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x1=
0, 0x43f04110);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x10, 0x43f04210);</div><div>+<span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">	</span>writel(0x10, 0x43f04310);</div><div>+<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x10, 0x43f04410);=
</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* M=
GPCR - restore default values */</div><div>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>writel(0x0, 0x43f04800);</div><div>+<span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x0, 0x4=
3f04900);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x0, 0x43f04a00);</div><div>+<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span>writel(0x0, 0x43f04b00);</div><div>+<span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>writel(0x0, 0x43f04c00);</d=
iv>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>/* Configure M3IF registers</div><div>+<span class=3D"Apple-tab-spa=
n" style=3D"white-space:pre">	</span> * M3IF Control Register (M3IFCTL) for=
 MX25</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * M=
RRP[0] =3D LCDC =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 on priority list (1 &lt;=
&lt; 0) =C2=A0=3D 0x00000001</div><div>+<span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">	</span> * MRRP[1] =3D MAX1 =C2=A0 =C2=A0 =C2=A0 not =
on priority list (0 &lt;&lt; 1) =C2=A0=3D 0x00000000</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * M=
RRP[2] =3D MAX0 =C2=A0 =C2=A0 =C2=A0 not on priority list (0 &lt;&lt; 2) =
=C2=A0=3D 0x00000000</div><div>+<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span> * MRRP[3] =3D USB HOST =C2=A0 not on priority list (=
0 &lt;&lt; 3) =C2=A0=3D 0x00000000</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * M=
RRP[4] =3D SDMA =C2=A0 =C2=A0 =C2=A0 not on priority list (0 &lt;&lt; 4) =
=C2=A0=3D 0x00000000</div><div>+<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span> * MRRP[5] =3D SD/ATA/FEC not on priority list (0 &lt=
;&lt; 5) =C2=A0=3D 0x00000000</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * M=
RRP[6] =3D SCMFBC =C2=A0 =C2=A0 not on priority list (0 &lt;&lt; 6) =C2=A0=
=3D 0x00000000</div><div>+<span class=3D"Apple-tab-span" style=3D"white-spa=
ce:pre">	</span> * MRRP[7] =3D CSI =C2=A0 =C2=A0 =C2=A0 =C2=A0not on priori=
ty list (0 &lt;&lt; 7) =C2=A0=3D 0x00000000</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ----------</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 0x00000001</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> */<=
/div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>writel(0x1, 0xb8003000);</div><div>+</div><div>+<span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span>/* enable all the clocks */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x1fffffff, IMX_CCM_BASE + CCM_CGCR0);</div><div>+<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span>writel(0xffffffff, IMX_CCM_BASE =
+ CCM_CGCR1);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x000fdfff, IMX_CCM_BASE + CCM_CGCR2);</div><div>+</div><div>+<span clas=
s=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Set DDR2 and NFC =
group driver voltages */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writ=
el(0x1000, IMX_IOMUXC_BASE + 0x454);</div><div>+<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>writel(0x2000, IMX_IOMUXC_BASE + 0x44=
8);</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>/* Skip SDRAM initialization if we run from RAM */</div><div>+<span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>r =3D get_pc();=
</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if (=
r &gt; 0x80000000 &amp;&amp; r &lt; 0x90000000)</div><div>+<span class=3D"A=
pple-tab-span" style=3D"white-space:pre">		</span>board_init_lowlevel_retur=
n();</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>writel(ESDMISC_RST, ESDMISC);</div><div>+</div><div>+<span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>while (!(readl(ESDMISC) =
&amp; (1 &lt;&lt; 31)));</div>

<div>+</div><div>+#define ESDCTLVAL<span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span>(ESDCTL0_ROW13 | ESDCTL0_COL9 |<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>ESDCTL0_DSIZ_15_0 | \</div><d=
iv>
+<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span> ESDCTL=
0_REF4 | ESDCTL0_PWDT_PRECHARGE_PWDN | ESDCTL0_BL)</div>
<div>+#define ESDCFGVAL<span class=3D"Apple-tab-span" style=3D"white-space:=
pre">	</span>(ESDCFGx_tRP_3 | ESDCFGx_tMRD_2 | ESDCFGx_tRAS_6 | \</div><div=
>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span> ESDCF=
Gx_tRRD_2 | ESDCFGx_tCAS_3 | ESDCFGx_tRCD_3 | \</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span> E=
SDCFGx_tRC_9)</div><div>+</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>setup_sdram(0x80000000, ESDCTLVAL, ESDCFGVAL);=
</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>setu=
p_sdram(0x90000000, ESDCTLVAL, ESDCFGVAL);</div><div>+</div><div>+#ifdef CO=
NFIG_NAND_IMX_BOOT</div><div>+<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/* skip NAND boot if not running from NFC space */</div=
>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>r =
=3D get_pc();</div><div>+<span class=3D"Apple-tab-span" style=3D"white-spac=
e:pre">	</span>if (r &lt; IMX_NFC_BASE || r &gt; IMX_NFC_BASE + 0x800)</div=
><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>bo=
ard_init_lowlevel_return();</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>src =3D (unsigned int *)IMX_NFC_BASE;</div><div>+<span class=3D"App=
le-tab-span" style=3D"white-space:pre">	</span>trg =3D (unsigned int *)TEXT=
_BASE;</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>/* Move ourselves out of NFC SRAM */</div><div>+<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>for (i =3D 0; i &lt; 0x800 / =
sizeof(int); i++)</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>*tr=
g++ =3D *src++;</div><div>+</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>/* Jump to SDRAM */</div><div>+<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>r =3D (unsigned int)&amp;=
insdram;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>__as=
m__ __volatile__(&quot;mov pc, %0&quot; : : &quot;r&quot;(r));</div><div>+#=
else</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	<=
/span>board_init_lowlevel_return();</div>

<div>+#endif</div><div>+}</div><div>diff --git a/arch/arm/boards/fq-sid1-mx=
25-noah/sid1_noah.c b/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.c</div><d=
iv>new file mode 100644</div><div>index 0000000..239d72a</div><div>--- /dev=
/null</div>

<div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/sid1_noah.c</div><div>@@ -0,0 =
+1,377 @@</div><div>+/*</div><div>+ * (C) 2012 FQ Ingenieria, Roberto Nibal=
i &lt;<a href=3D"mailto:rnibali@gmail.com">rnibali@gmail.com</a>&gt;</div>

<div>+ *</div><div>+ * This program is free software; you can redistribute =
it and/or</div><div>+ * modify it under the terms of the GNU General Public=
 License as</div><div>+ * published by the Free Software Foundation; either=
 version 2 of</div>

<div>+ * the License, or (at your option) any later version.</div><div>+ *<=
/div><div>+ * This program is distributed in the hope that it will be usefu=
l,</div><div>+ * but WITHOUT ANY WARRANTY; without even the implied warrant=
y of</div>

<div>+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =C2=A0See the=
</div><div>+ * GNU General Public License for more details.</div><div>+ *</=
div><div>+ * You should have received a copy of the GNU General Public Lice=
nse</div>

<div>+ * along with this program; if not, write to the Free Software</div><=
div>+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,</div><div>+ *=
 MA 02111-1307 USA</div><div>+ *</div><div>+ */</div><div>+</div><div>
+#include &lt;io.h&gt;</div>
<div>+#include &lt;sizes.h&gt;</div><div>+#include &lt;common.h&gt;</div><d=
iv>+#include &lt;command.h&gt;</div><div>+#include &lt;init.h&gt;</div><div=
>+#include &lt;environment.h&gt;</div><div>+#include &lt;partition.h&gt;</d=
iv>

<div>+#include &lt;driver.h&gt;</div><div>+#include &lt;fec.h&gt;</div><div=
>+#include &lt;linux/err.h&gt;</div><div>+#include &lt;i2c/i2c.h&gt;</div><=
div>+#include &lt;generated/mach-types.h&gt;</div><div>+#include &lt;asm/ar=
mlinux.h&gt;</div>

<div>+#include &lt;asm/mmu.h&gt;</div><div>+#include &lt;asm/barebox-arm-he=
ad.h&gt;</div><div>+#include &lt;asm-generic/sections.h&gt;</div><div>+#inc=
lude &lt;mach/gpio.h&gt;</div><div>+#include &lt;mach/iim.h&gt;</div><div>

+#include &lt;mach/usb.h&gt;</div><div>+#include &lt;mach/imx-regs.h&gt;</d=
iv><div>+#include &lt;mach/imx-pll.h&gt;</div><div>+#include &lt;mach/imx-f=
lash-header.h&gt;</div><div>+#include &lt;mach/iomux-mx25.h&gt;</div><div>

+#include &lt;mach/generic.h&gt;</div><div>+#include &lt;mach/devices-imx25=
.h&gt;</div><div>+</div><div>+/* The currently used MOSFET IRLMLL6402 needs=
</div><div>+ =C2=A0 3.3V driver voltage to function, however the</div><div>
+ =C2=A0 basic GPIO driver voltage is 1.8V, which is</div>
<div>+ =C2=A0 not sufficient, unless the MOSFET switches</div><div>+ =C2=A0=
 starting from VGS &gt; 1.5V.</div><div>+ */</div><div>+#define MX25_PAD_CS=
1__GPIO_4_3_DVS =C2=A0 =C2=A0 =C2=A0IOMUX_PAD(0x000, 0x050, 0x05, 0, 0, NO_=
PAD_CTRL | PAD_CTL_DVS)</div>

<div>+</div><div>+static struct fec_platform_data fec_info =3D {</div><div>=
+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.xcv_type=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=3D RMII,<=
/div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.phy_addr=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=3D 1,</di=
v><div>+};</div><div>+</div><div>+#ifdef CONFIG_USB</div><div>+static void =
imx25_usb_init(void)</div>

<div>+{</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span>uint32_t reg;</div><div>+</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0/=
* Host 1 */</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0reg =3D readl(IMX_OTG_BA=
SE + 0x600);</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0reg &amp;=3D ~(MX35_H1_=
SIC_MASK | MX35_H1_PM_BIT | MX35_H1_TLL_BIT |</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0MX35_H1_USBTE=
_BIT | MX35_H1_IPPUE_DOWN_BIT | MX35_H1_IPPUE_UP_BIT);</div><div>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0reg |=3D (MXC_EHCI_INTERFACE_SINGLE_UNI) &lt;&lt; MX35_=
H1_SIC_SHIFT;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0reg |=3D MX35_H1_USBTE=
_BIT;</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0reg |=3D MX35_H1_IPPUE_DOWN_BIT;</div><di=
v>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(=
reg, IMX_OTG_BASE + 0x600);</div><div>+</div><div>+<span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>reg =3D readl(IMX_OTG_BASE + 0x584=
);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =
|=3D 3 &lt;&lt; 30;</div><div>+<span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>writel(reg, IMX_OTG_BASE + 0x584);</div><div>+</div><d=
iv>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Set=
 to Host mode */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =
=3D readl(IMX_OTG_BASE + 0x5a8);</div><div>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>writel(reg | 0x3, IMX_OTG_BASE + 0x5a8);<=
/div>
<div>
+}</div><div>+#endif</div><div>+</div><div>+/*</div><div>+static struct at2=
4_platform_data board_eeprom =3D {</div><div>+<span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span>.byte_len =3D 65536,</div><div>+<span c=
lass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.page_size =3D 12=
8,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.fla=
gs =3D AT24_FLAG_ADDR16,</div><div>+};</div><div>+*/</div><div>+</div><div>=
+static struct i2c_board_info i2c_devices[] =3D {</div><div>+<span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span>{</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>I2C=
_BOARD_INFO(&quot;at24&quot;, 0x50),</div><div>+<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">		</span>//.platform_data =3D &amp;board_eepr=
om,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>},</=
div><div>+};</div><div>+</div><div>+#if 0</div><div>+struct gpio_led noah_l=
eds[] =3D {</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:=
pre">	</span>{</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>.le=
d =3D { .name =3D &quot;GPIO-LED&quot;, },</div><div>+<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">		</span>.gpio =3D IMX_GPIO_NR(4, 10),<=
/div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>.active_=
low =3D 1,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:p=
re">	</span>},</div><div>+};</div><div>+</div><div>+static void noah_leds_i=
nit(void)</div>

<div>+{</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span>int i;</div><div>+<span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>for (i =3D 0; i &lt; ARRAY_SIZE(noah_leds); i++)</div><div=
>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>led_gpi=
o_register(&amp;noah_leds[i]);</div>

<div>+}</div><div>+#endif</div><div>+</div><div>+#define MX25_NOAH_BOOT_UNK=
NOWN<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>0</div=
><div>+#define MX25_NOAH_BOOT_NOR<span class=3D"Apple-tab-span" style=3D"wh=
ite-space:pre">	</span>1</div>

<div>+#define MX25_NOAH_BOOT_MMC<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span>2</div><div>+static int noah_read_ccm_regs(void) {</d=
iv><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>u=
int32_t reg;</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>/* =C2=A015.3.3.12<span class=3D"Apple-tab-span" style=3D"white-spa=
ce:pre">	</span>CCM Reset and Debug Register (CRDR)=C2=A0</div><div>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>*/</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =
=3D readl(IMX_CCM_BASE + CCM_CRDR);</div><div>+<span class=3D"Apple-tab-spa=
n" style=3D"white-space:pre">	</span>printf(&quot;%s: CCM CRDR =3D %08X\n&q=
uot;, __func__, reg);</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>/* 15.3.3.11<span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>CCM Status Register (RCSR)</div><div>+<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>if (readl(IMX_CCM_BASE + CCM_RCSR) &a=
mp; (1 &lt;&lt; 14))</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>nan=
d_info.width =3D 2;</div><div>+<span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span> */</div><div>+<span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>reg =3D readl(IMX_CCM_BASE + CCM_RCSR);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>prin=
tf(&quot;%s: CCM RCSR =3D %08X\n&quot;, __func__, reg);</div><div>+<span cl=
ass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if ((reg &amp; (0x=
3 &lt;&lt; 30)) =3D=3D 0x3 &lt;&lt; 30) {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>pri=
ntf(&quot;%s: Booting from expansion device: &quot;, __func__);</div><div>+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>if ((reg =
&amp; (0x3 &lt;&lt; 28)) =3D=3D 0x0 &lt;&lt; 28) {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>pr=
intf(&quot;SD/MMC\n&quot;);</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">			</span>return MX25_NOAH_BOOT_MMC;</div><div>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>} else {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>pr=
intf(&quot;unknown\n&quot;);</div><div>+<span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">		</span>}</div><div>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>} else if ((reg &amp; (0x3 &lt;&lt; 30)) =
=3D=3D 0x0 &lt;&lt; 30) {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>pri=
ntf(&quot;%s: Booting from WEIM: &quot;, __func__);</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">		</span>if ((reg &amp; (0x3 =
&lt;&lt; 28)) =3D=3D 0x0 &lt;&lt; 28) {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>pr=
intf(&quot;NOR\n&quot;);</div><div>+<span class=3D"Apple-tab-span" style=3D=
"white-space:pre">			</span>return MX25_NOAH_BOOT_NOR;</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">		</span>} else {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">			</span>pr=
intf(&quot;unknown\n&quot;);</div><div>+<span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">		</span>}</div><div>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>}<span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span></div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>return MX25_NOAH_BOOT_UNKNOWN;</div><div>+}</div><div>+</div><div>+=
#ifdef CONFIG_DRIVER_VIDEO_IMX</div><div>+static struct imx_fb_videomode im=
xfb_mode =3D {</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.mod=
e =C2=A0 =3D {</div><div>+<span class=3D"Apple-tab-span" style=3D"white-spa=
ce:pre">		</span>.name<span class=3D"Apple-tab-span" style=3D"white-space:p=
re">		</span>=3D &quot;Chunghwa CLAA057VA01CT&quot;,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>.re=
fresh<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=3D 6=
0,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</=
span>.xres<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span=
>=3D 640,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>.yr=
es<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>=3D 480=
,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</s=
pan>.pixclock<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an>=3D KHZ2PICOS(25600),</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>.le=
ft_margin<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
=3D 46,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>		</span>.right_margin<span class=3D"Apple-tab-span" style=3D"white-space:=
pre">	</span>=3D 114,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>.up=
per_margin<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
=3D 34,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>		</span>.lower_margin<span class=3D"Apple-tab-span" style=3D"white-space:=
pre">	</span>=3D 11,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		</span>.hs=
ync_len<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=3D=
 48,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>.vsync_len<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>=3D 3,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>},</=
div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
.bpp<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=3D 16=
,</div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.pcr<span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=3D 0xFA000080,=
 /* 16bpp: Check 33.3.10 of the IMX25RM: LPCR */</div><div>+};</div><div>+<=
/div>
<div>
+static struct imx_fb_platform_data noah_fb_data =3D {</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.mode =C2=A0 =3D &a=
mp;imxfb_mode,</div><div>+<span class=3D"Apple-tab-span" style=3D"white-spa=
ce:pre">	</span>.num_modes =3D 1,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.pwm=
r =C2=A0 =3D 0x00A903FF,</div><div>+<span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>.lscr1 =C2=A0=3D 0x00120300,</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.dmacr =C2=A0=3D 0x=
00020010,</div>

<div>+};</div><div>+#endif</div><div>+</div><div>+static iomux_v3_cfg_t imx=
25_pads[] =3D {</div><div>+<span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>/* FEC RMII */</div><div>+<span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>MX25_PAD_FEC_MDC__FEC_MDC, =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Management data clock */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_FEC_MDIO__FEC_MDIO, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Manage=
ment data input/output */</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>MX25_PAD_FEC_TX_EN__FEC_TX_EN, =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0/* Transmit enable */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_FEC_RX_DV__FEC_RX_DV, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Carrier sen=
se / receive data valid */</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>MX25_PAD_FEC_TX_CLK__FEC_TX_CLK, =C2=A0 =C2=A0=
 =C2=A0 =C2=A0/* Synchronous clock reference (REF_CLK) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_UART2_CTS__FEC_RX_ER, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Receive err=
or */</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>MX25_PAD_FEC_RDATA0__FEC_RDATA0, =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Recei=
ve data */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_FEC_RDATA1__FEC_RDATA1, =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Receive data */<=
/div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>MX25_PAD_FEC_TDATA0__FEC_TDATA0, =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Transmit da=
ta */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_FEC_TDATA1__FEC_TDATA1, =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Transmit data */=
</div><div>+#ifdef CONFIG_DRIVER_SERIAL_IMX</div><div>+<span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span>/* UART1 */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_UART1_RXD__UART1_RXD,</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>MX25_PAD_UART1_TXD__UART1_TXD,</div><div>+<spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_UART1=
_RTS__UART1_RTS,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_UART1_CTS__UART1_CTS,</div><div>+#endif</div><div>+#ifdef CONFIG_USB</=
div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
/* USBH2 */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_D9__USBH2_PWR,</div><div>+<span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>MX25_PAD_D8__USBH2_OC,</div><div>+<span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_LD0__USBH2_CLK,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD1__USBH2_DIR,</div><div>+<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span>MX25_PAD_LD2__USBH2_STP,</div><div>+<span class=3D"Ap=
ple-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_LD3__USBH2_NXT,</d=
iv>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD4__USBH2_DATA0,</div><div>+<span class=3D"Apple-tab-span" style=3D"w=
hite-space:pre">	</span>MX25_PAD_LD5__USBH2_DATA1,</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_LD6__USBH2_D=
ATA2,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD7__USBH2_DATA3,</div><div>+<span class=3D"Apple-tab-span" style=3D"w=
hite-space:pre">	</span>MX25_PAD_HSYNC__USBH2_DATA4,</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_VSYNC__USBH2=
_DATA5,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LSCLK__USBH2_DATA6,</div><div>+<span class=3D"Apple-tab-span" style=3D=
"white-space:pre">	</span>MX25_PAD_OE_ACD__USBH2_DATA7,</div><div>+#endif</=
div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* I=
2C1 */</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>MX25_PAD_I2C1_CLK__I2C1_CLK,</div><div>+<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>MX25_PAD_I2C1_DAT__I2C1_DAT,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* E=
SDHC */</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre"=
>	</span>/*</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:=
pre">	</span>MX25_PAD_SD1_CMD__SD1_CMD_NPU,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_SD1_CLK__SD1_CLK_NPU,</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>MX25_PAD_SD1_DATA0__SD1_DATA0_NPU,</div><div>+=
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_S=
D1_DATA1__SD1_DATA1_NPU,</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_SD1_DATA2__SD1_DATA2_NPU,</div><div>+<span class=3D"Apple-tab-span" st=
yle=3D"white-space:pre">	</span>MX25_PAD_SD1_DATA3__SD1_DATA3_NPU,</div><di=
v>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>*/</div=
>

<div>+#ifdef CONFIG_DRIVER_VIDEO_IMX</div><div>+<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">	</span>/* LCD */</div><div>+<span class=3D"A=
pple-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_LD0__LD0, =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT=
[19]: Blue[0] (LSB)*/</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD1__LD1, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* TFT[18]: Blue[1] */</div><div>+<span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>MX25_PAD_LD2__LD2, =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[17]: B=
lue[2] */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD3__LD3, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* TFT[15]: Blue[3] */</div><div>+<span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>MX25_PAD_LD4__LD4, =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[14]: B=
lue[4] */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD5__LD5, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* TFT[13]: Blue[5] (MSB) */</div><div>+<span class=3D"App=
le-tab-span" style=3D"white-space:pre">	</span>MX25_PAD_LD6__LD6, =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT=
[27]: Green[0] (LSB) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD7__LD7, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* TFT[26]: Green[1] */</div><div>+<span class=3D"Apple-ta=
b-span" style=3D"white-space:pre">	</span>MX25_PAD_LD8__LD8, =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[25]: G=
reen[2] */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD9__LD9, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0/* TFT[23]: Green[3] */</div><div>+<span class=3D"Apple-ta=
b-span" style=3D"white-space:pre">	</span>MX25_PAD_LD10__LD10, =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[22]: Gree=
n[4] */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD11__LD11, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* TFT[21]: Green[5] (MSB) */</div><div>+<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span>MX25_PAD_LD12__LD12, =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[35]: Red[=
0] (LSB) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD13__LD13, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* TFT[34]: Red[1] */</div><div>+<span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span>MX25_PAD_LD14__LD14, =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[33]: Red[2] */</=
div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_LD15__LD15, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0/* TFT[31]: Red[3] */</div><div>+<span class=3D"Apple-tab-span=
" style=3D"white-space:pre">	</span>MX25_PAD_GPIO_E__LD16, =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[30]: Red[4] */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_GPIO_F__LD17, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0/* TFT[29]: Red[5] (MSB) */</div><div>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>MX25_PAD_HSYNC__GPIO_1_22, =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[ 3]: LCD_HSYNC */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_VSYNC__GPIO_1_23, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* T=
FT[ 8]: LCD_VSYNC */</div><div>+<span class=3D"Apple-tab-span" style=3D"whi=
te-space:pre">	</span>MX25_PAD_LSCLK__LSCLK, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* TFT[38]: LCD_LSCLK */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_OE_ACD__OE_ACD, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0/* TFT[ 9]: LCD_DRDY */</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>MX25_PAD_CONTRAST__PWM4_PWMO, =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /* TFT[12]: LCD backlight (PWM): */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_CS1__GPIO_4_3_DVS, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* TFT[xx=
]: LCD_EN */</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span>MX25_PAD_EB1__GPIO_2_13, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0/* TFT[ 1]: LCD_UP_DOWN */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>MX25=
_PAD_BCLK__GPIO_4_4, =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0/* TFT[40]: LCD_LEFT_RIGHT */</div><div>+<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>MX25_PAD_CSI_D4__GPIO_1_29, =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* TFT[ 2]: LCD_DMS */</div>

<div>+#endif</div><div>+};</div><div>+</div><div>+static int noah_fec_init(=
void)</div><div>+{</div><div>+<span class=3D"Apple-tab-span" style=3D"white=
-space:pre">	</span>/*</div><div>+<span class=3D"Apple-tab-span" style=3D"w=
hite-space:pre">	</span> * Set up the FEC_RESET_B and FEC_ENABLE GPIO pins.=
</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * A=
ssert FEC_RESET_B, then power up the PHY by asserting</div><div>+<span clas=
s=3D"Apple-tab-span" style=3D"white-space:pre">	</span> * FEC_ENABLE, at th=
e same time lifting FEC_RESET_B.</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> *</=
div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
 * FEC_RESET_B: gpio2[3] is ALT 5 mode of pin A17</div><div>+<span class=3D=
"Apple-tab-span" style=3D"white-space:pre">	</span> * FEC_ENABLE_B: gpio4[8=
] is ALT 5 mode of pin D12</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> */<=
/div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>writel(0x8, IMX_IOMUXC_BASE + 0x0238); /* open drain */</div><div>+<span c=
lass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>writel(0x0, IMX_I=
OMUXC_BASE + 0x028C); /* cmos, no pu/pd */</div>

<div>+</div><div>+#define FEC_ENABLE_GPIO<span class=3D"Apple-tab-span" sty=
le=3D"white-space:pre">		</span>35</div><div>+#define FEC_RESET_B_GPIO<span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>104</div><div>+=
</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* m=
ake the pins output */</div><div>+<span class=3D"Apple-tab-span" style=3D"w=
hite-space:pre">	</span>gpio_direction_output(FEC_ENABLE_GPIO, 0); =C2=A0/*=
 drop PHY power */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>gpio=
_direction_output(FEC_RESET_B_GPIO, 0); /* assert reset */</div><div>+<span=
 class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>udelay(2);</div=
><div>

+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</sp=
an>/* turn on power &amp; lift reset */</div><div>+<span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>gpio_set_value(FEC_ENABLE_GPIO, 1)=
;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>gpio=
_set_value(FEC_RESET_B_GPIO, 1);</div><div>+</div><div>+<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>return 0;</div><div>+}</div><=
div>

+late_initcall(noah_fec_init);</div><div>+</div><div>+static int imx25_mem_=
init(void)</div><div>+{</div><div>+<span class=3D"Apple-tab-span" style=3D"=
white-space:pre">	</span>/* add memory bank to 0x80000000 (barebox_add_memo=
ry_bank()) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>arm_=
add_mem_device(&quot;ram0&quot;, IMX_SDRAM_CS0, 64 * 1024 * 1024);</div><di=
v>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</=
span>return 0;</div>

<div>+}</div><div>+mem_initcall(imx25_mem_init);</div><div>+</div><div>+sta=
tic int imx25_devices_init(void)</div><div>+{</div><div>+<span class=3D"App=
le-tab-span" style=3D"white-space:pre">	</span>int bootdev;</div><div>+</di=
v>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>boot=
dev =3D noah_read_ccm_regs();<span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span></div><div>+<span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>mxc_iomux_v3_setup_multiple_pads(imx25_pads, ARRAY_SIZ=
E(imx25_pads));</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>i2c_=
register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));</div><div>+<s=
pan class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>imx25_add_i2=
c0(NULL);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>imx2=
5_add_mmc0(NULL);</div><div>+<span class=3D"Apple-tab-span" style=3D"white-=
space:pre">	</span>imx25_iim_register_fec_ethaddr();</div><div>+<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>imx25_add_fec(&amp;fe=
c_info);</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>printf(&quot;%s: Adding NOR flash device\n&quot;, __func__);</div><=
div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Co=
nfigure 16 bit nor flash on WEIM cs0 */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>imx2=
5_setup_weimcs(0, 0x0000D003, 0x00330D01, 0x00220800);</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* NOR flash starts=
 at CS0 addr 0xA0000000, set to 64MB */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>add_=
cfi_flash_device(DEVICE_ID_DYNAMIC, IMX_CS0_BASE, SZ_64M, 0);</div><div>+<s=
pan class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>printf(&quot=
;%s: Adding initial NOR flash partitions\n&quot;, __func__);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>devf=
s_add_partition(&quot;nor0&quot;, 0x00000, SZ_512K, PARTITION_FIXED, &quot;=
self0&quot;);</div><div>+<span class=3D"Apple-tab-span" style=3D"white-spac=
e:pre">	</span>devfs_add_partition(&quot;nor0&quot;, SZ_512K, SZ_512K, PART=
ITION_FIXED, &quot;env0&quot;);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>//pr=
otect_file(&quot;/dev/env0&quot;, 1);</div><div>+#ifdef CONFIG_USB</div><di=
v>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>imx25_u=
sb_init();</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>add_=
generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);</di=
v><div>+#endif</div><div>+#ifdef CONFIG_DRIVER_VIDEO_IMX</div><div>+<span c=
lass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>//imx25_add_fb(&a=
mp;noah_fb_data);</div>

<div>+#endif</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space=
:pre">	</span>//noah_leds_init();</div><div>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span>armlinux_set_bootparams((void *)0x800001=
00);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>arml=
inux_set_architecture(MACH_TYPE_MX25_3DS);</div><div>+<span class=3D"Apple-=
tab-span" style=3D"white-space:pre">	</span>armlinux_set_serial(imx_uid());=
</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>return 0;</div><div>+}</div><div>+device_initcall(imx25_devices_ini=
t);</div><div>+</div><div>+static int imx25_console_init(void)</div><div>+{=
</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>//im=
x25_init_lowlevel(800) + imx25_core_setup();</div><div>+<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>imx25_add_uart0();</div><div>=
+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>return 0;=
</div>

<div>+}</div><div>+console_initcall(imx25_console_init);</div><div>+</div><=
div>+/*=C2=AC=E2=80=A0Check arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35=
.c</div><div>+ =C2=A0 for more information, especially with regard to low_l=
evel</div><div>

+ =C2=A0 setup inside the core_setup part.</div><div>+*/</div><div>+static =
int imx25_core_setup(void)</div><div>+{</div><div>+<span class=3D"Apple-tab=
-span" style=3D"white-space:pre">	</span>uint32_t reg;</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>/* Enable clocks:</=
div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =C2=
=A0 UART1: 15</div><div>+<span class=3D"Apple-tab-span" style=3D"white-spac=
e:pre">	</span> =C2=A0 FEC<span class=3D"Apple-tab-span" style=3D"white-spa=
ce:pre">	</span>: 23</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =C2=
=A0 SDHC1: 3/21</div><div>+<span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span> =C2=A0 USB<span class=3D"Apple-tab-span" style=3D"white-s=
pace:pre">	</span>: 28=C2=A0</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> =C2=
=A0 I2C<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>: 6=
</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</spa=
n>*/</div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =3D r=
eadl(IMX_CCM_BASE + CCM_CGCR0);</div><div>+<span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>reg |=3D (1 &lt;&lt; 6) | (1 &lt;&lt; 23) =
| (1 &lt;&lt; 15) | (1 &lt;&lt; 21) | (1 &lt;&lt; 3) | (1 &lt;&lt; 28);</di=
v>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =
=3D writel(reg, IMX_CCM_BASE + CCM_CGCR0);</div><div>+</div><div>+<span cla=
ss=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =3D readl(IMX_C=
CM_BASE + CCM_CGCR1);</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =
|=3D (1 &lt;&lt; 23) | (1 &lt;&lt; 15) | (1 &lt;&lt; 13);</div><div>+<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =3D writel(r=
eg, IMX_CCM_BASE + CCM_CGCR1);</div>

<div>+</div><div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>reg =3D readl(IMX_CCM_BASE + CCM_CGCR2);</div><div>+<span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>reg |=3D (1 &lt;&lt; 14);=
</div><div>

+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>reg =3D w=
ritel(reg, IMX_CCM_BASE + CCM_CGCR2);</div><div>+<span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span>/* CCM clocks: PER_12 -- PER_15 (15.=
3.3.10) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>//wr=
itel(0x03010101, IMX_CCM_BASE + CCM_PCDR3);</div><div>+<span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span>/* CCM clocks: PER_8 -- PER_11=
 (15.3.3.9) */</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>//wr=
itel(0x01010103, IMX_CCM_BASE + CCM_PCDR2);</div><div>+<span class=3D"Apple=
-tab-span" style=3D"white-space:pre">	</span>return 0;</div><div>+</div><di=
v>+}</div>

<div>+core_initcall(imx25_core_setup);</div><div>diff --git a/arch/arm/boar=
ds/fq-sid1-mx25-noah/sid1_noah.dox b/arch/arm/boards/fq-sid1-mx25-noah/sid1=
_noah.dox</div><div>new file mode 100644</div><div>index 0000000..8b0e28a</=
div>

<div>--- /dev/null</div><div>+++ b/arch/arm/boards/fq-sid1-mx25-noah/sid1_n=
oah.dox</div><div>@@ -0,0 +1,79 @@</div><div>+/** @page SID1 (FQ=C2=AC=E2=
=80=A0Ingenier=E2=88=9A=E2=89=A0a)</div><div>+</div><div>+This device is al=
so known as &quot;NOAH&quot; (<a href=3D"http://www.fqingenieria.es/">http:=
//www.fqingenieria.es/</a>)</div>

<div>+</div><div>+This CPU card is based on a Freescale i.MX25 CPU. The car=
d is shipped with:</div><div>+</div><div>+- 64 MiB synchronous dynamic RAM =
(DDR type)</div><div>+- 4=C2=AC=E2=80=A0SIM/SAM=C2=AC=E2=80=A0sockets</div>=
<div>+- USB OTG</div>
<div>
+- ...</div><div>+</div><div>+Memory layout when @b barebox is running:</di=
v><div>+</div><div>+- 0x80000000 start of SDRAM (IMX_SDRAM_CS0)</div><div>+=
- 0x80000100 start of kernel&#39;s boot parameters</div><div>+ =C2=A0- belo=
w malloc area: stack area</div>

<div>+ =C2=A0- below barebox: malloc area</div><div>+- 0x82000000 start of =
@b barebox</div><div>+</div><div>+@section get_sid1_noah_binary How to get =
the bootloader binary image:</div><div>+</div><div>+Using the default confi=
guration:</div>

<div>+</div><div>+@verbatim</div><div>+make ARCH=3Darm noah_defconfig</div>=
<div>+@endverbatim</div><div>+</div><div>+Build the bootloader binary image=
:</div><div>+</div><div>+@verbatim</div><div>+make ARCH=3Darm CROSS_COMPILE=
=3Darmv5compiler</div>

<div>+@endverbatim</div><div>+</div><div>+@note replace the armv5compiler w=
ith your ARM v5 cross compiler.</div><div>+</div><div>+@section setup_falco=
nwing How to prepare an MCI card to boot the &quot;chumby one&quot; with ba=
rebox</div>

<div>+</div><div>+- Create four primary partitions on the SD=C2=AC=E2=80=A0=
card</div><div>+ - the second one for the persistant environment (512 kiB, =
at least 256k)</div><div>+ - the third one for the kernel (3 MiB ... 4 MiB =
in size)</div>

<div>+ - the fourth one for the root filesystem which can fill the rest of =
the available space</div><div>+</div><div>+- Copy the default @b barebox en=
vironment into the second partition (no filesystem required).</div><div>

+</div><div>+- Copy the kernel into the third partition (no filesystem requ=
ired).</div><div>+</div><div>+- Create the root filesystem in the 4th parti=
tion. You may copy an image into this</div><div>+ =C2=A0partition or you ca=
n do it in the classic way: mkfs on it, mount it and copy</div>

<div>+ =C2=A0all required data and programs into it.</div><div>+</div><div>=
+@section gpio_falconwing Available GPIOs</div><div>+</div><div>+The SID1 N=
OAH=C2=AC=E2=80=A0uses some GPIOs to control various features. With the reg=
ular</div><div>

+GPIO commands these features can be controlled at @a barebox&#39;s runtime=
.</div><div>+</div><div>+&lt;table width=3D&quot;100%&quot; border=3D&quot;=
1&quot; cellspacing=3D&quot;1&quot; cellpadding=3D&quot;3&quot;&gt;</div><d=
iv>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;tr&gt;</div>
<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;No&=
lt;/td&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&lt;td&gt;Direction&lt;/td&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Function&lt;/td&gt;</div><div>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Reset&lt;/td&gt;=
</div>
<div>
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Set&lt;/=
td&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/tr&gt;</div><div>+ =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&lt;tr&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;60&lt;/td&gt;</div><div>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Output&lt;/td&gt;</d=
iv><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;=
Display Backlight&lt;/td&gt;</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Bac=
klight&lt;br&gt;Off&lt;/td&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Backlight&lt;br&gt;On (100 %)&lt;/td&gt;<=
/div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/tr&gt;</div><div>+ =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&lt;tr&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0&lt;td&gt;62&lt;/td&gt;</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Inp=
ut&lt;/td&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0&lt;td&gt;Bend&lt;/td&gt;</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Not pressed&lt;/td&gt;</div><div>+ =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;td&gt;Pressed&lt;/td&g=
t;</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;/tr&gt;</div><div>+&lt;/table&gt;</di=
v><div>+*/</div><div>diff --git a/arch/arm/configs/noah_defconfig b/arch/ar=
m/configs/noah_defconfig</div><div>new file mode 100644</div><div>index 000=
0000..152f0bf</div>

<div>--- /dev/null</div><div>+++ b/arch/arm/configs/noah_defconfig</div><di=
v>@@ -0,0 +1,97 @@</div><div>+CONFIG_ARCH_IMX=3Dy</div><div>+CONFIG_ARCH_IM=
X_EXTERNAL_BOOT=3Dy</div><div>+CONFIG_ARCH_IMX25=3Dy</div><div>+CONFIG_MACH=
_MX25_NOAH=3Dy</div>

<div>+CONFIG_IMX_CLKO=3Dy</div><div>+CONFIG_IMX_IIM=3Dy</div><div>+CONFIG_A=
EABI=3Dy</div><div>+CONFIG_ARM_UNWIND=3Dy</div><div>+CONFIG_MMU=3Dy</div><d=
iv>+CONFIG_BROKEN=3Dy</div><div>+CONFIG_EXPERIMENTAL=3Dy</div><div>+CONFIG_=
PROMPT=3D&quot;sid1-noah:&quot;</div>

<div>+CONFIG_LONGHELP=3Dy</div><div>+CONFIG_GLOB=3Dy</div><div>+CONFIG_CMDL=
INE_EDITING=3Dy</div><div>+CONFIG_AUTO_COMPLETE=3Dy</div><div>+CONFIG_DEFAU=
LT_ENVIRONMENT_GENERIC=3Dy</div><div>+CONFIG_DEFAULT_ENVIRONMENT_PATH=3D&qu=
ot;arch/arm/boards/fq-sid1-mx25-noah/env&quot;</div>

<div>+CONFIG_BAREBOXENV_TARGET=3Dy</div><div>+CONFIG_ENABLE_FLASH_NOISE=3Dy=
</div><div>+CONFIG_ENABLE_PARTITION_NOISE=3Dy</div><div>+CONFIG_ENABLE_DEVI=
CE_NOISE=3Dy</div><div>+CONFIG_CMD_EDIT=3Dy</div><div>+CONFIG_CMD_SLEEP=3Dy=
</div><div>

+CONFIG_CMD_SAVEENV=3Dy</div><div>+CONFIG_CMD_EXPORT=3Dy</div><div>+CONFIG_=
CMD_PRINTENV=3Dy</div><div>+CONFIG_CMD_READLINE=3Dy</div><div>+CONFIG_CMD_T=
IME=3Dy</div><div>+CONFIG_CMD_AUTOMOUNT=3Dy</div><div>+CONFIG_CMD_ECHO_E=3D=
y</div><div>

+CONFIG_CMD_LOADB=3Dy</div><div>+CONFIG_CMD_LOADY=3Dy</div><div>+CONFIG_CMD=
_LOADS=3Dy</div><div>+CONFIG_CMD_SAVES=3Dy</div><div>+CONFIG_CMD_MEMINFO=3D=
y</div><div>+CONFIG_CMD_IOMEM=3Dy</div><div>+CONFIG_CMD_MD5SUM=3Dy</div><di=
v>+CONFIG_CMD_SHA1SUM=3Dy</div>

<div>+CONFIG_CMD_SHA256SUM=3Dy</div><div>+CONFIG_CMD_SHA224SUM=3Dy</div><di=
v>+CONFIG_CMD_MTEST=3Dy</div><div>+CONFIG_CMD_MTEST_ALTERNATIVE=3Dy</div><d=
iv>+CONFIG_CMD_FLASH=3Dy</div><div>+CONFIG_CMD_BOOTM_SHOW_TYPE=3Dy</div><di=
v>+CONFIG_CMD_BOOTM_VERBOSE=3Dy</div>

<div>+CONFIG_CMD_BOOTM_INITRD=3Dy</div><div>+CONFIG_CMD_BOOTM_OFTREE=3Dy</d=
iv><div>+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=3Dy</div><div>+CONFIG_CMD_UIMAGE=3D=
y</div><div>+CONFIG_CMD_RESET=3Dy</div><div>+CONFIG_CMD_GO=3Dy</div><div>+C=
ONFIG_CMD_OFTREE=3Dy</div>

<div>+CONFIG_CMD_TIMEOUT=3Dy</div><div>+CONFIG_CMD_PARTITION=3Dy</div><div>=
+CONFIG_CMD_MAGICVAR=3Dy</div><div>+CONFIG_CMD_MAGICVAR_HELP=3Dy</div><div>=
+CONFIG_CMD_BMP=3Dy</div><div>+CONFIG_CMD_GPIO=3Dy</div><div>+CONFIG_CMD_UN=
COMPRESS=3Dy</div>

<div>+CONFIG_CMD_I2C=3Dy</div><div>+CONFIG_CMD_LED=3Dy</div><div>+CONFIG_NE=
T=3Dy</div><div>+CONFIG_NET_DHCP=3Dy</div><div>+CONFIG_NET_NFS=3Dy</div><di=
v>+CONFIG_NET_PING=3Dy</div><div>+CONFIG_NET_TFTP=3Dy</div><div>+CONFIG_NET=
_TFTP_PUSH=3Dy</div>

<div>+CONFIG_NET_NETCONSOLE=3Dy</div><div>+CONFIG_NET_RESOLV=3Dy</div><div>=
+CONFIG_DRIVER_NET_FEC_IMX=3Dy</div><div>+CONFIG_DRIVER_SPI_IMX=3Dy</div><d=
iv>+CONFIG_I2C=3Dy</div><div>+CONFIG_I2C_IMX=3Dy</div><div>+CONFIG_DRIVER_C=
FI=3Dy</div>

<div>+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set</div><div>+# CONFIG_DRIVE=
R_CFI_BANK_WIDTH_4 is not set</div><div>+CONFIG_MTD=3Dy</div><div>+CONFIG_U=
SB=3Dy</div><div>+CONFIG_USB_EHCI=3Dy</div><div>+CONFIG_USB_OHCI=3Dy</div><=
div>

+CONFIG_USB_STORAGE=3Dy</div><div>+CONFIG_VIDEO=3Dy</div><div>+CONFIG_DRIVE=
R_VIDEO_IMX=3Dy</div><div>+CONFIG_MCI=3Dy</div><div>+CONFIG_MCI_STARTUP=3Dy=
</div><div>+CONFIG_MCI_IMX_ESDHC=3Dy</div><div>+CONFIG_LED=3Dy</div><div>+C=
ONFIG_LED_GPIO=3Dy</div>

<div>+CONFIG_EEPROM_AT25=3Dy</div><div>+CONFIG_FS_CRAMFS=3Dy</div><div>+CON=
FIG_FS_TFTP=3Dy</div><div>+CONFIG_FS_FAT=3Dy</div><div>+CONFIG_FS_FAT_WRITE=
=3Dy</div><div>+CONFIG_FS_FAT_LFN=3Dy</div><div>+CONFIG_BZLIB=3Dy</div><div=
>+CONFIG_LZO_DECOMPRESS=3Dy</div>

<div>diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig</di=
v><div>index 3236762..839de09 100644</div><div>--- a/arch/arm/mach-imx/Kcon=
fig</div><div>+++ b/arch/arm/mach-imx/Kconfig</div><div>@@ -23,6 +23,7 @@ c=
onfig ARCH_TEXT_BASE</div>

<div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>default 0x7ff00000 if MACH_MX53_SMD</div><div>=C2=A0<span class=3D"Apple-t=
ab-span" style=3D"white-space:pre">	</span>default 0x87f00000 if MACH_GUF_C=
UPID</div><div>

=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>defa=
ult 0x93d00000 if MACH_TX25</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>default 0x83f00000 if MACH_MX25_NOAH</div><div=
>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>def=
ault 0x7ff00000 if MACH_TQMA53</div>

<div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>default 0x97f00000 if MACH_TX51</div><div>=C2=A0<span class=3D"Apple-tab-s=
pan" style=3D"white-space:pre">	</span>default 0x4fc00000 if MACH_MX6Q_ARM2=
</div><div>@@ -47,6 +48,7 @@ config BOARDINFO</div>

<div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>default &quot;Freescale i.MX53 SMD&quot; if MACH_FREESCALE_MX53_SMD</div><=
div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>=
default &quot;Garz+Fricke Cupid&quot; if MACH_GUF_CUPID</div>

<div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>default &quot;Ka-Ro tx25&quot; if MACH_TX25</div><div>+<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>default &quot;SID1 NOAH&quot;=
 if MACH_MX25_NOAH</div>

<div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>default &quot;TQ tqma53&quot; if MACH_TQMA53</div><div>=C2=A0<span class=
=3D"Apple-tab-span" style=3D"white-space:pre">	</span>default &quot;Ka-Ro t=
x51&quot; if MACH_TX51</div>

<div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
>default &quot;Freescale i.MX6q armadillo2&quot; if MACH_MX6Q_ARM2</div><di=
v>@@ -251,6 +253,12 @@ config MACH_TX25</div><div>=C2=A0<span class=3D"Appl=
e-tab-span" style=3D"white-space:pre">	</span>help</div>

<div>=C2=A0<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span=
> =C2=A0Say Y here if you are using the Ka-Ro tx25 board</div><div>=C2=A0</=
div><div>+config MACH_MX25_NOAH</div><div>+<span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span>bool &quot;SID1 NOAH&quot;</div>

<div>+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>sele=
ct MACH_HAS_LOWLEVEL_INIT</div><div>+<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>help</div><div>+<span class=3D"Apple-tab-span"=
 style=3D"white-space:pre">	</span> =C2=A0Say Y here if you are using the S=
ID1 NOAH board</div>

<div>+</div><div>=C2=A0endchoice</div><div>=C2=A0</div><div>=C2=A0endif</di=
v><div>diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/=
mach-imx/include/mach/imx25-regs.h</div><div>index 73307c4..8225832 100644<=
/div><div>
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h</div>
<div>+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h</div><div>@@ -72,6 +=
72,7 @@</div><div>=C2=A0#define CCM_LTR1<span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">	</span>0x44</div><div>=C2=A0#define CCM_LTR2<span cl=
ass=3D"Apple-tab-span" style=3D"white-space:pre">	</span>0x48</div>

<div>=C2=A0#define CCM_LTR3<span class=3D"Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>0x4c</div><div>+#define CCM_MCR<span class=3D"Apple-tab-sp=
an" style=3D"white-space:pre">		</span>0x64</div><div>=C2=A0</div><div>=C2=
=A0#define PDR0_AUTO_MUX_DIV(x)<span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>(((x) &amp; 0x7) &lt;&lt; 9)</div>

<div>=C2=A0#define PDR0_CCM_PER_AHB(x)<span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>(((x) &amp; 0x7) &lt;&lt; 12)</div><div>@@ -10=
7,6 +108,22 @@</div><div>=C2=A0#define CSCR_L(x) =C2=A0 =C2=A0 (WEIM_BASE +=
 4 + (x) * 0x10)</div>

<div>=C2=A0#define CSCR_A(x) =C2=A0 =C2=A0 (WEIM_BASE + 8 + (x) * 0x10)</di=
v><div>=C2=A0</div><div>+/* Chip Select Registers */</div><div>+#define IMX=
_WEIM_BASE WEIM_BASE</div><div>+#define CSxU(x) __REG(IMX_WEIM_BASE + (cs *=
 0x10) + 0x00) /* Chip Select x Upper Register =C2=A0 =C2=A0*/</div>

<div>+#define CSxL(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x04) /* Chip Sel=
ect x Lower Register =C2=A0 =C2=A0*/</div><div>+#define CSxA(x) __REG(IMX_W=
EIM_BASE + (cs * 0x10) + 0x08) /* Chip Select x Addition Register */</div><=
div>+#define EIM =C2=A0__REG(IMX_WEIM_BASE + 0x60) /* WEIM Configuration Re=
gister =C2=A0 =C2=A0 */</div>

<div>+</div><div>+#ifndef __ASSEMBLY__</div><div>+static inline void imx25_=
setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned addional)<=
/div><div>+{</div><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0CSxU(cs) =3D upper;</di=
v><div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0CSxL(cs) =3D lower;</div>

<div>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0CSxA(cs) =3D addional;</div><div>+}</div>=
<div>+#endif /* __ASSEMBLY__ */</div><div>+</div><div>=C2=A0/*</div><div>=
=C2=A0 * Definitions for the clocksource driver</div><div>=C2=A0 *</div><di=
v><br></div><div>Thanks and best regards</div>

<div>Roberto =C2=A0</div></div>

--e89a8f3ba4b92fb4b004c12a1c34--


--===============8784144281687461080==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8784144281687461080==--
