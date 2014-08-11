Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XGwHM-0003CP-MO
 for barebox@lists.infradead.org; Mon, 11 Aug 2014 20:33:17 +0000
Date: Mon, 11 Aug 2014 17:31:51 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140811203151.GA31137@arch.cereza>
References: <1407761351-12344-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <147c64f0830.2784.107cef0f820c2f5d7b7f41463071c310@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <147c64f0830.2784.107cef0f820c2f5d7b7f41463071c310@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] ARM: mvebu: Add Plathome Kirkwood Openblocks A6 board
 support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 11 Aug 08:23 PM, Sebastian Hesselbarth wrote:
> On August 11, 2014 2:50:22 PM Ezequiel Garcia
> <ezequiel.garcia@free-electrons.com> wrote:
> =

> >This commit adds a new Marvell Kirkwood-based board. This is an almost b=
lind
> >copy-paste of the currently supported boards, and so I'm sending it as a=
n RFC.
> >
> >Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> >---
> > arch/arm/boards/Makefile                          |  1 +
> > arch/arm/boards/plathome-openblocks-a6/Makefile   |  2 ++
> > arch/arm/boards/plathome-openblocks-a6/board.c    |  1 +
> > arch/arm/boards/plathome-openblocks-a6/lowlevel.c | 32 ++++++++++++++++=
+++++++
> > arch/arm/dts/Makefile                             |  1 +
> > arch/arm/dts/kirkwood-openblocks_a6-bb.dts        | 11 ++++++++
> > arch/arm/mach-mvebu/Kconfig                       |  3 +++
> > images/Makefile.mvebu                             | 11 ++++++++
> > 8 files changed, 62 insertions(+)
> > create mode 100644 arch/arm/boards/plathome-openblocks-a6/Makefile
> > create mode 100644 arch/arm/boards/plathome-openblocks-a6/board.c
> > create mode 100644 arch/arm/boards/plathome-openblocks-a6/lowlevel.c
> > create mode 100644 arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> >
> >diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> >index c60da81..122f5cd 100644
> >--- a/arch/arm/boards/Makefile
> >+++ b/arch/arm/boards/Makefile
> >@@ -79,6 +79,7 @@ obj-$(CONFIG_MACH_PCM049)			+=3D phytec-phycore-omap44=
60/
> > obj-$(CONFIG_MACH_PCM051)			+=3D phytec-phycore-am335x/
> > obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+=3D phytec-phyflex-imx6/
> > obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+=3D plathome-openblocks-ax3/
> >+obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+=3D plathome-openblocks-a6/
> > obj-$(CONFIG_MACH_PM9261)			+=3D pm9261/
> > obj-$(CONFIG_MACH_PM9263)			+=3D pm9263/
> > obj-$(CONFIG_MACH_PM9G45)			+=3D pm9g45/
> >diff --git a/arch/arm/boards/plathome-openblocks-a6/Makefile
> >b/arch/arm/boards/plathome-openblocks-a6/Makefile
> >new file mode 100644
> >index 0000000..01c7a25
> >--- /dev/null
> >+++ b/arch/arm/boards/plathome-openblocks-a6/Makefile
> >@@ -0,0 +1,2 @@
> >+obj-y +=3D board.o
> >+lwl-y +=3D lowlevel.o
> >diff --git a/arch/arm/boards/plathome-openblocks-a6/board.c
> >b/arch/arm/boards/plathome-openblocks-a6/board.c
> >new file mode 100644
> >index 0000000..40a8c17
> >--- /dev/null
> >+++ b/arch/arm/boards/plathome-openblocks-a6/board.c
> >@@ -0,0 +1 @@
> >+/* empty */
> >diff --git a/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
> >b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
> >new file mode 100644
> >index 0000000..b37a3d6
> >--- /dev/null
> >+++ b/arch/arm/boards/plathome-openblocks-a6/lowlevel.c
> >@@ -0,0 +1,32 @@
> >+/*
> >+ * This program is free software; you can redistribute it and/or
> >+ * modify it under the terms of the GNU General Public License as
> >+ * published by the Free Software Foundation; either version 2 of
> >+ * the License, or (at your option) any later version.
> >+ *
> >+ * This program is distributed in the hope that it will be useful,
> >+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
> >+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> >+ * GNU General Public License for more details.
> >+ *
> >+ */
> >+
> >+#include <common.h>
> >+#include <sizes.h>
> >+#include <asm/barebox-arm.h>
> >+#include <asm/barebox-arm-head.h>
> >+#include <mach/lowlevel.h>
> >+
> >+extern char __dtb_kirkwood_openblocks_a6_bb_start[];
> >+
> >+ENTRY_FUNCTION(start_plathome_openblocks_a6, r0, r1, r2)
> >+{
> >+	void *fdt;
> >+
> >+	arm_cpu_lowlevel_init();
> >+
> >+	fdt =3D __dtb_kirkwood_openblocks_a6_bb_start -
> >+		get_runtime_offset();
> >+
> >+	mvebu_barebox_entry(fdt);
> >+}
> >diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> >index 9bff8a0..4b8d58a 100644
> >--- a/arch/arm/dts/Makefile
> >+++ b/arch/arm/dts/Makefile
> >@@ -23,6 +23,7 @@ pbl-dtb-$(CONFIG_MACH_PCM038) +=3D
> >imx27-phytec-phycore-rdk.dtb.o
> > pbl-dtb-$(CONFIG_MACH_PCM051) +=3D am335x-phytec-phycore.dtb.o
> > pbl-dtb-$(CONFIG_MACH_PHYTEC_PFLA02) +=3D imx6s-phytec-pbab01.dtb.o
> >imx6dl-phytec-pbab01.dtb.o imx6q-phytec-pbab01.dtb.o
> > pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) +=3D
> >armada-xp-openblocks-ax3-4-bb.dtb.o
> >+pbl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) +=3D
> >kirkwood-openblocks_a6-bb.dtb.o
> > pbl-dtb-$(CONFIG_MACH_RADXA_ROCK) +=3D rk3188-radxarock.dtb.o
> > pbl-dtb-$(CONFIG_MACH_REALQ7) +=3D imx6q-dmo-edmqmx6.dtb.o
> > pbl-dtb-$(CONFIG_MACH_SABRELITE) +=3D imx6q-sabrelite.dtb.o
> >imx6dl-sabrelite.dtb.o
> >diff --git a/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> >b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> >new file mode 100644
> >index 0000000..84e06cd
> >--- /dev/null
> >+++ b/arch/arm/dts/kirkwood-openblocks_a6-bb.dts
> >@@ -0,0 +1,11 @@
> >+/*
> >+ * Barebox specific DT overlay for OpenBlocks A6 board
> >+ */
> >+
> >+#include "arm/kirkwood-openblocks_a6.dts"
> >+
> >+/ {
> >+	chosen {
> >+		stdout-path =3D "/ocp@f1000000/serial@12000";
> =

> Nit: above serial node on Kirkwood has a label, i.e. you should use &uart0
> instead. Also, this should go into the upstream dts, too.
> =


Ah, OK. In that case, do you think we still need the devicetree overlay?

-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
