Delivery-date: Wed, 17 Sep 2025 16:19:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszy-0046PX-2L
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszw-0003jw-02
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vUEfjTBQ03JHweDrXg4sDfzQHeME7RF9NqLSHATyZEw=; b=ysYGVn6YGnDW30a+kccFxsqrWd
	MiuNFq2MsV0l34msQY01BLZb5OkGv0JYj4mi4tm1Hs/SC+stjxutHWqxKsuECZb9bPZlyYp22LI7h
	ya2MLAUXKC+tRkZl3h2ED+xAbjdwIsqhIPRf46uFAFeG1thpS5PwaFt4Fxk+O+jBxucQoIKDZrS2t
	jr6vKDj5BNJLVA1aJS1cXg7yTQxc8ltvwfrfnTLa0hjTIlktvSRKZ3xkSzu+QztxI7FQFMfeoUPNE
	a3ycOAK5RgQvYloSMbJoFmD7qpebm4BHIuhA0/OET0ymQp67c/N1jcD9l/XQuVcld9yE+fKLWBD6R
	sfjMXlGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszO-0000000C8Jj-38Id;
	Wed, 17 Sep 2025 14:18:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87d-1vAX
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszG-00032h-1p; Wed, 17 Sep 2025 16:18:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGr-2n;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-38Cv;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-23-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=1917;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=b/xCP/FBZwuT43PFwRAz3d6SxOHF2euAprrefEeGgKI=;
 b=1Mr4ZRm9TT2e5UVDIP6Tds3yFXGvmo17Fubz9ZRHUujhmMTkUlnI1bDIO8qIfdanQ9KQptckZ
 xKfJRV9P6RvCx1Hrtmj+lT71vHIG4O8sG8fkaHunc7uJQxZ+j7bD7X4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_502225_418C3858 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 23/24] security: add filesystem security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't have any trusted filesystems in barebox and a manipulated
filesystem could trick barebox into crashing or loading untrusted data,
so add a security policy for the barebox filesystems.

With SCONFIG_FS_EXTERNAL set barebox will allow mounting all filesystems
whereas with this option disabled only ramfs can be mounted. ramfs is
special: It is basically essential for barebox and also has no untrusted
data input.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Sconfig    | 1 +
 fs/Sconfig | 5 +++++
 fs/fs.c    | 4 ++++
 3 files changed, 10 insertions(+)

diff --git a/Sconfig b/Sconfig
index 7d7657e79061f4bf200519cf1fab8810b544f97e..cdb2ceccb1b46b038c0d4fa8dbd203737031dec5 100644
--- a/Sconfig
+++ b/Sconfig
@@ -8,3 +8,4 @@ source "security/Sconfig"
 source "common/Sconfig"
 source "drivers/usb/gadget/Sconfig"
 source "commands/Sconfig"
+source "fs/Sconfig"
diff --git a/fs/Sconfig b/fs/Sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..cdb58230f0e79addf8c0f719844af400e0d19939
--- /dev/null
+++ b/fs/Sconfig
@@ -0,0 +1,5 @@
+
+config FS_EXTERNAL
+	bool "Allow mounting external file systems"
+	help
+	  Say y to permit mounting file systems beyond devfs and ramfs.
diff --git a/fs/fs.c b/fs/fs.c
index 54bd35786857ab0e588277870fd1630d9292e116..5dcdf223756f470f94da15947e3f4e30bc27c1bd 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -35,6 +35,7 @@
 #include <libfile.h>
 #include <parseopt.h>
 #include <linux/namei.h>
+#include <security/config.h>
 
 char *mkmodestr(unsigned long mode, char *str)
 {
@@ -774,6 +775,9 @@ static int fs_probe(struct device *dev)
 	struct fs_driver *fsdrv = container_of(drv, struct fs_driver, drv);
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_EXTERNAL) && strcmp(fsdrv->drv.name, "ramfs"))
+		return -EPERM;
+
 	ret = dev->driver->probe(dev);
 	if (ret)
 		return ret;

-- 
2.47.3



