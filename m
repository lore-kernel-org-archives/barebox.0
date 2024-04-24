Delivery-date: Wed, 24 Apr 2024 08:42:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKO-00EOQE-01
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 08:42:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWKK-0000a0-Eo
	for lore@pengutronix.de; Wed, 24 Apr 2024 08:41:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wn+HJIUn57kwtoRVP385sVNkvP92zaM7VLky9iRtuSE=; b=TRoOD6oXFq17NLnMEdPUOT3bgv
	llFGr01pg1EYNgBfwvCOYkvpCRY57D8tLNBiUHwfIL2HBI4VIWgxaeKwL2TXDqXacYK2XqOdzxy7k
	GovtNxJvxBfMoqvYtssbDX8iF2OWpAYa867deiFzngvGFcv2KiFrg1YwlhoE4KXEXP/iHJs7gOiu8
	PxVlGOAlnH0ikRCUZ9eIS2KjacyR2g5XNektNsaLn++Hg+rLtqNn2eQ/oZedh9ukxcSdBpXV41XSz
	UlErMN1vD9OGbKwOVTlH2ah860lI5kAc0PuE2YJE4oE5eSpod7jY/8/ADojG2c2nW4jHJlZZKWZUq
	QQOLbS/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJk-00000002vBM-2moD;
	Wed, 24 Apr 2024 06:41:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWJW-00000002uza-2ODI
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 06:41:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-0008Bd-LF; Wed, 24 Apr 2024 08:41:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00E1yh-8Q; Wed, 24 Apr 2024 08:41:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-0a;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:40 +0200
Message-Id: <20240424064058.3608016-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_234107_026680_8334D22B 
X-CRM114-Status: GOOD (  30.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 05/23] driver: move out struct device definition into its own header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

<driver.h> got so big that it can introduce issues with recursive
inclusion. Let's start breaking it up by moving the struct device
definition into a new device.h header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/device.h | 111 +++++++++++++++++++++++++++++++++++++++++++++++
 include/driver.h |  93 +--------------------------------------
 2 files changed, 112 insertions(+), 92 deletions(-)
 create mode 100644 include/device.h

diff --git a/include/device.h b/include/device.h
new file mode 100644
index 000000000000..8c3561e5a2f6
--- /dev/null
+++ b/include/device.h
@@ -0,0 +1,111 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * (C) 2007 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ */
+
+#ifndef DEVICE_H
+#define DEVICE_H
+
+#include <linux/types.h>
+
+enum dev_dma_coherence {
+	DEV_DMA_COHERENCE_DEFAULT = 0,
+	DEV_DMA_COHERENT,
+	DEV_DMA_NON_COHERENT,
+};
+
+struct device;
+struct bus_type;
+struct resource;
+struct driver;
+struct generic_pm_domain;
+struct platform_device_id;
+struct of_device_id;
+
+/** @brief Describes a particular device present in the system */
+struct device {
+	/*! This member (and 'type' described below) is used to match
+	 * with a driver. This is a descriptive name and could be
+	 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
+	 * should not be modified directly and dev_set_name() should
+	 * be used instead.
+	 */
+	char *name;
+
+	/*! This member is used to store device's unique name as
+	 *  obtained by calling dev_id(). Internal field, do not
+	 *  access it directly.
+	  */
+	char *unique_name;
+	/*! The id is used to uniquely identify a device in the system. The id
+	 * will show up under /dev/ as the device's name. Usually this is
+	 * something like eth0 or nor0. */
+	int id;
+
+	enum dev_dma_coherence dma_coherent;
+
+	struct resource *resource;
+	int num_resources;
+
+	void *platform_data; /*! board specific information about this device */
+
+	/*! Devices of a particular class normaly need to store more
+	 * information than struct device holds.
+	 */
+	void *priv;
+	void *type_data;     /*! In case this device is a specific device, this pointer
+			      * points to the type specific device, i.e. eth_device
+			      */
+	struct driver *driver; /*! The driver for this device */
+
+	struct list_head list;     /* The list of all devices */
+	struct list_head bus_list; /* our bus            */
+	struct list_head children; /* our children            */
+	struct list_head sibling;
+	struct list_head active;   /* The list of all devices which have a driver */
+
+	struct device *parent;   /* our parent, NULL if not present */
+
+	struct generic_pm_domain *pm_domain;	/* attached power domain */
+
+	struct bus_type *bus;
+
+	/*! The parameters for this device. This is used to carry information
+	 * of board specific data from the board code to the device driver. */
+	struct list_head parameters;
+
+	struct list_head cdevs;
+
+	const struct platform_device_id *id_entry;
+	union {
+		struct device_node *device_node;
+		struct device_node *of_node;
+	};
+
+	const struct of_device_id *of_id_entry;
+
+	u64 dma_mask;
+
+	unsigned long dma_offset;
+
+	void    (*info) (struct device *);
+	/*
+	 * For devices which take longer to probe this is called
+	 * when the driver should actually detect client devices
+	 */
+	int     (*detect) (struct device *);
+	void	(*rescan) (struct device *);
+
+	/*
+	 * if a driver probe is deferred, this stores the last error
+	 */
+	char *deferred_probe_reason;
+};
+
+struct device_alias {
+	struct device *dev;
+	struct list_head list;
+	char name[];
+};
+
+#endif
diff --git a/include/driver.h b/include/driver.h
index e02815d09b76..066e632134a1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -10,6 +10,7 @@
 #include <linux/ioport.h>
 #include <linux/uuid.h>
 #include <linux/printk.h>
