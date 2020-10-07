Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ66A-0005n1-U1
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 09:51:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Oct 2020 11:50:52 +0200
Message-Id: <20201007095058.22950-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 1/7] driver: introduce less error-prone dev_get_drvdata
 alternative
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We use dev_get_drvdata to get the driver match data associated with a
device. This has two shortcomings:

 - Linux has dev_get_drvdata too, which returns a private pointer for
   driver specific info to associate with a device. We use dev->priv
   (or more often container_of) for that in barebox instead

 - It nearly always involves a cast to a double pointer, which is
   error-prone as size and alignment match need to be ensured
   on the programmer's part and can easily be gotten wrong:
	enum dev_type type;
	dev_get_drvdata(dev, (const void **)&type); // UB!

Add a new function that instead of using a double pointer argument,
returns the pointer directly:

 - For normal pointer driver data, no cast is necessary
 - For integer driver data casted to a pointer for storage,
   the cast is still necessary, but it's only a single pointer
   this way

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - Changed second patch to use pointer instead of enum in match data
    (Sascha)
  - Changed third and fourth patch to return error on match with
    driver name instead of assuming to be compatible with a default
    type.
---
 drivers/base/driver.c | 11 +++++++++++
 include/driver.h      | 18 ++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 412db6c40699..3205bbc3c33b 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -500,3 +500,14 @@ int dev_get_drvdata(struct device_d *dev, const void **data)
 
 	return -ENODEV;
 }
+
+const void *device_get_match_data(struct device_d *dev)
+{
+	if (dev->of_id_entry)
+		return dev->of_id_entry->data;
+
+	if (dev->id_entry)
+		return (void *)dev->id_entry->driver_data;
+
+	return NULL;
+}
diff --git a/include/driver.h b/include/driver.h
index 1961ab6ed9ea..e2886d051d4f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -540,8 +540,26 @@ int devfs_create_partitions(const char *devname,
 #define DRV_OF_COMPAT(compat) \
 	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
 
+/**
+ * dev_get_drvdata - get driver match data associated with device
+ * @dev: device instance
+ * @data: pointer to void *, where match data is stored
+ *
+ * Returns 0 on success and error code otherwise.
+ *
+ * DEPRECATED: use device_get_match_data instead, which avoids
+ * common pitfalls due to explicit pointer casts
+ */
 int dev_get_drvdata(struct device_d *dev, const void **data);
 
+/**
+ * device_get_match_data - get driver match data associated with device
+ * @dev: device instance
+ *
+ * Returns match data on success and NULL otherwise
+ */
+const void *device_get_match_data(struct device_d *dev);
+
 int device_match_of_modalias(struct device_d *dev, struct driver_d *drv);
 
 #endif /* DRIVER_H */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
