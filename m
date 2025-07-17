Delivery-date: Thu, 17 Jul 2025 16:17:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucPQk-000sT5-15
	for lore@lore.pengutronix.de;
	Thu, 17 Jul 2025 16:17:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucPQj-0008AO-FE
	for lore@pengutronix.de; Thu, 17 Jul 2025 16:17:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RTlHDLTi010RaEEQ6qpZrAWBBumV0alZh7mjChWTouE=; b=ncaUMHiIQk/YNOZUvyDjt9uRGR
	OhasIU5+HVJdicErZWA6HIPLrk9ZA5XwAaZcYXZCNGHgjwQuhVxIzw3qNaX19CDwFk0i0k6WAy45q
	h7vgPmOvaR8VAIKHzYydc5oW0dBVA77fHJ8H5gAE5/raYYf2biFnuTnk4uo29jJj15RT/3JT8EdZv
	v7fDjCrpZ8WAfV0PRSSUL+78Id5OF17jdBnwbiEcXL16cUgIkCcl7trY1m3e4T+m9dLEADbS9P6Wt
	nMIB/KEc7KGhr4F4k8zoI5jvx9Z4YnvgK+3ajySk8gxJnuSl5sHWrrXPrVw/zM4EJImegB3dKHHoa
	+fQtmp/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucPQ2-0000000ALPL-2GhQ;
	Thu, 17 Jul 2025 14:17:06 +0000
Received: from mail-108-mta203.mxroute.com ([136.175.108.203])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucOQp-0000000ADxf-3qnU
	for barebox@lists.infradead.org;
	Thu, 17 Jul 2025 13:13:53 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta203.mxroute.com (ZoneMTA) with ESMTPSA id 19818850b890008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Thu, 17 Jul 2025 13:13:49 +0000
X-Zone-Loop: 4fe59c1e1997e93686f8d83809975762930b9d1596df
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=RTlHDLTi010RaEEQ6qpZrAWBBumV0alZh7mjChWTouE=; b=M
	JYSIjxhng/WYwzOBV7aeJp8JMOfLY9SOPm6Od+KiVhohxm4auullroHLrsZ+/WHhktXc3cHEyilVA
	U99JHP6mGlgjK4a8Wz2ZbbC7li6drlP3lCw186046U224jHSkfxyMcH2pJ1GBQTJZ3oi1ES6WZDqR
	5fiaC3Bgn5wG2eyz+l7C0Ng834liZnLZgfp0/umZ7C3jB4JV/xRjFAq4ukzZ+yMD9J9j0Q5FK23yr
	Apcowich1hHE+aQLjTz8pXoetuHqW4zYdgAC+kbWeAcyyFnzD1Wd8gYYv3neifb2k7LBLaMv1TU3C
	cJLEp7pF+zmZbWIACoYfbNHCJgaxU9Csg==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Thu, 17 Jul 2025 21:13:39 +0800
