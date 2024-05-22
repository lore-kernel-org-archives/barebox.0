Delivery-date: Wed, 22 May 2024 08:04:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9f5q-00DISl-2V
	for lore@lore.pengutronix.de;
	Wed, 22 May 2024 08:04:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9f5p-0007rU-Kg
	for lore@pengutronix.de; Wed, 22 May 2024 08:04:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P99sVwJXXqrT2L14frKpaLzPQ0EQMi59cLthcv7G6q4=; b=dhGOg7BpSnEYTrkepKcR6HoS0m
	Rl1iadWcUeD1YJ4hyD/z10M1+Xj96eMn7KooOMZjomQWurLGNb3VTFsshco42HX9s4e2vpO+l2/CO
	xuJTUELiteKlvPtQ3SEle8j5maboiv2R/Bw+7PbuF4YLgHMMZlemsGhbBipZdXdF6HSbqsTZ9HEix
	r4rRszSP9Kp8cCP7PDdHnkNXGqztsEqE0GNSk6oWVhsBYWJ4++wG/9iKGIlZm5oFXHu1FgyDlBNSH
	u+iJ0QYUiVs5iGnsrOcTMykJwMVdPgz8IWdaCDB8bTsxiTnT8gJOZ1/X60MaSHUFW20LLJSat7oIK
	06AU538w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9f5J-000000024Os-3HMi;
	Wed, 22 May 2024 06:04:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9f5F-000000024O1-0Yqo
	for barebox@lists.infradead.org;
	Wed, 22 May 2024 06:04:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9f5C-0007ix-TG; Wed, 22 May 2024 08:04:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9f5C-002U3g-Gq; Wed, 22 May 2024 08:04:14 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s9f5C-005rl2-1P;
	Wed, 22 May 2024 08:04:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 May 2024 08:04:13 +0200
Message-Id: <20240522060413.1398264-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_230417_380087_2AD4781D 
X-CRM114-Status: GOOD (  32.72  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] driver: add Linux struct platform_device/driver compatibility wrapper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux struct platform_device is a superset on top of struct device with
additions related to specifics of the platform bus.

In barebox, there is no such distinction, so porting of Linux drivers
usually involves a lot of renaming and substitutions.

The naive approach of

  #define platform_device device
  #define platform_driver driver

won't work though as struct device dev needs to be a member of
platform_device as kernel code has a lot of instances of &pdev->dev.

Therefore, let's tackle this differently:

 1) We add struct device as only member of struct platform_device and
    define all members in both and have them overlap by use of a union.

 2) Have functions that receive a platform_device/driver in Linux, but
    a device/driver in barebox accept either by using GCC's transparent
    union extension.

More changes are needed, e.g. in <of.h> to use __param_either where
appropriate, but this can be added alongside future kernel driver ports.

The use of __param_either instead of defining the union with a tag and
using that is intentional to keep prototypes self-documenting. This
violates the C standard's strict aliasing rule, but this doesn't matter
for us anyway as we compile barebox with -fno-strict-aliasing.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix remove callback to accept platform_device instead of
    platform_driver
---
 include/device.h               | 124 +++++++++++++++++----------------
 include/driver.h               |  40 ++++++-----
 include/linux/compiler_types.h |  11 +++
 3 files changed, 98 insertions(+), 77 deletions(-)

diff --git a/include/device.h b/include/device.h
index 8c3561e5a2f6..abe9707fb8f5 100644
--- a/include/device.h
+++ b/include/device.h
@@ -7,6 +7,8 @@
 #define DEVICE_H
 
 #include <linux/types.h>
