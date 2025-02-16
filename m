Delivery-date: Sun, 16 Feb 2025 16:08:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjgFl-00374q-0L
	for lore@lore.pengutronix.de;
	Sun, 16 Feb 2025 16:08:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjgFj-0002F5-PN
	for lore@pengutronix.de; Sun, 16 Feb 2025 16:08:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hA3+xwGI+1wcmXUSmlgMmWEVFamtg+ueXDfTWPFro0Q=; b=JiqNDffGdCA1SkpENwfO4z3Scs
	KZspJB3dgRial2gSPH2Y0CIMLFknr5Ila3rsJ89Cm25KczGiLE+p+3BSjgbXHtOzUhakWj9jI8NRU
	pUnIhKYphLf0L9VO+PsfC/Q+9Qx3S2gMylFts7detDJmruPLBkB30Crvh9iX2d5VzjfZJ5KAMEf1B
	J58/FsOw7uuaUeG4ABSuR3Pa9bMjuGfsmXcsswD4LUGdUwaB3lx+HBpZ1vv8QJeKcnsHe1hZ8F674
	TiZ6c/zVl2cxrENBdhVdx0ERDFFGDq+vtE8RwdikXtb+V2GZqvTMc88s4KaSUinVPk27Fodx6p+Sz
	KDXq5DNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgEy-00000001zL9-3fPU;
	Sun, 16 Feb 2025 15:07:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgEv-00000001zKl-3a1I
	for barebox@lists.infradead.org;
	Sun, 16 Feb 2025 15:07:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjgEr-00023F-B6; Sun, 16 Feb 2025 16:07:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjgEp-001GBi-1O;
	Sun, 16 Feb 2025 16:07:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjgEp-009qxd-16;
	Sun, 16 Feb 2025 16:07:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 16 Feb 2025 16:07:17 +0100
Message-Id: <20250216150718.2348520-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_070725_918164_51042EBC 
X-CRM114-Status: GOOD (  13.53  )
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
Subject: [PATCH 1/2] cdev: merge identical partitions despite DEVFS_PARTITION_CAN_OVERLAP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When a partition is created that's exactly the same size and offset as
an existing partition, barebox will create the new partition as link to
the existing partition.

Maintain this behavior, even if DEVFS_PARTITION_CAN_OVERLAP is set.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 26 ++++++++++++++------------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 133fd9ec026a..c9313ed73167 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -440,7 +440,7 @@ int devfs_remove(struct cdev *cdev)
 /**
  * check_overlap() - check overlap with existing partitions
  * @cdev: parent cdev
- * @name: partition name for informational purposes on conflict
+ * @partinfo: partition information
  * @offset: offset of new partition to be added
  * @size: size of new partition to be added
  *
@@ -448,7 +448,9 @@ int devfs_remove(struct cdev *cdev)
  *         partition if and only if it's identical in offset and size
  *         to an existing partition. Otherwise, PTR_ERR(-EINVAL).
  */
-static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t offset, loff_t size)
+static struct cdev *check_overlap(struct cdev *cdev,
+				  const struct devfs_partition *partinfo,
+				  loff_t offset, loff_t size)
 {
 	struct cdev *cpart;
 	loff_t cpart_offset;
@@ -471,6 +473,8 @@ static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t of
 		}
 
 		if (region_overlap_size(cpart_offset, cpart->size, offset, size)) {
+			if (partinfo->flags & DEVFS_PARTITION_CAN_OVERLAP)
+				return NULL;
 			ret = -EINVAL;
 			goto conflict;
 		}
@@ -483,7 +487,7 @@ static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t of
 	__pr_printk(ret ? MSG_WARNING : MSG_DEBUG,
 		    "New partition %s (0x%08llx-0x%08llx) on %s "
 		    "%s with partition %s (0x%08llx-0x%08llx), not creating it\n",
-		    name, offset, offset + size - 1, cdev->name,
+		    partinfo->name, offset, offset + size - 1, cdev->name,
 		    ret ? "conflicts" : "identical",
 		    cpart->name, cpart_offset, cpart_offset + cpart->size - 1);
 
@@ -530,16 +534,14 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	if (!(partinfo->flags & DEVFS_PARTITION_CAN_OVERLAP)) {
-		overlap = check_overlap(cdev, partinfo->name, offset, size);
-		if (overlap) {
-			if (!IS_ERR(overlap)) {
-				/* only fails with -EEXIST, which is fine */
-				(void)devfs_create_link(overlap, partinfo->name);
-			}
-
-			return overlap;
+	overlap = check_overlap(cdev, partinfo, offset, size);
+	if (overlap) {
+		if (!IS_ERR(overlap)) {
+			/* only fails with -EEXIST, which is fine */
+			(void)devfs_create_link(overlap, partinfo->name);
 		}
+
+		return overlap;
 	}
 
 	/* Filter flags that we want to pass along to children */
-- 
2.39.5



