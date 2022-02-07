Delivery-date: Mon, 07 Feb 2022 10:52:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0go-0088sZ-MP
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 10:52:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH0gn-0003Xm-5F
	for lore@pengutronix.de; Mon, 07 Feb 2022 10:52:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckQkRcrMvj82TqhhGuqlpg/qjQBFS6CRrwhfTTp5VLE=; b=OuB2A+xC6HOHqZ
	x0c2YB3oiBuQJuDNapA1QDbqFmpYvO0a4GSJSluP3/E+70oIkJ0FyIgIBrLTdSD/KMgCqktKplzTi
	HqUIyjqdel1YdTkh/Zuopyo8oC+coP571eAdIagyyPTbfUIjyFQeZhk/4MAA8zqdF6dig7F0ny/EE
	K93x/sVZ3Lmtwtn3ArpKxqAXGt0/G1Qc3lEFvKHUXV8fOFQ3bmjQdstpAWbeKfnYlZ0syjlz/2KQ2
	AI4L2t9nF7yjoWbjecOCLdhetZ9EuMGA7LQamguO9VPs7ZWMBQX0iR3m7a7b+/3/tosRlk8n+scGp
	oMFt3obn5IIYJHYhPUqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH0fV-009e3f-IZ; Mon, 07 Feb 2022 09:50:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH0eo-009dkW-M3
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 09:50:06 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0en-0002tc-5x; Mon, 07 Feb 2022 10:50:01 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nH0em-0040Lm-KO; Mon, 07 Feb 2022 10:50:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Feb 2022 10:49:47 +0100
Message-Id: <20220207094953.949868-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220207094953.949868-1-s.hauer@pengutronix.de>
References: <20220207094953.949868-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_015002_796492_4586B753 
X-CRM114-Status: GOOD (  14.64  )
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
Cc: Michael Olbrich <mol@pengutronix.de>,
 Michael Olbrich <m.olbrich@pengutronix.de>
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/8] cdev: add diskuuid support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Michael Olbrich <m.olbrich@pengutronix.de>

This allows identifying disks by UUID. For disks with GPT the disk GUID is
used. For DOS partition tables the NT signature ist used, similar to how
the partuuid is generated.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Link: https://lore.barebox.org/20220124100458.2924679-3-m.olbrich@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/dos.c |  3 +++
 common/partitions/efi.c |  2 ++
 fs/devfs-core.c         | 14 ++++++++++++++
 include/driver.h        |  1 +
 4 files changed, 20 insertions(+)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 597d7bf9bc..566c8dd949 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -182,6 +182,9 @@ static void dos_partition(void *buf, struct block_device *blk,
 	struct disk_signature_priv *dsp;
 	uint32_t signature = get_unaligned_le32(buf + 0x1b8);
 
+	if (signature)
+		sprintf(blk->cdev.uuid, "%08x", signature);
+
 	table = (struct partition_entry *)&buffer[446];
 
 	for (i = 0; i < 4; i++) {
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 6d811bfb3b..0787b93f12 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -445,6 +445,8 @@ static void efi_partition(void *buf, struct block_device *blk,
 		return;
 	}
 
+	snprintf(blk->cdev.uuid, sizeof(blk->cdev.uuid), "%pUl", &gpt->disk_guid);
+
 	nb_part = le32_to_cpu(gpt->num_partition_entries);
 
 	if (nb_part > MAX_PARTITION) {
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 82e4811b38..2475ab959a 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -107,6 +107,20 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
 	return NULL;
 }
 
+struct cdev *cdev_by_diskuuid(const char *diskuuid)
+{
+	struct cdev *cdev;
+
+	if (!diskuuid)
+		return NULL;
+
+	list_for_each_entry(cdev, &cdev_list, list) {
+		if (!cdev->master && !strcasecmp(cdev->uuid, diskuuid))
+			return cdev;
+	}
+	return NULL;
+}
+
 /**
  * device_find_partition - find a partition belonging to a physical device
  *
diff --git a/include/driver.h b/include/driver.h
index 62a1782847..3ef8bfb8a3 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -488,6 +488,7 @@ struct cdev *lcdev_by_name(const char *filename);
 struct cdev *cdev_readlink(struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_by_partuuid(const char *partuuid);
+struct cdev *cdev_by_diskuuid(const char *partuuid);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
 void cdev_remove_loop(struct cdev *cdev);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

