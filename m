Delivery-date: Mon, 28 Jun 2021 08:47:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2t-0001fY-Mp
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 08:47:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxl2s-0004Mj-8k
	for lore@pengutronix.de; Mon, 28 Jun 2021 08:47:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4oFP7HqcATPiHqmx0MlHhZOB5w0Ko1wkoOVtEhvhqAg=; b=XjS8+ITPdBsEs7
	lDhFEgyXAiQ563cRDgEJtm/+ra9EVOzEOnQyo7huBtu6SYqkLtQiouZOiWND6jxM4/pCWhuyG6gu7
	/ty2g4n3GVMRlAKwC/iKMsMFcQSM39LGTRPqViycukLGcnxvhbRZCbHp6D7fiU4pyuyozAitKUbAH
	UPETJPr23PjlmpLHDDN2ZDvv6xw2Q6wvKmjM2MPT7F91DNsLDz+FPjNZ4QfQ/19LYJfUUlHhxL/cW
	/DPqUzdvbB2G2jGwn5Na93axoGU/nWQmiZPn+afHtXfXY7rCPtEPZSfUK4gc3R4uPVuefb6tNA1tj
	nLceDV9UipfFB4jsBauQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxl1i-0074uV-2L; Mon, 28 Jun 2021 06:45:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxl1V-0074n0-1J
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 06:45:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0003ie-Ok; Mon, 28 Jun 2021 08:45:19 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxl1D-0007VL-6V; Mon, 28 Jun 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 08:45:13 +0200
Message-Id: <20210628064517.28636-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210628064517.28636-1-a.fatoum@pengutronix.de>
References: <20210628064517.28636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_234537_098293_9BDE1FBA 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] of: partition: implement of_partition_ensure_probed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The device tree nodes for both barebox environment and state can have
phandles that reference partitions. Environment runs at late_initcall
level, so deep probe will have populated the device by the time the
probe is called. barebox-state however is probed at device_initcall
level and thus must take care itself to ensure the partition provider is
probed. Add a new of_partition_ensure_probed that does this. It can
handle both legacy and new style (fixed) partitions.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 11 +++++++++++
 include/of.h           |  6 ++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index b6d0523fd960..10081363deee 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -118,6 +118,17 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	return 0;
 }
 
+int of_partition_ensure_probed(struct device_node *np)
+{
+	np = of_get_parent(np);
+
+	if (of_device_is_compatible(np, "fixed-partitions"))
+		np = of_get_parent(np);
+
+	return np ? of_device_ensure_probed(np) : -EINVAL;
+}
+EXPORT_SYMBOL_GPL(of_partition_ensure_probed);
+
 static void delete_subnodes(struct device_node *np)
 {
 	struct device_node *part, *tmp;
diff --git a/include/of.h b/include/of.h
index 677f48d0aba1..4042d8dee8d4 100644
--- a/include/of.h
+++ b/include/of.h
@@ -283,6 +283,7 @@ extern int of_device_ensure_probed(struct device_node *np);
 extern int of_device_ensure_probed_by_alias(const char *alias);
 extern int of_devices_ensure_probed_by_property(const char *property_name);
 extern int of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids);
+extern int of_partition_ensure_probed(struct device_node *np);
 
 struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
@@ -398,6 +399,11 @@ of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids)
 	return 0;
 }
 
+static inline int of_partition_ensure_probed(struct device_node *np)
+{
+	return 0;
+}
+
 static inline int of_bus_n_addr_cells(struct device_node *np)
 {
 	return 0;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

