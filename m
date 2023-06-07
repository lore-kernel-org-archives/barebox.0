Delivery-date: Wed, 07 Jun 2023 14:08:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ry8-00EJRy-Gj
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ry5-0003wI-Qf
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ksPHlOfpVjJC+Ulceea/zLezBk5cINgKrRzn7aYbo3k=; b=Iuqo3B999PuTC1S+s88NNB0hso
	EQ2nV4iitSlKLrE3TRacA050q9/l7SSqQZ3S8iyu2CnBl3HFp/hYZy9ioi75ui8iME9AsZMbdk1si
	ztoq8KJ4DydV785JBcXmirrcQkqghQ0XCW6DOyIK+BIuOk9Zjy2GwabtTE4jmLBO3KRG03TH1a6s0
	6YKQnaGefRMR7piesNX6R3/gwquTfDOTpmnXX4eKEo0ut9kuwOKrNC8ihKvwNwPmVoQ3oFz7Qq1xK
	BVhS2pGXeP04ej4f8W7Gf3TwuksL38ksjJ7JPJfMH4X8KJPeSmCBrGBWSKT6yhuAQp5GCTcqyco8n
	ceuhO7zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwv-005kuT-0j;
	Wed, 07 Jun 2023 12:07:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwl-005knc-0G
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-00032x-E6; Wed, 07 Jun 2023 14:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-005jkH-NW; Wed, 07 Jun 2023 14:07:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyN0-2Z; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:06 +0200
Message-Id: <20230607120714.3083182-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050727_138523_FEB7144B 
X-CRM114-Status: GOOD (  19.85  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 11/19] cdev: have devfs_add_partition return existing identical partition, not NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Starting with commit 7f9f45b9bfef ("devfs: Do not create overlapping
partitions"), any overlapping is disallowed. Overlapping can be useful
though to bridge the gap between partition described in DT and via
on-disk partition tables. Let's handle the case of identical partitions
specially and have it neither be an error or a duplicate partition, but
instead just return the existing partition and create a cdev link to it
if the name differs. This existing partition will be given a device tree
node and thus enabling schemes like:

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
v1 -> v2:
  - create link to existing cdev if name differs
  - add identical: goto label to make intent clearer
---
 fs/devfs-core.c | 57 +++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 46 insertions(+), 11 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 72a37918962b..c9f7fcfb076d 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -405,6 +405,12 @@ int devfs_remove(struct cdev *cdev)
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
@@ -415,10 +421,22 @@ static bool region_overlap(loff_t starta, loff_t lena,
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
@@ -431,20 +449,29 @@ static int check_overlap(struct cdev *cdev, const char *name, loff_t offset, lof
 		if (cpart->mtd)
 			cpart_offset = cpart->mtd->master_offset;
 
-		if (region_overlap(cpart_offset, cpart->size,
-				   offset, size))
+		if (region_identical(cpart_offset, cpart->size, offset, size)) {
+			ret = 0;
+			goto identical;
+		}
+
+		if (region_overlap(cpart_offset, cpart->size, offset, size)) {
+			ret = -EINVAL;
 			goto conflict;
+		}
 	}
 
-	return 0;
+	return NULL;
 
+identical:
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
@@ -452,6 +479,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 {
 	loff_t offset, size;
 	static struct cdev *new;
+	struct cdev *overlap;
 
 	if (cdev_by_name(partinfo->name))
 		return ERR_PTR(-EEXIST);
@@ -482,8 +510,15 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (check_overlap(cdev, partinfo->name, offset, size))
-		return ERR_PTR(-EINVAL);
+	overlap = check_overlap(cdev, partinfo->name, offset, size);
+	if (overlap) {
+		if (!IS_ERR(overlap)) {
+			/* only fails with -EEXIST, which is fine */
+			(void)devfs_create_link(overlap, partinfo->name);
+		}
+
+		return overlap;
+	}
 
 	if (IS_ENABLED(CONFIG_MTD) && cdev->mtd) {
 		struct mtd_info *mtd;
-- 
2.39.2



