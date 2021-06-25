Delivery-date: Fri, 25 Jun 2021 09:46:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgXT-0007rQ-Qs
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:46:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgXS-0005Vx-AM
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:46:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3QF5/eyypALH00lPS2Nd4LZvY9I2dlv3G48M4SD338=; b=rK7KZxdKVLQTVn
	qcoBlkVUROmwwcX3T8ZEez9hxgTLq3DzSr7YMayr6Rgo3pqQjwMAEd6k14UMoffB667CtY4YE0pNi
	RG6NzCF6sTxJ7bYpWKLb+QF0DV0dR00PqEpXvf4MW6aFpvGB2JVFMTcx0fvis4PzDh1ki35R//4vj
	TyVkTTYq6FUX1OLrvZ00qwPwwLm6nzpH9rZxR04iiQS468lavix7vO773w0SLqvhMrm4DlamtTzyB
	yZLPXaamG+shA0CjYPPOxIPMKddVEkkAuOOESQ1eNvw44I6dm87xKfOS2XqM4UNu3qSW9jBKCVENc
	CALs5xTcb8yIpNEutdrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgW0-0005jY-Nr; Fri, 25 Jun 2021 07:44:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDl-00HZ1l-4d
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qo-N3; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000do-Hs; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:40 +0200
Message-Id: <20210625072540.32717-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002549_259170_2B4A80DE 
X-CRM114-Status: GOOD (  16.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 19/19] of: Add dummy driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe support we decide that a device for a new device node is
available when the device has a driver. It sometimes happens that a
consumer of a device node doesn't point to the node to which the driver
is attached to, but instead a subnode, like this:

	usb2phy0: usb2-phy@fe8a0000 {
		compatible = "rockchip,rk3568-usb2phy";

		u2phy0_host: host-port {
			status = "disabled";
		};
	};

	usbhost_dwc3: dwc3@fd000000 {
		compatible = "snps,dwc3";
		phys = <&u2phy0_host>;
		phy-names = "usb2-phy";
	};

of_device_ensure_probed() would now expect a driver for the &u2phy0_host
node, but the driver is attached to the &usb2phy0 node. This patch adds
of_platform_device_dummy_drv() which can be used in such situations. When
called on the &u2phy0_host it will attach a dummy driver to it so that
deep probe is happy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 9 +++++++++
 include/of.h          | 5 +++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index bc0477be1d..e3e8227b8c 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -169,6 +169,15 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	return NULL;
 }
 
+struct driver_d dummy_driver = {
+	.name = "dummy-driver",
+};
+
+void of_platform_device_dummy_drv(struct device_d *dev)
+{
+	dev->driver = &dummy_driver;
+}
+
 /**
  * of_device_enable_and_register - Enable and register device
  * @np: pointer to node to enable create device for
diff --git a/include/of.h b/include/of.h
index 98de9d8480..6f1ec94e7e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -268,6 +268,7 @@ extern int barebox_register_fdt(const void *dtb);
 
 extern struct device_d *of_platform_device_create(struct device_node *np,
 						struct device_d *parent);
+extern void of_platform_device_dummy_drv(struct device_d *dev);
 extern int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
 				struct device_d *parent);
@@ -365,6 +366,10 @@ static inline struct device_d *of_platform_device_create(struct device_node *np,
 	return NULL;
 }
 
+static inline void of_platform_device_dummy_drv(struct device_d *dev)
+{
+}
+
 static inline int of_device_ensure_probed(struct device_node *np)
 {
 	return 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

