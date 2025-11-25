Delivery-date: Tue, 25 Nov 2025 07:27:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNmVy-004dvf-2D
	for lore@lore.pengutronix.de;
	Tue, 25 Nov 2025 07:27:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNmVy-0006FZ-3Z
	for lore@pengutronix.de; Tue, 25 Nov 2025 07:27:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FGVDIbfYGfm01wisc8oYghuyaO+ihAeZdivgqh8mG0I=; b=PP7doFPvpmpBhEWVghDV6ccrTl
	dRWH0flszr/zCAQjLCgk74woSiQMacBqWx2TwvWbz+BBJTY/+0X45sz0F4vMP0Hfc1DS1KfX0jl6x
	kvP7VXsVrbcPUtK02LaiAVUYoNP4DMniDZKMeyzgTHLLmxMm56uxg2AFabUbKEjCnNgy0uJU2Iwiu
	kdhRThoEKIYroojapyJw1QPcT05SjqTC0dQqSiKQXKIDhMB/QxhNORS9uyy2JF+h0nD9+KLfTdsPg
	HuwWprlZVBYV5ztlqVcOCfZRIwmamp3j0kYKq2CyaXLjr4HFRr3wO0Tdl5XbUeP23m6PahlxGz1dR
	+x1MF8gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNmVG-0000000CotL-3piM;
	Tue, 25 Nov 2025 06:26:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNmVE-0000000Cosb-1Voa
	for barebox@lists.infradead.org;
	Tue, 25 Nov 2025 06:26:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmVC-000652-Si; Tue, 25 Nov 2025 07:26:14 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmVC-002L4J-2H;
	Tue, 25 Nov 2025 07:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNmVC-0000000AyRx-2ZHL;
	Tue, 25 Nov 2025 07:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Jan=20L=C3=BCbbe?= <j.luebbe@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 25 Nov 2025 07:23:47 +0100
Message-ID: <20251125062603.2614867-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251125062603.2614867-2-a.fatoum@pengutronix.de>
References: <20251125062603.2614867-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_222616_419765_EF0F4BF4 
X-CRM114-Status: GOOD (  15.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] fs: qemu_fw_cfg: handle non-existent opt/org.barebox.env key gracefully
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
---
v1 -> v2:
  - move stat outside of probe, otherwise we end up with the mount
    twice, because the automount triggers before the probe is complete
    and the DCACHE_MOUNTED flag is set.
---
 fs/qemu_fw_cfg.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index 5aaf14267f88..d0414b127c59 100644
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
@@ -376,8 +378,6 @@ static int fw_cfg_fs_probe(struct device *dev)
 	if (ret)
 		goto free_data;
 
-	defaultenv_append_runtime_directory("/mnt/fw_cfg/by_name/opt/org.barebox.env");
-
 	return 0;
 free_data:
 	free(data);
@@ -410,10 +410,12 @@ coredevice_initcall(qemu_fw_cfg_fs_init);
 
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
@@ -423,6 +425,9 @@ static int qemu_fw_cfg_early_mount(void)
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



