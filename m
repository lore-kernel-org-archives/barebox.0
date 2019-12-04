Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUDP-0001Gd-FF
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 12:57:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Dec 2019 13:56:56 +0100
Message-Id: <20191204125659.22506-7-a.fatoum@pengutronix.de>
In-Reply-To: <20191204125659.22506-1-a.fatoum@pengutronix.de>
References: <20191204125659.22506-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/9] PCI: copy over some Linux PCI helpers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Linux PCI drivers, like the incoming 8250_pci, make use of these
helpers. Port them over from Linux v5.4.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pci/bus.c   | 26 ++++++++++++++++++++++++++
 include/linux/pci.h | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)

diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index ac1562330788..251be4fffa6e 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -23,6 +23,32 @@ pci_match_one_device(const struct pci_device_id *id, const struct pci_dev *dev)
 	return NULL;
 }
 
+/**
+ * pci_match_id - See if a pci device matches a given pci_id table
+ * @ids: array of PCI device id structures to search in
+ * @dev: the PCI device structure to match against.
+ *
+ * Used by a driver to check whether a PCI device present in the
+ * system is in its list of supported devices.  Returns the matching
+ * pci_device_id structure or %NULL if there is no match.
+ *
+ * Deprecated, don't use this as it will not catch any dynamic ids
+ * that a driver might want to check for.
+ */
+const struct pci_device_id *pci_match_id(const struct pci_device_id *ids,
+					 struct pci_dev *dev)
+{
+	if (ids) {
+		while (ids->vendor || ids->subvendor || ids->class_mask) {
+			if (pci_match_one_device(ids, dev))
+				return ids;
+			ids++;
+		}
+	}
+	return NULL;
+}
+EXPORT_SYMBOL(pci_match_id);
+
 static int pci_match(struct device_d *dev, struct driver_d *drv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index d92d70b6bd68..c742570e3684 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -115,6 +115,17 @@ struct pci_dev {
 };
 #define	to_pci_dev(d) container_of(d, struct pci_dev, dev)
 
+#define pci_resource_start(dev, bar)	((dev)->resource[(bar)].start)
+#define pci_resource_end(dev, bar)	((dev)->resource[(bar)].end)
+#define pci_resource_flags(dev, bar)	((dev)->resource[(bar)].flags)
+#define pci_resource_len(dev,bar) \
+	((pci_resource_start((dev), (bar)) == 0 &&	\
+	  pci_resource_end((dev), (bar)) ==		\
+	  pci_resource_start((dev), (bar))) ? 0 :	\
+							\
+	 (pci_resource_end((dev), (bar)) -		\
+	  pci_resource_start((dev), (bar)) + 1))
+
 enum {
 	PCI_BUS_RESOURCE_IO = 0,
 	PCI_BUS_RESOURCE_MEM = 1,
@@ -210,6 +221,20 @@ struct pci_driver {
 	.vendor = (vend), .device = (dev), \
 	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID
 
+/**
+ * PCI_DEVICE_SUB - macro used to describe a specific PCI device with subsystem
+ * @vend: the 16 bit PCI Vendor ID
+ * @dev: the 16 bit PCI Device ID
+ * @subvend: the 16 bit PCI Subvendor ID
+ * @subdev: the 16 bit PCI Subdevice ID
+ *
+ * This macro is used to create a struct pci_device_id that matches a
+ * specific device with subsystem information.
+ */
+#define PCI_DEVICE_SUB(vend, dev, subvend, subdev) \
+	.vendor = (vend), .device = (dev), \
+	.subvendor = (subvend), .subdevice = (subdev)
+
 /**
  * PCI_DEVICE_CLASS - macro used to describe a specific pci device class
  * @dev_class: the class, subclass, prog-if triple for this device
@@ -350,4 +375,13 @@ enum pci_fixup_pass {
 
 void pci_fixup_device(enum pci_fixup_pass pass, struct pci_dev *dev);
 
+#ifdef CONFIG_PCI
+const struct pci_device_id *pci_match_id(const struct pci_device_id *ids,
+					 struct pci_dev *dev);
+#else
+static inline const struct pci_device_id *pci_match_id(const struct pci_device_id *ids,
+							 struct pci_dev *dev)
+{ return NULL; }
+#endif
+
 #endif /* LINUX_PCI_H */
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
