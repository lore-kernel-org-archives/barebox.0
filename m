Delivery-date: Mon, 06 Jan 2025 10:01:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUizX-00HQ4F-2s
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:01:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUizX-00087J-Q3
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:01:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=V9lyDywI43N7SQyFY72semdz6KW2DY5F8S0lm1esdgc=; b=dbYE6KZ/DDZ9KL6qAYxerOZPRU
	UT86dk0yILQCeJsoL0WPKppGPAcPGECG/mRokXzwgr2Y2NBEJt5G6fI3+bnJjChJceHrWCG9sf9cI
	loOWMEoeZwzAkg5bE8Ncfk4CsLvXIDYN3zyUIMuOUMNWEC87iV++6gCmLPHP8OxW5Qn7wWyu2Cx1s
	gsELxgGo7+XYVOwJvIgY9TnTX0FSWRvt48uelm+SRdNIIx9qpS2EM2eq31o50uCklSIyaL5pyeXOl
	jkgkZNzkXyE6IgfuoHCvFrex8u0egrcxLwvOLeLDxZKVvaKLT36DVR5Zp3j9fcOCxriEu6dbxgVHD
	wr3n6Tlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUiym-00000000aL8-1vYs;
	Mon, 06 Jan 2025 09:00:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUiyi-00000000aJ8-46RS
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:00:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUiyg-0007db-3X; Mon, 06 Jan 2025 10:00:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUiye-0078UD-0q;
	Mon, 06 Jan 2025 10:00:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUiye-00ELll-31;
	Mon, 06 Jan 2025 10:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:00:47 +0100
Message-Id: <20250106090048.3420243-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_010053_013740_23EA1E63 
X-CRM114-Status: GOOD (  12.32  )
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
Subject: [PATCH v2 1/2] cdev: allow overriding partition overlap check
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
v1 -> v2:
  - allow force creation of partition at offset 0
---
 fs/devfs-core.c  | 16 +++++++++-------
 include/driver.h |  1 +
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 0651be3d8fc4..133fd9ec026a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -530,14 +530,16 @@ static struct cdev *__devfs_add_partition(struct cdev *cdev,
 		return ERR_PTR(-EINVAL);
 	}
 
-	overlap = check_overlap(cdev, partinfo->name, offset, size);
-	if (overlap) {
-		if (!IS_ERR(overlap)) {
-			/* only fails with -EEXIST, which is fine */
-			(void)devfs_create_link(overlap, partinfo->name);
-		}
+	if (!(partinfo->flags & DEVFS_PARTITION_CAN_OVERLAP)) {
+		overlap = check_overlap(cdev, partinfo->name, offset, size);
+		if (overlap) {
+			if (!IS_ERR(overlap)) {
+				/* only fails with -EEXIST, which is fine */
+				(void)devfs_create_link(overlap, partinfo->name);
+			}
 
-		return overlap;
+			return overlap;
+		}
 	}
 
 	/* Filter flags that we want to pass along to children */
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



