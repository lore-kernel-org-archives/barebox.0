Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSu-0005d1-R8
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:21:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C12A3A00C77
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:56 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:38 +0200
Message-Id: <1535545212-18871-23-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 22/56] UBI: factorize code used to manipulate volumes at
 attach time
To: barebox@lists.infradead.org

From: Boris Brezillon <boris.brezillon@free-electrons.com>

Volume creation/search code is duplicated in a few places (fastmap and
non fastmap code). Create some helpers to factorize the code.

Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c  | 151 +++++++++++++++++++++++++++++++++-------------
 drivers/mtd/ubi/fastmap.c |  27 +--------
 drivers/mtd/ubi/ubi.h     |   1 +
 3 files changed, 112 insertions(+), 67 deletions(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 4d3a936ae861..d450f6c0d65b 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -89,6 +89,92 @@ static int self_check_ai(struct ubi_device *ubi, struct ubi_attach_info *ai);
 static struct ubi_ec_hdr *ech;
 static struct ubi_vid_hdr *vidh;
 
+#define AV_FIND		BIT(0)
+#define AV_ADD		BIT(1)
+#define AV_FIND_OR_ADD	(AV_FIND | AV_ADD)
+
+/**
+ * find_or_add_av - internal function to find a volume, add a volume or do
+ *		    both (find and add if missing).
+ * @ai: attaching information
+ * @vol_id: the requested volume ID
+ * @flags: a combination of the %AV_FIND and %AV_ADD flags describing the
+ *	   expected operation. If only %AV_ADD is set, -EEXIST is returned
+ *	   if the volume already exists. If only %AV_FIND is set, NULL is
+ *	   returned if the volume does not exist. And if both flags are
+ *	   set, the helper first tries to find an existing volume, and if
+ *	   it does not exist it creates a new one.
+ * @created: in value used to inform the caller whether it"s a newly created
+ *	     volume or not.
+ *
+ * This function returns a pointer to a volume description or an ERR_PTR if
+ * the operation failed. It can also return NULL if only %AV_FIND is set and
+ * the volume does not exist.
+ */
+static struct ubi_ainf_volume *find_or_add_av(struct ubi_attach_info *ai,
+					      int vol_id, unsigned int flags,
+					      bool *created)
+{
+	struct ubi_ainf_volume *av;
+	struct rb_node **p = &ai->volumes.rb_node, *parent = NULL;
+
+	/* Walk the volume RB-tree to look if this volume is already present */
+	while (*p) {
+		parent = *p;
+		av = rb_entry(parent, struct ubi_ainf_volume, rb);
+
+		if (vol_id == av->vol_id) {
+			*created = false;
+
+			if (!(flags & AV_FIND))
+				return ERR_PTR(-EEXIST);
+
+			return av;
+		}
+
+		if (vol_id > av->vol_id)
+			p = &(*p)->rb_left;
+		else
+			p = &(*p)->rb_right;
+	}
+
+	if (!(flags & AV_ADD))
+		return NULL;
+
+	/* The volume is absent - add it */
+	av = kzalloc(sizeof(*av), GFP_KERNEL);
+	if (!av)
+		return ERR_PTR(-ENOMEM);
+
+	av->vol_id = vol_id;
+
+	if (vol_id > ai->highest_vol_id)
+		ai->highest_vol_id = vol_id;
+
+	rb_link_node(&av->rb, parent, p);
+	rb_insert_color(&av->rb, &ai->volumes);
+	ai->vols_found += 1;
+	*created = true;
+	dbg_bld("added volume %d", vol_id);
+	return av;
+}
+
+/**
+ * ubi_find_or_add_av - search for a volume in the attaching information and
+ *			add one if it does not exist.
+ * @ai: attaching information
+ * @vol_id: the requested volume ID
+ * @created: whether the volume has been created or not
+ *
+ * This function returns a pointer to the new volume description or an
+ * ERR_PTR if the operation failed.
+ */
+static struct ubi_ainf_volume *ubi_find_or_add_av(struct ubi_attach_info *ai,
+						  int vol_id, bool *created)
+{
+	return find_or_add_av(ai, vol_id, AV_FIND_OR_ADD, created);
+}
+
 /**
  * add_to_list - add physical eraseblock to a list.
  * @ai: attaching information
@@ -288,44 +374,20 @@ static struct ubi_ainf_volume *add_volume(struct ubi_attach_info *ai,
 					  const struct ubi_vid_hdr *vid_hdr)
 {
 	struct ubi_ainf_volume *av;
-	struct rb_node **p = &ai->volumes.rb_node, *parent = NULL;
+	bool created;
 
 	ubi_assert(vol_id == be32_to_cpu(vid_hdr->vol_id));
 
-	/* Walk the volume RB-tree to look if this volume is already present */
-	while (*p) {
-		parent = *p;
-		av = rb_entry(parent, struct ubi_ainf_volume, rb);
-
-		if (vol_id == av->vol_id)
-			return av;
+	av = ubi_find_or_add_av(ai, vol_id, &created);
+	if (IS_ERR(av) || !created)
+		return av;
 
-		if (vol_id > av->vol_id)
-			p = &(*p)->rb_left;
-		else
-			p = &(*p)->rb_right;
-	}
-
-	/* The volume is absent - add it */
-	av = kmalloc(sizeof(struct ubi_ainf_volume), GFP_KERNEL);
-	if (!av)
-		return ERR_PTR(-ENOMEM);
-
-	av->highest_lnum = av->leb_count = 0;
-	av->vol_id = vol_id;
-	av->root = RB_ROOT;
 	av->used_ebs = be32_to_cpu(vid_hdr->used_ebs);
 	av->data_pad = be32_to_cpu(vid_hdr->data_pad);
 	av->compat = vid_hdr->compat;
 	av->vol_type = vid_hdr->vol_type == UBI_VID_DYNAMIC ? UBI_DYNAMIC_VOLUME
 							    : UBI_STATIC_VOLUME;
-	if (vol_id > ai->highest_vol_id)
-		ai->highest_vol_id = vol_id;
 
-	rb_link_node(&av->rb, parent, p);
-	rb_insert_color(&av->rb, &ai->volumes);
-	ai->vols_found += 1;
-	dbg_bld("added volume %d", vol_id);
 	return av;
 }
 
