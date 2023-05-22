Delivery-date: Mon, 22 May 2023 07:30:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7b-009JDO-5P
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7Y-00030V-Kf
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jveG2s4kD11J3DMJGqcgFy+8UUZExiVO21W3rTbQXS8=; b=awiw6Gmpj2Fy1M
	pyr2Zn7DaxJSEKLUyUtYxpDODoFOybHY1qR1jC/QA0tGCGPQgHi875baEiPFYt8UuacUdrqJmFsSS
	9vqZ5c0O6pTYKtLp67PIPhfPa5xhifXuSU6N7l0Ga6t9OAdXYveRrhoFnouzSGJxlh2WcRyi8x+/Q
	lQNKRxRcslMFU++gsHoZ4NSu/H7Qv2oTYc+r0JrCZHdJX1TlH1wvL5qIt/+DTNBSvsIx87WrFwbMf
	6X6Zmu2Bf01vEcDiWyXfVl93v+MaZrHZcLpPdhLMfhJ8nDEzyhqdLrPYbzmvQFWk3xNn9fL7DnpPW
	QHjOPeL/K5O5RgPQnGaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6H-005Oak-2i;
	Mon, 22 May 2023 05:28:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y66-005OUk-28
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-0002Lc-EO; Mon, 22 May 2023 07:28:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y61-001vva-T8; Mon, 22 May 2023 07:28:37 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLM-LF; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:29 +0200
Message-Id: <20230522052835.1039143-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_483335_4849B2A3 
X-CRM114-Status: GOOD (  24.46  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/11] of: platform: remap memory when encountering virtual-reg property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Quoting the Device Tree specification v0.4-rc1[1]:

  The virtual-reg property specifies an effective address that maps to the
  first physical address specified in the reg property of the device node.
  This property enables boot programs to provide client programs with virtual-
  to-physical mappings that have been set up.

The only upstream use of this device tree property are some PowerPC
device trees that use it to find the virtual address of the early UART.

Let's start handling this property in barebox as well by remapping the
device to start at virtual-reg.

[1]: https://github.com/devicetree-org/devicetree-specification/releases/tag/v0.4-rc1

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../bindings/barebox/virtual-reg.rst          | 29 +++++++++++++++++++
 drivers/mtd/nor/cfi_flash.c                   |  5 +++-
 drivers/of/platform.c                         | 20 +++++++++++++
 3 files changed, 53 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/barebox/virtual-reg.rst

diff --git a/Documentation/devicetree/bindings/barebox/virtual-reg.rst b/Documentation/devicetree/bindings/barebox/virtual-reg.rst
new file mode 100644
index 000000000000..7d576d0cef6f
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/virtual-reg.rst
@@ -0,0 +1,29 @@
+virtual-reg property
+====================
+
+The ``virtual-reg`` property provides a hint on the 32-bit virtual
+address mapping the first physical base address in the ``reg`` property.
+This is meant to allow the OS to use the boot firmware's virtual memory
+mapping to access device resources early in the kernel boot process.
+
+When barebox is compiled with ``CONFIG_MMU`` support and the
+implementation supports remapping, devices with ``virtual_reg`` will have
+all their resources remapped at the physical/virtual address offset calculated
+by subtracting ``virtual-reg`` from the first address in ``reg``.
+
+This is normally used to map I/O memory away from the zero page, so it
+can be used again to trap null pointer dereferences, while allowing
+full access to the device memory::
+
+.. code-block:: none
+
+   &{/soc} {
+   	#address-cells = <1>;
+   	#size-cells = <1>;
+
+        flash@0 {
+             reg = <0 0x10000>;
+             virtual-reg = <0x1000>;
+	     /* => memory region remapped from [0x1000, 0x11000] to [0x0000, 0x10000] */
+        };
+  };
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index b7499c93aee4..10542c710118 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -973,7 +973,10 @@ static int cfi_probe_one(struct flash_info *info, int num)
 		return PTR_ERR(iores);
 	info->base = IOMEM(iores->start);
 
-	/* TODO: either remap memory region or disable NULL pointer page */
+	/*
+	 * Platforms hitting this should remap memory region, e.g. via virtual-reg
+	 * device tree property or disable MMU.
+	 */
 	if (IS_ENABLED(CONFIG_MMU) && iores->start == 0)
 		return -EPERM;
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 23b8fa79348b..ab737629325a 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -12,6 +12,7 @@
 #include <of.h>
 #include <of_address.h>
 #include <linux/amba/bus.h>
+#include <mmu.h>
 
 /**
  * of_find_device_by_node - Find the platform_device associated with a node
@@ -145,6 +146,7 @@ struct device *of_platform_device_create(struct device_node *np,
 	struct resource *res = NULL, temp_res;
 	resource_size_t resinval;
 	int i, ret, num_reg = 0;
+	u32 virt;
 
 	if (!of_device_is_available(np))
 		return NULL;
@@ -186,6 +188,24 @@ struct device *of_platform_device_create(struct device_node *np,
 
 	of_dma_configure(dev, np);
 
+	if (num_reg && !of_property_read_u32(np, "virtual-reg", &virt)) {
+		resource_size_t remap_offset = virt - res[0].start;
+
+		for (i = 0; i < num_reg; i++) {
+			void *new_virt = (void *)res[i].start + remap_offset;
+			resource_size_t size = resource_size(&res[i]);
+
+			ret = arch_remap_range(new_virt, res[i].start, size, MAP_UNCACHED);
+			if (!ret) {
+				debug("%s: remap device %s resource %d: %pa -> 0x%p\n",
+				      __func__, dev_name(dev), i, &res[i].start, new_virt);
+
+				res[i].start = (resource_size_t)new_virt;
+				res[i].end = res[i].start + size - 1;
+			}
+		}
+	}
+
 	resinval = (-1);
 
 	debug("%s: register device %s, io=%pa\n",
-- 
2.39.2



