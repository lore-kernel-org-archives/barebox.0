Delivery-date: Fri, 14 Oct 2022 18:37:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgp-008i6x-Kx
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgm-0005Sa-S0
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ydmq6sUeQnU3Ab8xWHnmBj4c1Z4rN6+ocKwMMt9YUhA=; b=C+095JB8W/UIGFHH+s4m8xm+46
	7eC35C/gD9Vo4KESmwwPJJt3+DFbx51dlV8Hdm2NFr5l+mKYYvoQUBF6fuAAsmIXGOhQpGUTEjKbn
	1Mvlx34kbisMJIeSBCUv8dkQ1DUpwsaII5Jqt+M1nADPp0Nh0bGpzW6D0YOVFF6UAQBJLlh6G+2g0
	qnS0R98TLR4LcaoxIU7krhqi9RvL9JcYKQ36rv/TurUZtfhUjkk5ho2B61KPTA4jXJYnBRkfjkpq4
	MvVdaQZk6VR/w4nw6QNpTuYJi23cQBvNUM5GGDemjJ+HKcBKFsd0QuiC09kg+jOWIiLmzW1ybCfhS
	R8TScWJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNfN-00FNeA-Ev; Fri, 14 Oct 2022 16:36:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNSv-Mg
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-0004xr-SQ
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-001WSf-6S
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00Fzlh-Gu
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:33 +0200
Message-Id: <20221014163534.3812272-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_761824_67C8F3FC 
X-CRM114-Status: GOOD (  10.56  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] of: partition: add a helper to determin if a node is a of-partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This helper checks if the given device_node is a of-partition. The check
is based on the node name which should something like partition@xxx. If
that fails the we try to check if the parent node contains a
"fixed-partitions" compatible.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/partition.c | 12 ++++++++++++
 include/of.h           |  6 ++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index abbda674d6..494fd92660 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -107,6 +107,18 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	return 0;
 }
 
+int is_of_partition(struct device_node *np)
+{
+	if (of_node_name_eq(np, "partition"))
+		return 1;
+
+	np = of_get_parent(np);
+	if (of_device_is_compatible(np, "fixed-partitions"))
+		return 1;
+
+	return 0;
+}
+
 int of_partition_ensure_probed(struct device_node *np)
 {
 	np = of_get_parent(np);
diff --git a/include/of.h b/include/of.h
index 052d5fcad8..d6a3e75f86 100644
--- a/include/of.h
+++ b/include/of.h
@@ -309,6 +309,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node);
 int of_parse_partitions(struct cdev *cdev, struct device_node *node);
 int of_fixup_partitions(struct device_node *np, struct cdev *cdev);
 int of_partitions_register_fixup(struct cdev *cdev);
+int is_of_partition(struct device_node *np);
 struct device_node *of_get_stdoutpath(unsigned int *);
 int of_device_is_stdout_path(struct device_d *dev, unsigned int *baudrate);
 const char *of_get_model(void);
@@ -359,6 +360,11 @@ static inline int of_partitions_register_fixup(struct cdev *cdev)
 	return -ENOSYS;
 }
 
+static inline int is_of_partition(struct device_node *np)
+{
+	return -ENOSYS;
+}
+
 static inline struct device_node *of_get_stdoutpath(unsigned int *rate)
 {
 	return NULL;
-- 
2.30.2



