Delivery-date: Wed, 31 May 2023 17:01:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NKG-004OCy-0Q
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NKA-00017d-Gp
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EGPqZJYg4Un9jlnHcEhTQ07nXNhfyFmlTZE4Ty21omQ=; b=OX45IjvWdhVMB6lLMCHtKO7GWX
	tXMCOLfTvo5Cw2vauSUCUMZeBUx4YnmHGICu6d9ptsAt98McW2B8DZNFrtl4Hoeanj4Xjya37KJc0
	/hY/1TsKSR4mJjDCPRNw+rPModYA2hDEHsxnz561oiVxA2ZcF+DHS9gt/pPME8XHtjMiA5203ATmo
	Nhz+J8bPtHSQtaCNTOfeS2Bk8TpTO9lo8WRXpybRswkmb3qRv9es8HkYiCkY0GkbhmyD+am/3Tfhc
	q+BRa/qMK40mK4ers+9dp0TqNXe9pgDarONJqCzpf2k9CvSj1p7enqhHR0WzyKVvm6ttkziOFLgS3
	DdKCmr0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NJ0-000CGu-32;
	Wed, 31 May 2023 15:00:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIi-000BxO-12
	for barebox@bombadil.infradead.org;
	Wed, 31 May 2023 14:59:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=EGPqZJYg4Un9jlnHcEhTQ07nXNhfyFmlTZE4Ty21omQ=; b=T6/Z0+ZeZ/btkzWVXcXFAs5QXV
	FkH6DPNB+M1+bCTeYrwbwjtMKfqDXgDQH8MJGvtnetjtuu+yboj/g6tUMUPD/wpC4FTssKXlM03/+
	eudAOO37ex14Xy+fPVkWY49OL1DbP0fBH2KwzpxTaaxrdGM84pOr400hXgvFRyrfGDO84nJQgutTe
	13hfmfkclZ/wmD75OFr/z6T8MBL7UXgd2lANFBZINesp0WJbSDaY44kOwUWcRVdCg5gy7K0cObs6v
	ubc9eyjKMUkFJTGVDRPsuVVn2hCtd9lkc+IyHVIAYTgREwbtRoX42fZOrcYXC3Dtjk+XldR35GqQa
	PYIdMSPg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NId-00FUjY-2p
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIV-0008H0-Dm; Wed, 31 May 2023 16:59:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0048IA-Pm; Wed, 31 May 2023 16:59:34 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sCg-6U; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:13 +0200
Message-Id: <20230531145927.1399282-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_155944_018997_25F78C8E 
X-CRM114-Status: GOOD (  15.91  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/18] of: partition: support of_partition_ensure_probed on parent device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox-state code uses of_partition_ensure_probed to resolve the
backend property. We want to allow backend to point directly at a
storage device instead of a partition. We can't determine whether a DT
device is a storage device though before it's probed, so let's have
of_partition_ensure_probed support either case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 26 ++++++++++++++++++++++----
 drivers/of/platform.c  |  2 +-
 2 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 40c47f554ad2..a70e503cec9e 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -110,14 +110,32 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	return 0;
 }
 
+/**
+ * of_partition_ensure_probed - ensure a parition is probed
+ * @np: pointer to a partition or to a partitionable device
+ *      Unfortunately, there is no completely reliable way
+ *      to differentiate partitions from devices prior to
+ *      probing, because partitions may also have compatibles.
+ *      We only handle nvmem-cells, so anything besides that
+ *      is assumed to be a device that should be probed directly.
+ *
+ * Returns zero on success or a negative error code otherwise
+ */
 int of_partition_ensure_probed(struct device_node *np)
 {
-	np = of_get_parent(np);
+	struct device_node *parent = of_get_parent(np);
 
-	if (of_device_is_compatible(np, "fixed-partitions"))
-		np = of_get_parent(np);
+	if (parent && of_device_is_compatible(parent, "fixed-partitions"))
+		return of_device_ensure_probed(of_get_parent(np));
 
-	return np ? of_device_ensure_probed(np) : -EINVAL;
+	if (of_get_compatible_child(np, "fixed-partitions"))
+		return of_device_ensure_probed(np);
+
+	if (!of_property_present(np, "compatible") ||
+	    of_device_is_compatible(np, "nvmem-cells"))
+		return of_device_ensure_probed(parent);
+
+	return of_device_ensure_probed(np);
 }
 EXPORT_SYMBOL_GPL(of_partition_ensure_probed);
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ab737629325a..78b8a31331db 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -484,7 +484,7 @@ int of_device_ensure_probed(struct device_node *np)
 {
 	struct device *dev;
 
-	if (!deep_probe_is_supported())
+	if (!np || !deep_probe_is_supported())
 		return 0;
 
 	dev = of_device_create_on_demand(np);
-- 
2.39.2



