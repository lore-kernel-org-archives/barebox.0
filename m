Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y1jb0-0001ba-Jg
 for barebox@lists.infradead.org; Thu, 18 Dec 2014 22:31:00 +0000
Received: by mail-lb0-f174.google.com with SMTP id 10so1742916lbg.5
 for <barebox@lists.infradead.org>; Thu, 18 Dec 2014 14:30:35 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 19 Dec 2014 01:32:37 +0300
Message-Id: <1418941957-6950-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] introduce ioremap() and dev_ioremap_resource()
To: barebox@lists.infradead.org

The commit

    commit 0d7a21334536cb36b3c9b64d868acc55aec41332
    Author: Antony Pavlov <antonynpavlov@gmail.com>
    Date:   Wed Sep 10 11:42:19 2014 +0400

        MIPS: dts: use physical addresses (as Linux does)

        With IOMEM() adapted for MIPS we can use physical addresses
        in device tree reg property.

is premature. Current device tree files unusable on real hardware.
                          I'M SO SORRY!
The patch was tested on qemu, but qemu malta board is tolerant
of using physical addresses for accesing to device. Real hardware
can throw an exception in this situation.

Additional physical address to virtual address translation on MIPS is needed.

This commit demonstrate a possible (but not very good) solution.
This solution is copied-and-pasted from linux kernel.
In linux drivers use devm_ioremap_resource() function, so
the patch just replicates similar dev_ioremap_resource() function.

Changing dev_request_mem_region() to dev_ioremap_resource()
is not a very good idea because there are too many dev_request_mem_region()
in barebox sources

    barebox$ git grep dev_request_mem_region | wc -l
    197

moreover dev_ioremap_resource() has the second 'struct resource *res'
argument, so additional dev_get_resource() is needed.

Can we insert ioremap() into dev_request_mem_region() directly?
(we also can use already existion IOMEM() macro instead of linux' ioremap()).

E.g.

--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -330,7 +330,7 @@ void __iomem *dev_request_mem_region(struct device_d
*dev, int num)
        if (IS_ERR(res))
                return ERR_CAST(res);

-       return (void __force __iomem *)res->start;
+       return ioremap((phys_t)res->start);
 }
 EXPORT_SYMBOL(dev_request_mem_region);

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/include/asm/io.h       |  5 +++++
 arch/mips/include/asm/io.h      |  7 +++++++
 common/resource.c               | 11 +++++++++++
 drivers/serial/serial_ns16550.c |  2 +-
 include/driver.h                |  2 ++
 5 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/io.h b/arch/arm/include/asm/io.h
index ccf1f59..ffe05b6 100644
--- a/arch/arm/include/asm/io.h
+++ b/arch/arm/include/asm/io.h
@@ -5,6 +5,11 @@
 
 #define	IO_SPACE_LIMIT	0
 
+static inline void __iomem *ioremap(phys_addr_t phys_addr)
+{
+        return (void __iomem *)phys_addr;
+}
+
 /*
  * String version of IO memory access ops:
  */
diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 4832be6..fa0b2d0 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -13,9 +13,16 @@
 #include <linux/compiler.h>
 #include <asm/types.h>
 #include <asm/byteorder.h>
+#include <asm/addrspace.h>
 
 #define	IO_SPACE_LIMIT	0
 
+static inline void __iomem *ioremap(phys_t phys_addr)
+{
+	return (void __iomem *)
+                               (unsigned long)CKSEG1ADDR(phys_addr);
+}
+
 /*****************************************************************************/
 /*
  * readX/writeX() are used to access memory mapped devices. On some
diff --git a/common/resource.c b/common/resource.c
index e4bbe15..79960fd 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -128,6 +128,17 @@ struct resource *request_iomem_region(const char *name,
 	return __request_region(&iomem_resource, name, start, end);
 }
 
+void __iomem *dev_ioremap_resource(struct device_d *dev, struct resource *res)
+{
+	struct resource *r;
+
+	r = request_iomem_region(dev_name(dev), res->start, res->end);
+	if (IS_ERR(r))
+		return ERR_CAST(r);
+
+	return ioremap(res->start);
+}
+
 /* The root resource for the whole io-mapped io space */
 struct resource ioport_resource = {
 	.start = 0,
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 8f2e93f..0e9e0f3 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -325,7 +325,7 @@ static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 	if (IS_ERR(res))
 		return PTR_ERR(res);
 
-	priv->mmiobase = dev_request_mem_region(dev, 0);
+	priv->mmiobase = dev_ioremap_resource(dev, res);
 	if (IS_ERR(priv->mmiobase))
 		return PTR_ERR(priv->mmiobase);
 
diff --git a/include/driver.h b/include/driver.h
index 53e1000..4fc1b63 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -206,6 +206,8 @@ void *dev_get_mem_region(struct device_d *dev, int num);
  */
 void __iomem *dev_request_mem_region(struct device_d *dev, int num);
 
+void __iomem *dev_ioremap_resource(struct device_d *dev, struct resource *res);
+
 struct device_d *device_alloc(const char *devname, int id);
 
 int device_add_resources(struct device_d *dev, const struct resource *res, int num);
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
