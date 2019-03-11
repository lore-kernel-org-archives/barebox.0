Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3Krp-0006RH-Nd
 for barebox@lists.infradead.org; Mon, 11 Mar 2019 13:21:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Mar 2019 14:21:10 +0100
Message-Id: <20190311132111.27237-2-s.hauer@pengutronix.de>
In-Reply-To: <20190311132111.27237-1-s.hauer@pengutronix.de>
References: <20190311132111.27237-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] net: phy: Add register access helper functions for phys
To: Barebox List <barebox@lists.infradead.org>

Linux has phy helpers to access paged registers and to modify phy
registers. Add them to barebox for upcoming realtek phy support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/Makefile   |   2 +-
 drivers/net/phy/phy-core.c | 175 +++++++++++++++++++++++++++++++++++++
 include/linux/phy.h        |  35 ++++++++
 3 files changed, 211 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/phy/phy-core.c

diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
index 5f11a857d4..5dd9bd5fd3 100644
--- a/drivers/net/phy/Makefile
+++ b/drivers/net/phy/Makefile
@@ -1,4 +1,4 @@
-obj-y += phy.o mdio_bus.o
+obj-y += phy.o mdio_bus.o phy-core.o
 obj-$(CONFIG_AR8327N_PHY)	+= ar8327.o
 obj-$(CONFIG_AT803X_PHY)	+= at803x.o
 obj-$(CONFIG_DAVICOM_PHY)	+= davicom.o
diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
new file mode 100644
index 0000000000..21daaa9a2b
--- /dev/null
+++ b/drivers/net/phy/phy-core.c
@@ -0,0 +1,175 @@
+#include <common.h>
+#include <linux/phy.h>
+
+/**
+ * phy_modify - Convenience function for modifying a given PHY register
+ * @phydev: the phy_device struct
+ * @regnum: register number to write
+ * @mask: bit mask of bits to clear
+ * @set: new value of bits set in mask to write to @regnum
+ *
+ */
+int phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set)
+{
+	int ret;
+
+	ret = phy_read(phydev, regnum);
+	if (ret < 0)
+		return ret;
+
+	ret = phy_write(phydev, regnum, (ret & ~mask) | set);
+
+	return ret < 0 ? ret : 0;
+}
+
+static int phy_read_page(struct phy_device *phydev)
+{
+	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
+
+	return phydrv->read_page(phydev);
+}
+
+static int phy_write_page(struct phy_device *phydev, int page)
+{
+	struct phy_driver *phydrv = to_phy_driver(phydev->dev.driver);
+
+	return phydrv->write_page(phydev, page);
+}
+
+/**
+ * phy_save_page() - take the bus lock and save the current page
+ * @phydev: a pointer to a &struct phy_device
+ *
+ * Take the MDIO bus lock, and return the current page number. On error,
+ * returns a negative errno. phy_restore_page() must always be called
+ * after this, irrespective of success or failure of this call.
+ */
+int phy_save_page(struct phy_device *phydev)
+{
+	return phy_read_page(phydev);
+}
+
+/**
+ * phy_select_page() - take the bus lock, save the current page, and set a page
+ * @phydev: a pointer to a &struct phy_device
+ * @page: desired page
+ *
+ * Take the MDIO bus lock to protect against concurrent access, save the
+ * current PHY page, and set the current page.  On error, returns a
+ * negative errno, otherwise returns the previous page number.
+ * phy_restore_page() must always be called after this, irrespective
+ * of success or failure of this call.
+ */
+int phy_select_page(struct phy_device *phydev, int page)
+{
+	int ret, oldpage;
+
+	oldpage = ret = phy_save_page(phydev);
+	if (ret < 0)
+		return ret;
+
+	if (oldpage != page) {
+		ret = phy_write_page(phydev, page);
+		if (ret < 0)
+			return ret;
+	}
+
+	return oldpage;
+}
+
+/**
+ * phy_restore_page() - restore the page register and release the bus lock
+ * @phydev: a pointer to a &struct phy_device
+ * @oldpage: the old page, return value from phy_save_page() or phy_select_page()
+ * @ret: operation's return code
+ *
+ * Release the MDIO bus lock, restoring @oldpage if it is a valid page.
+ * This function propagates the earliest error code from the group of
+ * operations.
+ *
+ * Returns:
+ *   @oldpage if it was a negative value, otherwise
+ *   @ret if it was a negative errno value, otherwise
+ *   phy_write_page()'s negative value if it were in error, otherwise
+ *   @ret.
+ */
+int phy_restore_page(struct phy_device *phydev, int oldpage, int ret)
+{
+	int r;
+
+	if (oldpage >= 0) {
+		r = phy_write_page(phydev, oldpage);
+
+		/* Propagate the operation return code if the page write
+		 * was successful.
+		 */
+		if (ret >= 0 && r < 0)
+			ret = r;
+	} else {
+		/* Propagate the phy page selection error code */
+		ret = oldpage;
+	}
+
+	return ret;
+}
+
+/**
+ * phy_read_paged() - Convenience function for reading a paged register
+ * @phydev: a pointer to a &struct phy_device
+ * @page: the page for the phy
+ * @regnum: register number
+ *
+ * Same rules as for phy_read().
+ */
+int phy_read_paged(struct phy_device *phydev, int page, u32 regnum)
+{
+	int ret = 0, oldpage;
+
+	oldpage = phy_select_page(phydev, page);
+	if (oldpage >= 0)
+		ret = phy_read(phydev, regnum);
+
+	return phy_restore_page(phydev, oldpage, ret);
+}
+
+/**
+ * phy_write_paged() - Convenience function for writing a paged register
+ * @phydev: a pointer to a &struct phy_device
+ * @page: the page for the phy
+ * @regnum: register number
+ * @val: value to write
+ *
+ * Same rules as for phy_write().
+ */
+int phy_write_paged(struct phy_device *phydev, int page, u32 regnum, u16 val)
+{
+	int ret = 0, oldpage;
+
+	oldpage = phy_select_page(phydev, page);
+	if (oldpage >= 0)
+		ret = phy_write(phydev, regnum, val);
+
+	return phy_restore_page(phydev, oldpage, ret);
+}
+
+/**
+ * phy_modify_paged() - Convenience function for modifying a paged register
+ * @phydev: a pointer to a &struct phy_device
+ * @page: the page for the phy
+ * @regnum: register number
+ * @mask: bit mask of bits to clear
+ * @set: bit mask of bits to set
+ *
+ * Same rules as for phy_read() and phy_write().
+ */
+int phy_modify_paged(struct phy_device *phydev, int page, u32 regnum,
+		     u16 mask, u16 set)
+{
+	int ret = 0, oldpage;
+
+	oldpage = phy_select_page(phydev, page);
+	if (oldpage >= 0)
+		ret = phy_modify(phydev, regnum, mask, set);
+
+	return phy_restore_page(phydev, oldpage, ret);
+}
diff --git a/include/linux/phy.h b/include/linux/phy.h
index ce72861bfc..a9fdf44f1a 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -267,6 +267,9 @@ struct phy_driver {
 	/* Clears up any memory if needed */
 	void (*remove)(struct phy_device *phydev);
 
+	int (*read_page)(struct phy_device *phydev);
+	int (*write_page)(struct phy_device *phydev, int page);
+
 	struct driver_d	 drv;
 };
 #define to_phy_driver(d) ((d) ? container_of(d, struct phy_driver, drv) : NULL)