+#include <linux/compiler.h>
+#include <linux/stddef.h>
 
 enum dev_dma_coherence {
 	DEV_DMA_COHERENCE_DEFAULT = 0,
@@ -23,83 +25,85 @@ struct platform_device_id;
 struct of_device_id;
 
 /** @brief Describes a particular device present in the system */
-struct device {
-	/*! This member (and 'type' described below) is used to match
-	 * with a driver. This is a descriptive name and could be
-	 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
-	 * should not be modified directly and dev_set_name() should
-	 * be used instead.
-	 */
-	char *name;
+struct platform_device {
+	struct_group_tagged(device, dev,
+		/*! This member (and 'type' described below) is used to match
+		 * with a driver. This is a descriptive name and could be
+		 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
+		 * should not be modified directly and dev_set_name() should
+		 * be used instead.
+		 */
+		char *name;
 
-	/*! This member is used to store device's unique name as
-	 *  obtained by calling dev_id(). Internal field, do not
-	 *  access it directly.
-	  */
-	char *unique_name;
-	/*! The id is used to uniquely identify a device in the system. The id
-	 * will show up under /dev/ as the device's name. Usually this is
-	 * something like eth0 or nor0. */
-	int id;
+		/*! This member is used to store device's unique name as
+		 *  obtained by calling dev_id(). Internal field, do not
+		 *  access it directly.
+		  */
+		char *unique_name;
+		/*! The id is used to uniquely identify a device in the system. The id
+		 * will show up under /dev/ as the device's name. Usually this is
+		 * something like eth0 or nor0. */
+		int id;
 
-	enum dev_dma_coherence dma_coherent;
+		enum dev_dma_coherence dma_coherent;
 
-	struct resource *resource;
-	int num_resources;
+		struct resource *resource;
+		int num_resources;
 
-	void *platform_data; /*! board specific information about this device */
+		void *platform_data; /*! board specific information about this device */
 
-	/*! Devices of a particular class normaly need to store more
-	 * information than struct device holds.
-	 */
-	void *priv;
-	void *type_data;     /*! In case this device is a specific device, this pointer
-			      * points to the type specific device, i.e. eth_device
-			      */
-	struct driver *driver; /*! The driver for this device */
+		/*! Devices of a particular class normaly need to store more
+		 * information than struct device holds.
+		 */
+		void *priv;
+		void *type_data;     /*! In case this device is a specific device, this pointer
+				      * points to the type specific device, i.e. eth_device
+				      */
+		struct driver *driver; /*! The driver for this device */
 
-	struct list_head list;     /* The list of all devices */
-	struct list_head bus_list; /* our bus            */
-	struct list_head children; /* our children            */
-	struct list_head sibling;
-	struct list_head active;   /* The list of all devices which have a driver */
+		struct list_head list;     /* The list of all devices */
+		struct list_head bus_list; /* our bus            */
+		struct list_head children; /* our children            */
+		struct list_head sibling;
+		struct list_head active;   /* The list of all devices which have a driver */
 
-	struct device *parent;   /* our parent, NULL if not present */
+		struct device *parent;   /* our parent, NULL if not present */
 
-	struct generic_pm_domain *pm_domain;	/* attached power domain */
+		struct generic_pm_domain *pm_domain;	/* attached power domain */
 
-	struct bus_type *bus;
+		struct bus_type *bus;
 
-	/*! The parameters for this device. This is used to carry information
-	 * of board specific data from the board code to the device driver. */
-	struct list_head parameters;
+		/*! The parameters for this device. This is used to carry information
+		 * of board specific data from the board code to the device driver. */
+		struct list_head parameters;
 
-	struct list_head cdevs;
+		struct list_head cdevs;
 
-	const struct platform_device_id *id_entry;
-	union {
-		struct device_node *device_node;
-		struct device_node *of_node;
-	};
+		const struct platform_device_id *id_entry;
+		union {
+			struct device_node *device_node;
+			struct device_node *of_node;
+		};
 
-	const struct of_device_id *of_id_entry;
+		const struct of_device_id *of_id_entry;
 
-	u64 dma_mask;
+		u64 dma_mask;
 
-	unsigned long dma_offset;
+		unsigned long dma_offset;
 
-	void    (*info) (struct device *);
-	/*
-	 * For devices which take longer to probe this is called
-	 * when the driver should actually detect client devices
-	 */
-	int     (*detect) (struct device *);
-	void	(*rescan) (struct device *);
+		void    (*info) (struct device *);
+		/*
+		 * For devices which take longer to probe this is called
+		 * when the driver should actually detect client devices
+		 */
+		int     (*detect) (struct device *);
+		void	(*rescan) (struct device *);
 
-	/*
-	 * if a driver probe is deferred, this stores the last error
-	 */
-	char *deferred_probe_reason;
+		/*
+		 * if a driver probe is deferred, this stores the last error
+		 */
+		char *deferred_probe_reason;
+	);
 };
 
 struct device_alias {
diff --git a/include/driver.h b/include/driver.h
index c8eb7605e768..b7235fe77be5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -10,6 +10,8 @@
 #include <linux/ioport.h>
 #include <linux/uuid.h>
 #include <linux/printk.h>
+#include <linux/compiler.h>
+#include <linux/stddef.h>
 #include <device.h>
 #include <of.h>
 #include <init.h>
@@ -29,27 +31,31 @@ struct platform_device_id {
 };
 
 /** @brief Describes a driver present in the system */
-struct driver {
-	/*! The name of this driver. Used to match to
-	 * the corresponding device. */
-	const char *name;
+struct platform_driver {
+	struct_group_tagged(driver, drv,
+		/*! The name of this driver. Used to match to
+		 * the corresponding device. */
+		const char *name;
 
-	struct list_head list;
-	struct list_head bus_list; /* our bus            */
+		struct list_head list;
+		struct list_head bus_list; /* our bus            */
 
-	/*! Called if an instance of a device is found */
-	int     (*probe) (struct device *);
+		/*! Called if an instance of a device is found */
+		int     (*probe) (__param_either(struct device *,
+						 struct platform_device *));
 
-	/*! Called if an instance of a device is gone. */
-	void     (*remove)(struct device *);
+		/*! Called if an instance of a device is gone. */
+		void     (*remove)(__param_either(struct device *,
+						  struct platform_device *));
 
-	struct bus_type *bus;
+		struct bus_type *bus;
 
-	const struct platform_device_id *id_table;
-	union {
-		const struct of_device_id *of_compatible;
-		const struct of_device_id *of_match_table;
-	};
+		const struct platform_device_id *id_table;
+		union {
+			const struct of_device_id *of_compatible;
+			const struct of_device_id *of_match_table;
+		};
+	);
 };
 
 /*@}*/	/* do not delete, doxygen relevant */
@@ -393,7 +399,7 @@ extern struct list_head bus_list;
 
 extern struct bus_type platform_bus;
 
-int platform_driver_register(struct driver *drv);
+int platform_driver_register(__param_either(struct driver *, struct platform_driver *));
 
 /* register_driver_macro() - Helper macro for drivers that don't do
  * anything special in module registration. This eliminates a lot of
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index d925b3da296d..ae7e615c35a4 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -356,4 +356,15 @@ struct ftrace_likely_data {
 #define __prereloc \
 	notrace __no_sanitize_address __no_stack_protector
 
+#define __param_oneof(PARAMS) union { \
+	PARAMS; \
+} __attribute__ ((__transparent_union__))
+
+/*
+ * For use in function prototypes. Instructs the compiler to accept either
+ * type1 or type2 as permissible types. The types need to have identical
+ * bit-level representation
+ */
+#define __param_either(type1, type2) __param_oneof(type1 __arg1; type2 __arg2)
+
 #endif /* __LINUX_COMPILER_TYPES_H */
-- 
2.39.2



