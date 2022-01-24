Delivery-date: Mon, 24 Jan 2022 11:08:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGa-00BlgM-Bp
	for lore@lore.pengutronix.de; Mon, 24 Jan 2022 11:08:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nBwGX-0002rd-5o
	for lore@pengutronix.de; Mon, 24 Jan 2022 11:08:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FB8XDlm/A/lJJ7Z4NCBjgerKzmia/ab7gty5uhDGa2c=; b=ck2EapjGy1yaWe
	+YMF7jxLk1pOLDjLUzt6G+qkAPU/jGL0okGiuVWUYKvQUUzpluOkcGBhsJnB/TusDwlXWstX+dA0/
	MkzVJEc1T8a55RgQq0/mFIEavoJqxql/vaK8LjIikB4snXEhbUk6Xi+THULHnn1z6DciOALym6C7r
	i+Ye3WrEtnt4cuhsEyorULh5AJdbL93f4Woffp3HtFcPlY8CzOwE0DU/UL5WfFjtBhdeN+1SIosft
	rQShSuGLTr01GfXL6IUbY3I0uDuzwRidIml8SYlKOSZ+ozw9XSOjOMZh6OufXUph9A+NfVTAnb6xj
	0PqJwexSDEA46TWNnl4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBwEu-002v3u-6d; Mon, 24 Jan 2022 10:06:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBwDt-002uYG-QV
 for barebox@lists.infradead.org; Mon, 24 Jan 2022 10:05:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDp-0002CD-Mt; Mon, 24 Jan 2022 11:05:13 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDp-00C6RK-Di; Mon, 24 Jan 2022 11:05:12 +0100
Received: from mol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mol@pengutronix.de>)
 id 1nBwDn-00CGwI-L2; Mon, 24 Jan 2022 11:05:11 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Mon, 24 Jan 2022 11:04:57 +0100
Message-Id: <20220124100458.2924679-3-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220124_020517_948729_0916C063 
X-CRM114-Status: GOOD (  13.84  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] cdev: add diskuuid support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows identifying disks by UUID. For disks with GPT the disk GUID is
used. For DOS partition tables the NT signature ist used, similar to how
the partuuid is generated.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 common/partitions/dos.c |  3 +++
 common/partitions/efi.c |  2 ++
 fs/devfs-core.c         | 14 ++++++++++++++
 include/driver.h        |  1 +
 4 files changed, 20 insertions(+)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 6c76aac37172..258b10a9ed3c 100644
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
index 6d811bfb3b01..0787b93f120b 100644
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
index 82e4811b384a..2475ab959a10 100644
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
index 409ed7e02afd..e38a15f51f00 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -484,6 +484,7 @@ struct cdev *lcdev_by_name(const char *filename);
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

