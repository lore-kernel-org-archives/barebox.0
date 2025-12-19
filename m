Delivery-date: Fri, 19 Dec 2025 11:37:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrv-00DAZM-0s
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:37:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXrj-0005fK-BI
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:37:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BBjtUaMmO1lZt4Fr8DYaMPQbrSMol4LeTrNsLa7DqI0=; b=DOtrVqoBz33QTT2O9zBxEoAHzc
	Sa+z6IxjfXIfXOFMXHVEPZ/6a4dUDPs3XxGnr9Tnjiz0/MTTyP+UuD3hMdIyg7hIq5MdcL1pAgwrC
	bgJ6mtru57O44Z0g2Lf8nXiZ78LdMSSVuXljIfyHbQULewCArgMVtM2sD+3UxAydKlvhHD2k7neyO
	Yjos9871Cb8OvfnS3Jr7ZyOJ3hNv2AH7qNMhl3khj6lIhjateTwtQ/7tGzLv4Efz54RQIoM4YWXn6
	W/9AMjov3VTDwU3lAZhpN3zh3pIrw9rMEjWUInjKTGgR3Xw3D9V7sWW8tJ1IZDvY7idRApxBZyw0p
	DsqQGCfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr0-0000000A683-1ld0;
	Fri, 19 Dec 2025 10:36:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqs-0000000A5ur-1dz8
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-0004be-RD; Fri, 19 Dec 2025 11:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqq-006RUj-23;
	Fri, 19 Dec 2025 11:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-2W48;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	=?UTF-8?q?Jan=20L=C3=BCbbe?= <j.luebbe@pengutronix.de>
Date: Fri, 19 Dec 2025 10:21:00 +0100
Message-ID: <20251219101453.2806980-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_023650_427549_753C4AE3 
X-CRM114-Status: GOOD (  14.06  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 24/49] fs: qemu_fw_cfg: handle non-existent opt/org.barebox.env key gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEMU fw_cfg file system driver is the sole user of
defaultenv_append_runtime_directory() and it passes a path that's not
necessarily available.

When that happens, this is not noticed until the loop in defaultenv_load()
aborts early with an -ENOENT preventing load of an external environment.

Fix this as by not adding the directory if it doesn't exist.

Fixes: 31dfb561d1a4 ("fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg")
Reported-by: Jan Lübbe <j.luebbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251125062603.2614867-5-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit cfa4f62c104c6b9232b5bad5b0a5e7e5341a9870)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/qemu_fw_cfg.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index 49115beeb21d..b28f4df99c25 100644
--- a/fs/qemu_fw_cfg.c
+++ b/fs/qemu_fw_cfg.c
@@ -20,6 +20,8 @@
 #include <linux/err.h>
 #include <linux/ctype.h>
 
+#define FW_CFG_BAREBOX_ENV	"/mnt/fw_cfg/by_name/opt/org.barebox.env"
+
 struct fw_cfg_fs_inode {
 	struct inode inode;
 	const char *name;
@@ -375,8 +377,6 @@ static int fw_cfg_fs_probe(struct device *dev)
 	if (ret)
 		goto free_data;
 
-	defaultenv_append_runtime_directory("/mnt/fw_cfg/by_name/opt/org.barebox.env");
-
 	return 0;
 free_data:
 	free(data);
@@ -411,10 +411,12 @@ coredevice_initcall(qemu_fw_cfg_fs_init);
 
 static int qemu_fw_cfg_early_mount(void)
 {
+	struct stat s;
 	int fd;
 
 	/*
-	 * Also triggers the automount, so ramfb device can be detected
+	 * Also triggers the automount, so both ramfb device can be detected
+	 * and environment can be loaded
 	 */
 	fd = open("/mnt/fw_cfg/by_name/etc/ramfb", O_WRONLY);
 	if (fd >= 0) {
@@ -424,6 +426,9 @@ static int qemu_fw_cfg_early_mount(void)
 		platform_device_register(dev);
 	}
 
+	if (!stat(FW_CFG_BAREBOX_ENV, &s) && S_ISDIR(s.st_mode))
+		defaultenv_append_runtime_directory(FW_CFG_BAREBOX_ENV);
+
 	return 0;
 }
 late_initcall(qemu_fw_cfg_early_mount);
-- 
2.47.3