@@ -293,6 +296,14 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
 int phy_init(void);
 int phy_init_hw(struct phy_device *phydev);
 
+int phy_save_page(struct phy_device *phydev);
+int phy_select_page(struct phy_device *phydev, int page);
+int phy_restore_page(struct phy_device *phydev, int oldpage, int ret);
+int phy_read_paged(struct phy_device *phydev, int page, u32 regnum);
+int phy_write_paged(struct phy_device *phydev, int page, u32 regnum, u16 val);
+int phy_modify_paged(struct phy_device *phydev, int page, u32 regnum,
+		     u16 mask, u16 set);
+
 struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id);
 int phy_register_device(struct phy_device* dev);
 void phy_unregister_device(struct phy_device *phydev);
@@ -318,6 +329,30 @@ static inline int phy_write(struct phy_device *phydev, u32 regnum, u16 val)
 	return mdiobus_write(phydev->bus, phydev->addr, regnum, val);
 }
 
+int phy_modify(struct phy_device *phydev, u32 regnum, u16 mask, u16 set);
+
+/**
+ * phy_set_bits - Convenience function for setting bits in a PHY register
+ * @phydev: the phy_device struct
+ * @regnum: register number to write
+ * @val: bits to set
+ */
+static inline int phy_set_bits(struct phy_device *phydev, u32 regnum, u16 val)
+{
+	return phy_modify(phydev, regnum, 0, val);
+}
+
+/**
+ * phy_clear_bits - Convenience function for clearing bits in a PHY register
+ * @phydev: the phy_device struct
+ * @regnum: register number to write
+ * @val: bits to clear
+ */
+static inline int phy_clear_bits(struct phy_device *phydev, u32 regnum, u16 val)
+{
+	return phy_modify(phydev, regnum, val, 0);
+}
+
 int phy_device_connect(struct eth_device *dev, struct mii_bus *bus, int addr,
 		       void (*adjust_link) (struct eth_device *edev),
 		       u32 flags, phy_interface_t interface);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
