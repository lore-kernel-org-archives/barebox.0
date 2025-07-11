Delivery-date: Fri, 11 Jul 2025 14:31:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaCuN-00GOGJ-2o
	for lore@lore.pengutronix.de;
	Fri, 11 Jul 2025 14:31:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uaCuN-0000Ii-81
	for lore@pengutronix.de; Fri, 11 Jul 2025 14:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mG1bBLZazcMtUB/WoKPZzrGC+tK022NPDsAhhcjA3xg=; b=3/0VzS7LIPcIAEp09miZ+vZvVs
	q19N1mHIB57pdpzgK0OFtCwflAN+gbu4Y3ZT8SQ3IfW7Yf4+IdGjaUbjg2VPaekH0IRqGunOO4Xwe
	1r/xgRjMZhaknjDF3Hw7emc+8LRQTiFPfiqJUlU45SDQDujkYoXdejIP6zWRq8WyquJ35ZFM7Umif
	BLfCxagVhjclpzY8Z1QhtDr3e98u/wFTvhCVcV0RdSQwsXonclB69sAYSgRdvVVp/7/siq5amBcgr
	cfTe6dpQjhGOhQs1EuwUayOcp4EsplxHLE8UaLeN/znr/kHC35+kZ9YLTWJ+neuQNd5HlnqI/LRCW
	0hgPRbbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCtf-0000000EkHj-2yq7;
	Fri, 11 Jul 2025 12:30:35 +0000
Received: from mail-108-mta17.mxroute.com ([136.175.108.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uaCqt-0000000Ejpf-1L5l
	for barebox@lists.infradead.org;
	Fri, 11 Jul 2025 12:27:45 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta17.mxroute.com (ZoneMTA) with ESMTPSA id 197f974967c0008631.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Fri, 11 Jul 2025 12:27:36 +0000
X-Zone-Loop: caff94d07831219eca0cbd7a3329c5cff10486b82806
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mboxify.com
	; s=x; h=Content-Transfer-Encoding:MIME-Version:Date:Subject:To:From:Sender:
	Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=mG1bBLZazcMtUB/WoKPZzrGC+tK022NPDsAhhcjA3xg=; b=s
	9bBn+pbRaCPU8Zzu/TsZEnLb5fiQBWQnITqRnxdaJMfcdp1NJdMt0+sov4UjYg8sOd7AIo2PrZyqD
	IZKslnRIjC+NgYdwXScCfOMLZKnjed7N3xGt/SMSNVXIcylU33FPhlnJpwFEKn5KP9s3QoUF+NS5p
	Jpn2dJvrHZn0uALpGODUCH+mAc8psI+rps+QBvmpQma5jYpA+YgRIzsNm6JFkxIYXYfapl5d3vOEB
	ywa26i4MZiSi824uMLrJ93+tyxlnoXajClhYJETcwUwBEh+9BavhKRV/UO7xRCK94WW9ebhTg/pUg
	Uz9VZLZLcF3kA+pZAzcOs2ji5GMgbdFgw==;
From: Bo Sun <bo@mboxify.com>
To: barebox@lists.infradead.org
Date: Fri, 11 Jul 2025 20:27:27 +0800
Message-Id: <20250711122729.108015-1-bo@mboxify.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Id: bo@mboxify.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_052743_446198_C8C43BFE 
X-CRM114-Status: GOOD (  16.09  )
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
Subject: [PATCH 1/3] driver: clean up comment formatting and spacing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

- Fixed a missing closing parenthesis in the comment for DEVICE_ID_SINGLE
- Cleaned up indentation and alignment of multi-line comments in struct device
- Removed redundant spaces in function pointer declarations

No functional changes.

Signed-off-by: Bo Sun <bo@mboxify.com>
---
 include/device.h | 18 ++++++++++--------
 include/driver.h |  8 ++++----
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/include/device.h b/include/device.h
index bc3a348e2e..97fa040365 100644
--- a/include/device.h
+++ b/include/device.h
@@ -37,7 +37,7 @@ struct device {
 	/*! This member is used to store device's unique name as
 	 *  obtained by calling dev_id(). Internal field, do not
 	 *  access it directly.
-	  */
+	 */
 	char *unique_name;
 	/*! The id is used to uniquely identify a device in the system. The id
 	 * will show up under /dev/ as the device's name. Usually this is
@@ -58,14 +58,16 @@ struct device {
 		void *priv;
 		void *driver_data;
 	};
-	void *type_data;     /*! In case this device is a specific device, this pointer
-			      * points to the type specific device, i.e. eth_device
-			      */
+	/*! In case this device is a specific device, this pointer
+	 * points to the type specific device, i.e. eth_device
+	 */
+	void *type_data;
+
 	struct driver *driver; /*! The driver for this device */
 
 	struct list_head list;     /* The list of all devices */
-	struct list_head bus_list; /* our bus            */
-	struct list_head children; /* our children            */
+	struct list_head bus_list; /* our bus */
+	struct list_head children; /* our children */
 	struct list_head sibling;
 	struct list_head active;   /* The list of all devices which have a driver */
 
@@ -102,8 +104,8 @@ struct device {
 	 * For devices which take longer to probe this is called
 	 * when the driver should actually detect client devices
 	 */
-	int     (*detect) (struct device *);
-	void	(*rescan) (struct device *);
+	int (*detect)(struct device *);
+	void (*rescan)(struct device *);
 
 	/*
 	 * if a driver probe is deferred, this stores the last error
diff --git a/include/driver.h b/include/driver.h
index dd50a7aa3c..510a32186d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -36,13 +36,13 @@ struct driver {
 	const char *name;
 
 	struct list_head list;
-	struct list_head bus_list; /* our bus            */
+	struct list_head bus_list; /* our bus */
 
 	/*! Called if an instance of a device is found */
-	int     (*probe) (struct device *);
+	int (*probe)(struct device *);
 
 	/*! Called if an instance of a device is gone. */
-	void     (*remove)(struct device *);
+	void (*remove)(struct device *);
 
 	struct bus_type *bus;
 
@@ -61,7 +61,7 @@ struct driver {
 
 /* dynamically assign the next free id */
 #define DEVICE_ID_DYNAMIC	-2
-/* do not use an id (only one device available */
+/* do not use an id (only one device available) */
 #define DEVICE_ID_SINGLE	-1
 
 /* Register devices and drivers.