Message-Id: <20250717131339.1127485-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_061352_044627_E5B52A60 
X-CRM114-Status: GOOD (  26.04  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: convert struct device comments to kernel-doc style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Convert the comments of struct device from the old style to standard
kernel-doc style.

No functional changes.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
As suggested, I took the opportunity to switch struct device comments
to kernel-doc style.

 include/device.h | 86 +++++++++++++++++++++++++++---------------------
 1 file changed, 48 insertions(+), 38 deletions(-)

diff --git a/include/device.h b/include/device.h
index 97fa040365..965251e552 100644
--- a/include/device.h
+++ b/include/device.h
@@ -24,24 +24,48 @@ struct generic_pm_domain;
 struct platform_device_id;
 struct of_device_id;
 
-/** @brief Describes a particular device present in the system */
+/**
+ * struct device - The basic device structure
+ * @name: This member is used to match with a driver. This is a
+ *        descriptive name and could be MPC5XXX_ether or imx_serial.
+ *        Unless absolutely necessary, should not be modified
+ *        directly and dev_set_name() should be used instead.
+ * @unique_name: Device's unique name as obtained by calling dev_id().
+ *               Internal field, do not access it directly.
+ * @id: Used to uniquely identify a device in the system. The id
+ *      will show up under /dev/ as the device's name. Usually this
+ *      is something like eth0 or nor0.
+ * @dma_coherent: DMA coherence setting for this device.
+ * @resource: Array of resources for this device.
+ * @num_resources: Number of resources in the resource array.
+ * @platform_data: Board specific information about this device.
+ * @priv: Device class specific data storage.
+ * @driver_data: Alternative name for @priv
+ * @type_data: In case this device is a specific device, this pointer
+ *             points to the type specific device, i.e. eth_device
+ * @driver: The driver for this device.
+ * @list: The list of all devices.
+ * @bus_list: Our bus.
+ * @children: Our children.
+ * @sibling: Our siblings.
+ * @active: The list of all devices which have a driver
+ * @parent: The device's "parent" device, the device to which it is attached.
+ *          If parent is NULL, the device is a top-level device.
+ * @pm_domain: Attached power domain.
+ * @bus: Type of bus device is on.
+ * @parameters: The parameters for this device. This is used to carry information
+ *              of board specific data from the board code to the device driver
+ * @dma_mask: DMA mask.
+ * @dma_offset: DMA offset.
+ * @detect: For devices which take longer to probe, this is called when the driver
+ *          should actually detect client devices.
+ * @rescan: Callback to rescan the device.
+ * @deferred_probe_reason: If a driver probe is deferred, this stores the last error.
+ */
 struct device {
-	/*! This member (and 'type' described below) is used to match
-	 * with a driver. This is a descriptive name and could be
-	 * MPC5XXX_ether or imx_serial. Unless absolutely necessary,
-	 * should not be modified directly and dev_set_name() should
-	 * be used instead.
-	 */
 	char *name;
 
-	/*! This member is used to store device's unique name as
-	 *  obtained by calling dev_id(). Internal field, do not
-	 *  access it directly.
-	 */
 	char *unique_name;
-	/*! The id is used to uniquely identify a device in the system. The id
-	 * will show up under /dev/ as the device's name. Usually this is
-	 * something like eth0 or nor0. */
 	int id;
 
 	enum dev_dma_coherence dma_coherent;
@@ -49,36 +73,29 @@ struct device {
 	struct resource *resource;
 	int num_resources;
 
-	void *platform_data; /*! board specific information about this device */
+	void *platform_data;
 
-	/*! Devices of a particular class normaly need to store more
-	 * information than struct device holds.
-	 */
 	union {
 		void *priv;
 		void *driver_data;
 	};
-	/*! In case this device is a specific device, this pointer
-	 * points to the type specific device, i.e. eth_device
-	 */
+
 	void *type_data;
 
-	struct driver *driver; /*! The driver for this device */
+	struct driver *driver;
 
-	struct list_head list;     /* The list of all devices */
-	struct list_head bus_list; /* our bus */
-	struct list_head children; /* our children */
+	struct list_head list;
+	struct list_head bus_list;
+	struct list_head children;
 	struct list_head sibling;
-	struct list_head active;   /* The list of all devices which have a driver */
+	struct list_head active;
 
-	struct device *parent;   /* our parent, NULL if not present */
+	struct device *parent;
 
-	struct generic_pm_domain *pm_domain;	/* attached power domain */
+	struct generic_pm_domain *pm_domain;
 
 	struct bus_type *bus;
 
-	/*! The parameters for this device. This is used to carry information
-	 * of board specific data from the board code to the device driver. */
 	struct list_head parameters;
 
 	struct list_head cdevs;
@@ -90,7 +107,6 @@ struct device {
 		struct device_node *device_node;
 		struct device_node *of_node;
 	};
-
 	const struct of_device_id *of_id_entry;
 
 	u64 dma_mask;
@@ -100,16 +116,10 @@ struct device {
 #ifdef CONFIG_CMD_DEVINFO
 	struct list_head info_list;
 #endif
-	/*
-	 * For devices which take longer to probe this is called
-	 * when the driver should actually detect client devices
-	 */
+
 	int (*detect)(struct device *);
 	void (*rescan)(struct device *);
 
-	/*
-	 * if a driver probe is deferred, this stores the last error
-	 */
 	char *deferred_probe_reason;
 };
 


