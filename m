Delivery-date: Tue, 07 Jan 2025 09:05:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4b0-000Ey3-1x
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 09:05:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4ay-0002gN-EM
	for lore@pengutronix.de; Tue, 07 Jan 2025 09:05:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QMiii8l5Sz3Ft/hx9G07gEZXJRvK7dZI2Fwxeq61KOw=; b=VI2vGRmGFhQsOINwTvIVGkGnx0
	STG/478qllr6UzjeJfYvIFw/6PvaEcDHK12fqzrSouM86Pfy45naAoXEN8jrl0pTfqzLMFBOXtedD
	Syg3OOU2A5nCSeeFNx3fNxd06Zcg3JGX0qBHaiyt2QqJ1Jg9+yncYXSQWEsqOkkTb9y47BeRUqG5A
	uzL43OX58Ogkic3kvTg2kkl459+ODGghmzWTNHISq/HzbBhti654c5l6O37EYMKrFA7uZoRJdpisM
	jWDCxpCygZMu7qhEcws21zL5nGpHyax2uEOAKiXR6S9qEZbSNMQMyCu8Dq1l4Y1fiTm08/wO8Wphr
	gSuuJncg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4Zs-00000003r36-336g;
	Tue, 07 Jan 2025 08:04:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4Zp-00000003r2C-3VN8
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 08:04:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4Zo-0002D2-Fn; Tue, 07 Jan 2025 09:04:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4Zn-007Iw0-1K;
	Tue, 07 Jan 2025 09:04:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tV4Zo-00BvQN-0J;
	Tue, 07 Jan 2025 09:04:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Jan 2025 09:04:35 +0100
Message-Id: <20250107080435.2842334-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_000437_872443_D1A318C4 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: introduce hidden CONFIG_FS_WRITABLE option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Given that most file systems in barebox are read-only, it's arguably
useful to see at a glance, which file systems aren't to aid with porting
write-enabled file systems. Let's select a new hidden FS_WRITABLE option
in these cases. Maybe in future, we could even save some code size if
writing isn't required.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/Kconfig     | 14 ++++++++++++++
 fs/fat/Kconfig |  1 +
 2 files changed, 15 insertions(+)

diff --git a/fs/Kconfig b/fs/Kconfig
index 27981b644407..9118d1114daa 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -13,6 +13,12 @@ config FS_LEGACY
 	  invisible option selected by filesystem drivers which haven't
 	  been ported to dentry cache.
 
+config FS_WRITABLE
+	bool
+	help
+	  invisible option selected by filesystem drivers that can
+	  write and are not fully read-only.
+
 if FS_LEGACY
 comment "Some selected filesystems still use the legacy FS API."
 comment "Consider updating them."
@@ -32,16 +38,19 @@ config FS_RAMFS
 	bool
 	default y
 	prompt "ramfs support"
+	select FS_WRITABLE
 
 config FS_DEVFS
 	bool
 	default y
 	prompt "devfs support"
+	select FS_WRITABLE
 
 config FS_TFTP
 	bool
 	prompt "tftp support"
 	depends on NET
+	select FS_WRITABLE
 
 config FS_TFTP_MAX_WINDOW_SIZE
 	int
@@ -71,6 +80,7 @@ config FS_NFS
 config FS_EFI
 	depends on EFI_PAYLOAD
 	select FS_LEGACY
+	select FS_WRITABLE
 	bool
 	prompt "EFI filesystem support"
 	help
@@ -80,6 +90,7 @@ config FS_EFI
 config FS_EFIVARFS
 	depends on EFI_PAYLOAD
 	select FS_LEGACY
+	select FS_WRITABLE
 	bool
 	prompt "EFI variable filesystem support (efivarfs)"
 	help
@@ -115,6 +126,7 @@ config FS_UIMAGEFS
 config FS_SMHFS
 	depends on SEMIHOSTING
 	select FS_LEGACY
+	select FS_WRITABLE
 	bool
 	prompt "Semihosting FS support"
 	help
@@ -129,6 +141,7 @@ config FS_RATP
 	bool
 	depends on RATP
 	select FS_LEGACY
+	select FS_WRITABLE
 	prompt "RATP filesystem support"
 	help
 	  This enables support for transferring files over RATP. A host can
@@ -138,6 +151,7 @@ config FS_UBOOTVARFS
 	bool
 	depends on UBOOTVAR
 	prompt "U-Boot environment variable filesystem support"
+	select FS_WRITABLE
 	help
 	  This filesystem driver provides access to U-Boot environment
 	  variables.
diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
index 53f784ee54d5..837eb9ffdd60 100644
--- a/fs/fat/Kconfig
+++ b/fs/fat/Kconfig
@@ -10,6 +10,7 @@ if FS_FAT
 config FS_FAT_WRITE
 	bool
 	prompt "FAT write support"
+	select FS_WRITABLE
 	help
 	  Enable support for writing in FAT partitions.
 	  Note: This doesn't apply to FAT usage in barebox PBL.
-- 
2.39.5



