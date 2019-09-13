Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8lPc-0004oi-ME
 for barebox@lists.infradead.org; Fri, 13 Sep 2019 13:14:59 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 13 Sep 2019 15:14:46 +0200
Message-Id: <20190913131446.8202-9-m.tretter@pengutronix.de>
In-Reply-To: <20190913131446.8202-1-m.tretter@pengutronix.de>
References: <20190913131446.8202-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v3 8/8] dtc: optionally add add __symbols__ to build-in
 devicetree
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The devicetree overlay driver requires the __symbols__ node to resolve
phandles to the base devicetree. If Barebox has to apply the overlay to
the live devicetree, the build-in devicetree must be built with the
__symbols__ node.

It is configurable, because adding __symbols__ significantly increases
the size of the devicetree binary. When configuring Barebox, a developer
should be able to enable or disable devicetree overlay support and as
this only affects the build-in devicetree, which is linked to the image
anyway, use a Kconfig item for configuring the __symbols__.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changelog:

v2->v3:
- make __symbols__ configurable

v1->v2: none
---
 drivers/of/Kconfig   | 17 +++++++++++++++++
 scripts/Makefile.lib |  4 ++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 1bb6639c5a..fd820b26f5 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -59,3 +59,20 @@ config OF_OVERLAY
 	  not patch the live devicetree, but applies the overlays as fixup to
 	  the devicetree. Furthermore, overlays cannot be removed after they
 	  have been applied.
+
+config OF_OVERLAY_LIVE
+	depends on OF_OVERLAY
+	default n
+	bool "Support devicetree overlays on live devicetree"
+	help
+	  This option allows to use devicetree overlays with the live
+	  devicetree. It is not required to apply overlays to any other
+	  devicetree.
+
+	  This builds the build-in devicetree with __symbols__, which
+	  significantly increases the size of the dtb file.
+
+	  Enable this option only if you actually need the live devicetree
+	  while applying in the devicetree overlay. This is usually the case if
+	  applying the overlay has other side effects than changing the
+	  devicetree.
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index c4d307ae30..ad0484de3a 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -292,6 +292,10 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
 	 -Wno-unique_unit_address \
 	 -Wno-pci_device_reg
 
+ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
+DTC_FLAGS += -@
+endif
+
 # Generate an assembly file to wrap the output of the device tree compiler
 quiet_cmd_dt_S_dtb = DTB     $@
 cmd_dt_S_dtb = $(srctree)/scripts/gen-dtb-s $(subst -,_,$(*F)) $< $(CONFIG_IMD) > $@
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
