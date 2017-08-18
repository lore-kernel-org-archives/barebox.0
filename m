Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dihmY-00014r-6v
 for barebox@lists.infradead.org; Fri, 18 Aug 2017 13:57:55 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 18 Aug 2017 15:57:04 +0200
Message-Id: <20170818135707.17578-2-linux@rempel-privat.de>
In-Reply-To: <20170818135707.17578-1-linux@rempel-privat.de>
References: <20170818135707.17578-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 1/4] of: base: port of_device_is_big_endian from linux
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

|commit 37786c7fee40771d13901de129af7e084ed48b55
|Author: Kevin Cernekee <cernekee@gmail.com>
|Date:   Thu Apr 9 13:05:14 2015 -0700
|
|    of: Add helper function to check MMIO register endianness
|
|    SoC peripherals can come in several different flavors:
|
|     - little-endian: registers always need to be accessed in LE mode (so the
|       kernel should perform a swap if the CPU is running BE)
|
|     - big-endian: registers always need to be accessed in BE mode (so the
|       kernel should perform a swap if the CPU is running LE)
|
|     - native-endian: the bus will automatically swap accesses, so the kernel
|       should never swap
|
|    Introduce a function that checks an OF device node to see whether it
|    contains a "big-endian" or "native-endian" property.  For the former case,
|    always return true.  For the latter case, return true iff the kernel was
|    built for BE (implying that the BE MMIO accessors do not perform a swap).
|    Otherwise return false, assuming LE registers.
|
|    LE registers are assumed by default because most existing drivers (libahci,
|    serial8250, usb) always use readl/writel in the absence of instructions
|    to the contrary, so that will be our fallback.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/of/base.c | 23 +++++++++++++++++++++++
 include/of.h      |  6 ++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ea330d131..95bea4ee8 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1622,6 +1622,29 @@ int of_device_is_available(const struct device_node *device)
 EXPORT_SYMBOL(of_device_is_available);
 
 /**
+ *  of_device_is_big_endian - check if a device has BE registers
+ *
+ *  @device: Node to check for endianness
+ *
+ *  Returns true if the device has a "big-endian" property, or if the kernel
+ *  was compiled for BE *and* the device has a "native-endian" property.
+ *  Returns false otherwise.
+ *
+ *  Callers would nominally use ioread32be/iowrite32be if
+ *  of_device_is_big_endian() == true, or readl/writel otherwise.
+ */
+bool of_device_is_big_endian(const struct device_node *device)
+{
+	if (of_property_read_bool(device, "big-endian"))
+		return true;
+	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN) &&
+	    of_property_read_bool(device, "native-endian"))
+		return true;
+	return false;
+}
+EXPORT_SYMBOL(of_device_is_big_endian);
+
+/**
  *	of_get_parent - Get a node's parent if any
  *	@node:	Node to get parent
  *
diff --git a/include/of.h b/include/of.h
index 0ba73f197..9ba771a39 100644
--- a/include/of.h
+++ b/include/of.h
@@ -150,6 +150,7 @@ extern int of_machine_is_compatible(const char *compat);
 extern int of_device_is_compatible(const struct device_node *device,
 		const char *compat);
 extern int of_device_is_available(const struct device_node *device);
+extern bool of_device_is_big_endian(const struct device_node *device);
 
 extern struct device_node *of_get_parent(const struct device_node *node);
 extern struct device_node *of_get_next_available_child(
@@ -595,6 +596,11 @@ static inline int of_device_is_available(const struct device_node *device)
 	return 0;
 }
 
+static inline bool of_device_is_big_endian(const struct device_node *device)
+{
+	return false;
+}
+
 static inline void of_alias_scan(void)
 {
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
