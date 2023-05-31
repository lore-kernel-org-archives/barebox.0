Delivery-date: Wed, 31 May 2023 17:01:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJv-004O3u-DD
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJr-0000qu-PJ
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cs+B+ewqABzFSIjawuowxoO0fTtYJxai51RpzcY6X+w=; b=XgDvXbi043Y2zQn5Zi1/UMnA7Y
	OnAq5x0TWDWdo5NLNeQD9Nqd4ch7/YQ/KpkY+z+YNfjPe/3pucwCjQ9IiHtJOlnJexZVNgWiM7egk
	pUQC7+8juE6qs84+gBAVhwbv0EQ+JF05s6HBwSlMHozJLqyRlCnzja3TRBWRPjwmofOt/N2rmXyjI
	f7Nr/jVek9RML40CmEAIbnf0+LNTS7YVvDCwDUyE7kotumN0ojyah0f3w6602OWQRLgmF/itBfC1s
	Lx80mz760IhaBlAITGYcDn2NlS0orSezyG7Ubr/WhXyuVOaR3S0/oesC/ddK15GMIiwbc9BwTVQms
	6Au1W1Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIk-000ByW-0W;
	Wed, 31 May 2023 14:59:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIb-000BsX-1h
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008Fo-VY; Wed, 31 May 2023 16:59:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0048Ho-A2; Wed, 31 May 2023 16:59:34 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sD4-8K; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:19 +0200
Message-Id: <20230531145927.1399282-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_075941_677409_69F8E69A 
X-CRM114-Status: GOOD (  18.10  )
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
Subject: [PATCH 10/18] cdev: have devfs_add_partition return existing identical partition, not NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Starting with commit 7f9f45b9bfef ("devfs: Do not create overlapping
partitions"), any overlapping is disallowed. Overlapping can be useful
though to bridge the gap between partition described in DT and via
on-disk partition tables. Let's handle the case of identical partitions
specially and have it neither be an error or a duplicate partition, but
instead just return the existing partition. This existing partition will
be given a device tree node and thus enabling schemes like:

  &{/state} {
  	backend = <&state_part>;
  };

  &mmc1 {
         partitions {
                 compatible = "fixed-partitions";
                 #address-cells = <2>;
                 #size-cells = <2>;

                 state_part: partition@5300000 {
                         label = "barebox-state";
			 /* will be folded with overlapping GPT partition if found */
                         reg = <0x0 0x5300000 0x0 0x100000>;
                 };
         };
  };

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 50 ++++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 39 insertions(+), 11 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index a0732dafca42..b3a274d01ee0 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -402,6 +402,12 @@ int devfs_remove(struct cdev *cdev)
 	return 0;
 }
 
+static bool region_identical(loff_t starta, loff_t lena,
+			     loff_t startb, loff_t lenb)
+{
+	return starta == startb && lena == lenb;
+}
+
 static bool region_overlap(loff_t starta, loff_t lena,
 			   loff_t startb, loff_t lenb)
 {
@@ -412,10 +418,22 @@ static bool region_overlap(loff_t starta, loff_t lena,
 	return 1;
 }
 
-static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
+/**
+ * check_overlap() - check overlap with existing partitions
+ * @cdev: parent cdev
+ * @name: partition name for informational purposes on conflict
+ * @offset: offset of new partition to be added
+ * @size: size of new partition to be added
+ *
+ * Return: NULL if no overlapping partition found or overlapping
+ *         partition if and only if it's identical in offset and size
+ *         to an existing partition. Otherwise, PTR_ERR(-EINVAL).
+ */
+static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
 {
 	struct cdev *cpart;
 	loff_t cpart_offset;
+	int ret;
 
 	list_for_each_entry(cpart, &cdev->partitions, partition_entry) {
 		cpart_offset = cpart->offset;
@@ -428,20 +446,28 @@ static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, lof
 		if (cpart->mtd)
 			cpart_offset = cpart->mtd->master_offset;
 
-		if (region_overlap(cpart_offset, cpart->size,
-				   offset, size))
+		if (region_identical(cpart_offset, cpart->size, offset, size)) {
+			ret = 0;
 			goto conflict;
+		}
+
+		if (region_overlap(cpart_offset, cpart->size, offset, size)) {
+			ret = -EINVAL;
+			goto conflict;
+		}
 	}
 
-	return 0;
+	return NULL;
 
 conflict:
-	pr_err("New partition %s (0x%08llx-0x%08llx) on %s "
-		"overlaps with partition %s (0x%08llx-0x%08llx), not creating it\n",
-		name, offset, offset + size - 1, cdev->name,
-		cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
+	__pr_printk(ret ? MSG_WARNING : MSG_DEBUG,
+		    "New partition %s (0x%08llx-0x%08llx) on %s "
+		    "%s with partition %s (0x%08llx-0x%08llx), not creating it\n",
+		    name, offset, offset + size - 1, cdev->name,
+		    ret ? "conflicts" : "identical",
+		    cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
 
-	return -EINVAL;
+	return ret ? ERR_PTR(ret) : cpart;
 }
 
 static struct cdev *__devfs_add_partition(struct cdev *cdev,
@@ -449,6 +475,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 {
 	loff_t offset, size;
 	static struct cdev *new;
+	struct cdev *overlap;
 
 	if (cdev_by_name(partinfo->name))
 		return ERR_PTR(-EEXIST);
@@ -479,8 +506,9 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (check_overlap(cdev, partinfo->name, offset, size))
-		return ERR_PTR(-EINVAL);
+	overlap = check_overlap(cdev, partinfo->name, offset, size);
+	if (overlap)
+		return overlap;
 
 	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
 		struct mtd_info *mtd;
-- 
2.39.2



