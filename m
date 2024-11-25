Delivery-date: Mon, 25 Nov 2024 16:13:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFalz-000FYq-1m
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFaly-0007n6-3u
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mgx6PBQEwybxJgWq/vkfjvmbM0S8HbH/DbdCQG1n3iI=; b=E4DyA6cMp3O7DIGhwE0DIkQjQx
	hW+lGsJmwYzyRSzqkr26hktqD0RVaJZ0RdvjEeRlCmYWnp/meLGSlFcAnvDzDe0D4D/Est/RLs3ZF
	XjM7zG5LBf9VFuolxCtemlr5XgcvuTd8vNO8RcsJLaWX256c4BcQz6AdJoCgg6JD1Q10eA7TZ5/DC
	JMfkY3Lt3mw8aABsxmbEFisME+WU9C7fFryBgi0xMocXg3VdjXG5SQmVYg/eKiBn5VoHtivznvFNR
	6NIH9BqLF7al/rCrmBXPw4qfo2SkeUj5qjMDHN2OSo98Q3HM4FGsICel8sgdn7ojtlzaN8d225lCl
	om1YMztg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalT-00000008Pjm-3mBY;
	Mon, 25 Nov 2024 15:12:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalM-00000008PbD-2E24
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalL-0007Cx-8w; Mon, 25 Nov 2024 16:12:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-0006Mo-0u;
	Mon, 25 Nov 2024 16:12:31 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalK-001lGb-17;
	Mon, 25 Nov 2024 16:12:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:20 +0100
Message-Id: <20241125151228.341441-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151228.341441-1-a.fatoum@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071232_592447_A276A894 
X-CRM114-Status: GOOD (  11.66  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/16] cdev: stub out cdev_read/write for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To optimize out calls to undefined functions in PBL at compile-time
instead of link time, let's define stubs for the functions that
are referenced in obj-pbl-y files, but inside function sections
that are ultimately unreferenced.

We don't use IS_PROPER here as cdev support is always available
in barebox proper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index c4067d531cc7..3aef385bc837 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -14,6 +14,7 @@
 #include <device.h>
 #include <of.h>
 #include <init.h>
+#include <errno.h>
 #include <filetype.h>
 
 #define FORMAT_DRIVER_NAME_ID	"%s%d"
@@ -514,21 +515,40 @@ int devfs_create_link(struct cdev *, const char *name);
 int devfs_remove(struct cdev *);
 int cdev_find_free_index(const char *);
 struct cdev *device_find_partition(struct device *dev, const char *name);
-struct cdev *cdev_by_name(const char *filename);
 struct cdev *lcdev_by_name(const char *filename);
 struct cdev *cdev_readlink(struct cdev *cdev);
 struct cdev *cdev_by_device_node(struct device_node *node);
 struct cdev *cdev_by_partuuid(const char *partuuid);
 struct cdev *cdev_by_diskuuid(const char *partuuid);
-struct cdev *cdev_open_by_name(const char *name, unsigned long flags);
 struct cdev *cdev_create_loop(const char *path, ulong flags, loff_t offset);
 void cdev_remove_loop(struct cdev *cdev);
 int cdev_open(struct cdev *, unsigned long flags);
 int cdev_fdopen(struct cdev *cdev, unsigned long flags);
 int cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
+#if IN_PROPER
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
+struct cdev *cdev_by_name(const char *filename);
+struct cdev *cdev_open_by_name(const char *name, unsigned long flags);
+#else
+static inline ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags)
+{
+	return -ENOSYS;
+}
+static inline ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags)
+{
+	return -ENOSYS;
+}
+static inline struct cdev *cdev_by_name(const char *filename)
+{
+	return NULL;
+}
+static inline struct cdev *cdev_open_by_name(const char *name, unsigned long flags)
+{
+	return NULL;
+}
+#endif
 int cdev_ioctl(struct cdev *cdev, unsigned int cmd, void *buf);
 int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 int cdev_lseek(struct cdev*, loff_t);
-- 
2.39.5