@@ -620,6 +682,21 @@ int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 }
 
 /**
+ * ubi_add_av - add volume to the attaching information.
+ * @ai: attaching information
+ * @vol_id: the requested volume ID
+ *
+ * This function returns a pointer to the new volume description or an
+ * ERR_PTR if the operation failed.
+ */
+struct ubi_ainf_volume *ubi_add_av(struct ubi_attach_info *ai, int vol_id)
+{
+	bool created;
+
+	return find_or_add_av(ai, vol_id, AV_ADD, &created);
+}
+
+/**
  * ubi_find_av - find volume in the attaching information.
  * @ai: attaching information
  * @vol_id: the requested volume ID
@@ -630,22 +707,10 @@ int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 struct ubi_ainf_volume *ubi_find_av(const struct ubi_attach_info *ai,
 				    int vol_id)
 {
-	struct ubi_ainf_volume *av;
-	struct rb_node *p = ai->volumes.rb_node;
-
-	while (p) {
-		av = rb_entry(p, struct ubi_ainf_volume, rb);
-
-		if (vol_id == av->vol_id)
-			return av;
-
-		if (vol_id > av->vol_id)
-			p = p->rb_left;
-		else
-			p = p->rb_right;
-	}
+	bool created;
 
-	return NULL;
+	return find_or_add_av((struct ubi_attach_info *)ai, vol_id, AV_FIND,
+			      &created);
 }
 
 /**
diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index c10ef0650760..b0979af62f18 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -120,40 +120,19 @@ static struct ubi_ainf_volume *add_vol(struct ubi_attach_info *ai, int vol_id,
 				       int last_eb_bytes)
 {
 	struct ubi_ainf_volume *av;
-	struct rb_node **p = &ai->volumes.rb_node, *parent = NULL;
 
-	while (*p) {
-		parent = *p;
-		av = rb_entry(parent, struct ubi_ainf_volume, rb);
-
-		if (vol_id > av->vol_id)
-			p = &(*p)->rb_left;
-		else if (vol_id < av->vol_id)
-			p = &(*p)->rb_right;
-		else
-			return ERR_PTR(-EINVAL);
-	}
+	av = ubi_add_av(ai, vol_id);
+	if (IS_ERR(av))
+		return av;
 
-	av = kmalloc(sizeof(struct ubi_ainf_volume), GFP_KERNEL);
-	if (!av)
-		goto out;
-
-	av->highest_lnum = av->leb_count = av->used_ebs = 0;
-	av->vol_id = vol_id;
 	av->data_pad = data_pad;
 	av->last_data_size = last_eb_bytes;
 	av->compat = 0;
 	av->vol_type = vol_type;
-	av->root = RB_ROOT;
 	if (av->vol_type == UBI_STATIC_VOLUME)
 		av->used_ebs = used_ebs;
 
 	dbg_bld("found volume (ID %i)", vol_id);
-
-	rb_link_node(&av->rb, parent, p);
-	rb_insert_color(&av->rb, &ai->volumes);
-
-out:
 	return av;
 }
 
diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index c2f54a4b0b3f..eb81298beff3 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -729,6 +729,7 @@ extern struct blocking_notifier_head ubi_notifiers;
 /* attach.c */
 int ubi_add_to_av(struct ubi_device *ubi, struct ubi_attach_info *ai, int pnum,
 		  int ec, const struct ubi_vid_hdr *vid_hdr, int bitflips);
+struct ubi_ainf_volume *ubi_add_av(struct ubi_attach_info *ai, int vol_id);
 struct ubi_ainf_volume *ubi_find_av(const struct ubi_attach_info *ai,
 				    int vol_id);
 void ubi_remove_av(struct ubi_attach_info *ai, struct ubi_ainf_volume *av);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
