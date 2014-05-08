Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ie0-x230.google.com ([2607:f8b0:4001:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WiUnB-0001Ol-HL
 for barebox@lists.infradead.org; Thu, 08 May 2014 20:19:46 +0000
Received: by mail-ie0-f176.google.com with SMTP id rd18so3160483iec.21
 for <barebox@lists.infradead.org>; Thu, 08 May 2014 13:19:24 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 8 May 2014 16:19:23 -0400
Message-ID: <CAO6XYUugOzUA5VZtWA=zJ1BK01=B8O+X-9Gr+MA7PCX0uYUFAA@mail.gmail.com>
From: "Michael D. Burkey" <mdburkey@gmail.com>
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
Subject: [PATCH 1/1] Add option to OCOTP to retrieve iMX6 CPU serial #.
To: barebox@lists.infradead.org

This patch adds an option to the OCOTP file for the iMX6 to retrieve
the CPU serial number directly from the hardware using the
"barebox,provide-cpu-serial" devicetree entry.

Once retrieved, the CPU serial number is stuffed into the appropriate
ATAG for passing to the Linux kernel.

This functionality is required in order for barebox to match the
functionality provided by the current Variscite version of u-Boot and
is intended to work with the non-devicetree, Variscite 3.0.35 Linux
kernels (i.e. you need to do an "oftree -f" before attempting to boot
with one of the Variscite provided kernels).

Signed-off-by: Michael Burkey <mdburkey at gmail.com>
---

diff -rupN a/arch/arm/dts/imx6q-var-som.dtsi b/arch/arm/dts/imx6q-var-som.dtsi
--- a/arch/arm/dts/imx6q-var-som.dtsi	2014-05-05 04:33:13.000000000 -0400
+++ b/arch/arm/dts/imx6q-var-som.dtsi	2014-05-08 15:58:36.209506892 -0400
@@ -97,3 +97,7 @@
 		};
 	};
 };
+
+&ocotp {
+	barebox,provide-cpu-serial = <0x410>;
+};
diff -rupN a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
--- a/arch/arm/mach-imx/ocotp.c	2014-05-05 04:33:13.000000000 -0400
+++ b/arch/arm/mach-imx/ocotp.c	2014-05-08 15:59:47.636608932 -0400
@@ -25,6 +25,7 @@
 #include <net.h>
 #include <io.h>
 #include <of.h>
+#include <asm/armlinux.h>

 /*
  * a single MAC address reference has the form
@@ -32,6 +33,13 @@
  */
 #define MAC_ADDRESS_PROPLEN	(2 * sizeof(__be32))

+/*
+ * a single CPU serial number reference has the form
+ * <regoffset>
+ */
+#define CPU_SERIALNR_PROPLEN (1 * sizeof(__be32))
+
+
 static void imx_ocotp_init_dt(struct device_d *dev, void __iomem *base)
 {
 	char mac[6];
@@ -43,31 +51,53 @@ static void imx_ocotp_init_dt(struct dev
 		return;

 	prop = of_get_property(node, "barebox,provide-mac-address", &len);
-	if (!prop)
-		return;
-
-	while (len >= MAC_ADDRESS_PROPLEN) {
-		struct device_node *rnode;
-		uint32_t phandle, offset, value;
-
-		phandle = be32_to_cpup(prop++);
-
-		rnode = of_find_node_by_phandle(phandle);
-		offset = be32_to_cpup(prop++);
-
-		value = readl(base + offset + 0x10);
-		mac[0] = (value >> 8);
-		mac[1] = value;
-		value = readl(base + offset);
-		mac[2] = value >> 24;
-		mac[3] = value >> 16;
-		mac[4] = value >> 8;
-		mac[5] = value;
-
-		of_eth_register_ethaddr(rnode, mac);
-
-		len -= MAC_ADDRESS_PROPLEN;
-	}
+	if (prop)
+    {
+	    while (len >= MAC_ADDRESS_PROPLEN) {
+		    struct device_node *rnode;
+		    uint32_t phandle, offset, value;
+
+		    phandle = be32_to_cpup(prop++);
+
+		    rnode = of_find_node_by_phandle(phandle);
+		    offset = be32_to_cpup(prop++);
+
+		    value = readl(base + offset + 0x10);
+		    mac[0] = (value >> 8);
+		    mac[1] = value;
+		    value = readl(base + offset);
+		    mac[2] = value >> 24;
+		    mac[3] = value >> 16;
+		    mac[4] = value >> 8;
+		    mac[5] = value;
+
+		    of_eth_register_ethaddr(rnode, mac);
+
+		    len -= MAC_ADDRESS_PROPLEN;
+	    }
+    }
+
+	prop = of_get_property(node, "barebox,provide-cpu-serial", &len);
+	if (prop)
+    {
+        while (len >= CPU_SERIALNR_PROPLEN) {
+            u64 serialnr;
+		    uint32_t offset;
+
+		    offset = be32_to_cpup(prop++);
+
+        	/* Read the i.MX6 Processor Serial # from the fuses */
+        	serialnr = (u64) readl(base + offset);
+        	serialnr |= ((u64) readl(base + offset + 0x10)) << 32;
+
+            /* Set the appropriate system MagicVar */
+        	armlinux_set_serial(serialnr);	
+
+		    len -= CPU_SERIALNR_PROPLEN;
+        }
+    }
+
+	return;
 }

 static int imx_ocotp_probe(struct device_d *dev)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