+#include <device.h>
 #include <of.h>
 #include <init.h>
 #include <filetype.h>
@@ -27,98 +28,6 @@ struct platform_device_id {
 	unsigned long driver_data;
 };
 
-enum dev_dma_coherence {
-	DEV_DMA_COHERENCE_DEFAULT = 0,
-	DEV_DMA_COHERENT,
-	DEV_DMA_NON_COHERENT,
-};
-
-/** @brief Describes a particular device present in the system */
-struct device {
-	/*! This member (and 'type' described below) is used to match
-	 * with a driver. This is a descriptive name and could be
-	 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
-	 * should not be modified directly and dev_set_name() should
-	 * be used instead.
-	 */
-	char *name;
-
-	/*! This member is used to store device's unique name as
-	 *  obtained by calling dev_id(). Internal field, do not
-	 *  access it directly.
-	  */
-	char *unique_name;
-	/*! The id is used to uniquely identify a device in the system. The id
-	 * will show up under /dev/ as the device's name. Usually this is
-	 * something like eth0 or nor0. */
-	int id;
-
-	enum dev_dma_coherence dma_coherent;
-
-	struct resource *resource;
-	int num_resources;
-
-	void *platform_data; /*! board specific information about this device */
-
-	/*! Devices of a particular class normaly need to store more
-	 * information than struct device holds.
-	 */
-	void *priv;
-	void *type_data;     /*! In case this device is a specific device, this pointer
-			      * points to the type specific device, i.e. eth_device
-			      */
-	struct driver *driver; /*! The driver for this device */
-
-	struct list_head list;     /* The list of all devices */
-	struct list_head bus_list; /* our bus            */
-	struct list_head children; /* our children            */
-	struct list_head sibling;
-	struct list_head active;   /* The list of all devices which have a driver */
-
-	struct device *parent;   /* our parent, NULL if not present */
-
-	struct generic_pm_domain *pm_domain;	/* attached power domain */
-
-	struct bus_type *bus;
-
-	/*! The parameters for this device. This is used to carry information
-	 * of board specific data from the board code to the device driver. */
-	struct list_head parameters;
-
-	struct list_head cdevs;
-
-	const struct platform_device_id *id_entry;
-	union {
-		struct device_node *device_node;
-		struct device_node *of_node;
-	};
-
-	const struct of_device_id *of_id_entry;
-
-	u64 dma_mask;
-
-	unsigned long dma_offset;
-
-	void    (*info) (struct device *);
-	/*
-	 * For devices which take longer to probe this is called
-	 * when the driver should actually detect client devices
-	 */
-	int     (*detect) (struct device *);
-	void	(*rescan) (struct device *);
-
-	/*
-	 * if a driver probe is deferred, this stores the last error
-	 */
-	char *deferred_probe_reason;
-};
-
-struct device_alias {
-	struct device *dev;
-	struct list_head list;
-	char name[];
-};
-
 /** @brief Describes a driver present in the system */
 struct driver {
 	/*! The name of this driver. Used to match to
-- 
2.39.2



