Delivery-date: Tue, 12 Oct 2021 09:35:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCJr-00024L-I5
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 09:35:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCJq-0005Hh-FV
	for lore@pengutronix.de; Tue, 12 Oct 2021 09:35:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kriq5aLn0qpq/NdVd0AenA+9MNodljBc8MnGfTQodNM=; b=0IfCyo5xO3n9aa
	0cFNsSIlpznMY4bk+RlbLLb4vVhCVkJ+Fbt4wHb0E7D7743CTZbn5HHozZAG7vstp54+/xP6kocw5
	Z+tB6noEbtxgmbYGo5N0Ner0/0Wp/0sm8luRKmhNXXIZJsM5nhKv476aIX8uB2846EwMi2fRB8FGh
	hn2OsReG2+eP9i2btUDiMLbWJmUb78Rb/amu+BFYAy9zG7VdAfAoUEGwhlZCU0Sip4VrHLfUyKkcz
	GLkLxtHo43OOlJXPcxyuNNULPwMsRU+APpNH4X+eKWCt5wa9thltWGoRJLSS3W7VKev6vG7mfX5yQ
	GTOh2tiwBVlCYyIxsucQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCIY-00Bmjc-Hk; Tue, 12 Oct 2021 07:34:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCIP-00Bmfb-SY
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 07:33:59 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIM-0004iZ-Jm; Tue, 12 Oct 2021 09:33:54 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1maCIL-00H5N6-Qz; Tue, 12 Oct 2021 09:33:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 12 Oct 2021 09:33:51 +0200
Message-Id: <20211012073352.4071559-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211012073352.4071559-1-s.hauer@pengutronix.de>
References: <20211012073352.4071559-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_003357_939922_64CC770B 
X-CRM114-Status: GOOD (  15.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] cdev: Add function to get unallocated start of device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On several SoCs barebox is written to the raw device in front of the
first partition. So far we blindly trust that there is enough space
available for the barebox image. Start changing this by adding a
function that retrieves the available space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions.c | 28 ++++++++++++++++++++++++++++
 include/driver.h    |  1 +
 2 files changed, 29 insertions(+)

diff --git a/common/partitions.c b/common/partitions.c
index d80878e065..e36341fc1e 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -156,3 +156,31 @@ int partition_parser_register(struct partition_parser *p)
 
 	return 0;
 }
+
+/**
+ * cdev_unallocated_start - return unallocated space
+ * @name: The cdev name
+ *
+ * This function returns the space that is not allocated by any partition
+ * at the start of a device.
+ *
+ * Return: The unallocated space at the start of the device in bytes
+ */
+loff_t cdev_unallocated_start(const char *name)
+{
+	struct cdev *cdev, *partcdev;
+	loff_t start;
+
+	cdev = cdev_by_name(name);
+	if (!cdev)
+		return 0;
+
+	start = cdev->size;
+
+	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
+		if (partcdev->offset < start)
+			start = partcdev->offset;
+	}
+
+	return start;
+}
diff --git a/include/driver.h b/include/driver.h
index c7f5903fce..38aa3cf8f5 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -494,6 +494,7 @@ ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulo
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
 int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
 int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
+loff_t cdev_unallocated_start(const char *name);
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

