Delivery-date: Fri, 19 Jan 2024 17:43:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxc-007HWA-36
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:43:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQrxd-0005OZ-L9
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:43:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BVVi5JF7Dvy4U2CZoX0A89zmv/QXfYk3JAW4iXe3LvM=; b=NI59dNp3Oxm8xT4oMcwre+JhsK
	t0fq9GvikM786+5sn6YR6QOeZer8fm41NnCP3LyHqeZ9v39Pr/kkTxeE/zycpTQvNl0PLim14nKTj
	jKf9NgEqFtVcnhyTTRUjnJwEyR7VyVrK47NH7htGeHiiOkVAk7mTxq+4n4ipZX8SWf2NFaf2QpRf2
	1qnnMrEs3pE39C8I/cfdyRcEHJ5JWT68DjiNWFZSa2rpUpldWo3pHABFD4fgT/OJze8bkwyhmeXYd
	NmrXH6X5RJmtUk6wPLOq8tAXsSpTouc9vK+WKh3bwAVLKO234uz2D2fCSyx00f+jDaU768k/TI3po
	DcKAkhSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwj-0069ff-2T;
	Fri, 19 Jan 2024 16:42:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrwc-0069Zu-0q
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:42:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwb-0004yl-4e; Fri, 19 Jan 2024 17:42:13 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrwa-000xYe-Ns; Fri, 19 Jan 2024 17:42:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-2M;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:26:05 +0100
Message-Id: <20240119162610.1014870-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_084214_331457_62D2B382 
X-CRM114-Status: GOOD (  13.10  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 14/19] include: linux/device.h: implement dev_platform_ioremap_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are more than a thousand instances of devm_platform_ioremap_resource
across Linux drivers and porting it to barebox is cumbersome, because
unlike Linux we don't remap, so the MMIO region may be at address zero.

Now that dev_request_mem_region_err_null() prints a warning in that
case, let's just use it to implement dev_platform_ioremap_resource().

Platforms with relevant MMIO at address 0 are scarce anyway and when we
run on such a platform, we can always switch to use normal
dev_request_mem_resource().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/device.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/linux/device.h b/include/linux/device.h
index 0bd61154ac30..d892a9cb0ef5 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -32,6 +32,18 @@
 #define driver_register register_driver
 #define driver_unregister unregister_driver
 
+
+static inline void __iomem *dev_platform_ioremap_resource(struct device *dev,
+							  int resource)
+{
+	/*
+	 * barebox maps everything outside the RAM banks suitably for MMIO,
+	 * so we don't need to do anything besides requesting the regions
+	 * and can leave the memory attributes unchanged.
+	 */
+	return dev_request_mem_region_err_null(dev, resource);
+}
+
 static inline void __iomem *devm_ioremap(struct device *dev,
 					 resource_size_t start,
 					 resource_size_t size)
-- 
2.39.2



