Delivery-date: Fri, 20 Dec 2024 12:14:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOay6-00AQXH-2O
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 12:14:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOay6-0007hB-Ke
	for lore@pengutronix.de; Fri, 20 Dec 2024 12:14:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a2KZf0P010SZT0k0Wwc5QINLmaYdZUTwA37A24a3kJs=; b=HnWgW54x2pPYpImZA7Yh1px6Ed
	Zij036X+SzIPalR2QhjmARJ82WcLaJf8Ym4SdqBVxmp46kwuXWOgPwC9ydtRy4KjpQJ5w1ZjOTOQw
	wXpzeQs36KvMpd/ciT/UcoIthETYDG7j4rlegaZrrKC85Bh6yNONX+54p0T0V+M3CWzbA0e3hKufF
	QV2HqXN7T+TO0DvFjmoIy8mkW/4BhH2cEJClLxtxsrNCdD2yqI+w0E3/Q65+mVtw0WI6w2vnzH66I
	Qi/KwFOs/tXsbXZqfcY0HHJjOjLcoC8IzR9EesGXAlAFGGOI7Eotvqyc8rWS5Cbl3txwbAqNcQRUh
	GUhBnueA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOaxb-00000004iTH-2WDR;
	Fri, 20 Dec 2024 11:14:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOacC-00000004eCf-0LCJ
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 10:52:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOacA-0002W4-KD; Fri, 20 Dec 2024 11:52:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOac9-004MSg-27;
	Fri, 20 Dec 2024 11:52:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOacA-001FPQ-16;
	Fri, 20 Dec 2024 11:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Dec 2024 11:52:12 +0100
Message-Id: <20241220105213.297539-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_025216_121929_ACB3E6AF 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND 1/2] cdev: allow overriding partition overlap check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox will refuse to create overlapping partitions that are not
completely identical to an existing one.

The user on the shell may still want to allocate partitions that are
known to overlap, e.g. because they place multiple fixed partition into
one MBR partition or because we want to operate as a part of a cdev
interactively as if it were once device.

Don't preclude such use cases by adding a flag that just disables
overlap checks.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v0 -> v1 RESEND:
  - actually send out both patches
---
 fs/devfs-core.c  | 23 +++++++++++++++--------
 include/driver.h |  1 +
 2 files changed, 16 insertions(+), 8 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 0651be3d8fc4..b143620ba2a0 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -493,11 +493,11 @@ static struct cdev *check_overlap(struct cdev *cdev, const char *name, loff_t of
 static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		const struct devfs_partition *partinfo, loff_t *end)
 {
+	unsigned inherited_flags = partinfo->flags;
 	loff_t offset, size;
 	loff_t _end = end ? *end : 0;
 	static struct cdev *new;
 	struct cdev *overlap;
-	unsigned inherited_flags = 0;
 
 	if (cdev_by_name(partinfo->name))
 		return ERR_PTR(-EEXIST);
@@ -530,14 +530,21 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	overlap = check_overlap(cdev, partinfo->name, offset, size);
-	if (overlap) {
-		if (!IS_ERR(overlap)) {
-			/* only fails with -EEXIST, which is fine */
-			(void)devfs_create_link(overlap, partinfo->name);
+	/* DEVFS_PARTITION_CAN_OVERLAP is only allowed for partitions that have
+	 * a defined offset. Everything else must pass the overlap check
+	 */
+	if (!(partinfo->offset > 0 && (inherited_flags & DEVFS_PARTITION_CAN_OVERLAP))) {
+		overlap = check_overlap(cdev, partinfo->name, offset, size);
+		if (overlap) {
+			if (!IS_ERR(overlap)) {
+				/* only fails with -EEXIST, which is fine */
+				(void)devfs_create_link(overlap, partinfo->name);
+			}
+
+			return overlap;
 		}
 
-		return overlap;
+		inherited_flags &= ~DEVFS_PARTITION_CAN_OVERLAP;
 	}
 
 	/* Filter flags that we want to pass along to children */
@@ -547,7 +554,7 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		struct mtd_info *mtd;
 
 		mtd = mtd_add_partition(cdev->mtd, offset, size,
-				partinfo->flags | inherited_flags, partinfo->name);
+				inherited_flags, partinfo->name);
 		if (IS_ERR(mtd))
 			return (void *)mtd;
 
diff --git a/include/driver.h b/include/driver.h
index 3aef385bc837..267e34294511 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -583,6 +583,7 @@ extern struct list_head cdev_list;
 #define DEVFS_PARTITION_BOOTABLE_ESP	(1U << 12)
 #define DEVFS_PARTITION_FOR_FIXUP	(1U << 13)
 #define DEVFS_WRITE_AUTOERASE		(1U << 14)
+#define DEVFS_PARTITION_CAN_OVERLAP	(1U << 15)
 
 /**
  * cdev_write_requires_erase - Check whether writes must be done to erased blocks
-- 
2.39.5



