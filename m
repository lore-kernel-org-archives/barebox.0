Delivery-date: Sun, 24 Jul 2022 20:49:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgfu-002GwN-PV
	for lore@lore.pengutronix.de; Sun, 24 Jul 2022 20:49:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFgfs-00039E-Kr
	for lore@pengutronix.de; Sun, 24 Jul 2022 20:49:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C0pujJQofWe052j1VnBmQdRmyitrcyqgOr0i2F1sItw=; b=Kz/jr7tpGmN49wjzTBqAANfLVv
	G/OFe4pE5bnUg70MkuFL1YqF4Pi5rp0cSWs3ZUbJ8lOZuWVVCJbTD0S0F3r5B3yWjnuUhza6pqW1x
	/M64Jxj1z14u3gnQ2pk37tBuK5+sksO//o3CYZ2L+VDwXw7hLF4dKghg5xQMGoB0DKpjQjKXn2Qax
	nGGOv8bxradTkKnwtNwdhenJPu4CC6aOtBVBtYJlzo2gMRRT0WYTf2PQznMA/YJD7zWRtNVxOhyHs
	2pTenhd3m8C9vezxEjjaz/ilBe/cofj/lN2NM3vfwRFuctMFfAR7d4FprST/XXFROueMSLp+NN+6E
	AhB29bHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgeM-008h6r-1F; Sun, 24 Jul 2022 18:48:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFgeE-008h1h-JY
	for barebox@lists.infradead.org; Sun, 24 Jul 2022 18:48:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFgeB-00030a-5f; Sun, 24 Jul 2022 20:48:11 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFge9-002xyM-MX; Sun, 24 Jul 2022 20:48:09 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFge9-008uRD-02; Sun, 24 Jul 2022 20:48:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 24 Jul 2022 20:48:07 +0200
Message-Id: <20220724184807.2123459-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220724184807.2123459-1-a.fatoum@pengutronix.de>
References: <20220724184807.2123459-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220724_114814_722438_7DD1C483 
X-CRM114-Status: GOOD (  15.66  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] boot: allow booting by bootspec absolute path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When multiple bootloader spec files are available, the first match in
lexical order will be the one to autoboot. Users can customize which one
to use interactively via boot -m, but no means to select a different by
default exists. Allow for this by having the boot command not only
accept a directory to search for bootloader spec entries in, but also
the path of a single bootloader spec file. This aligns it with what we
have for bootscripts, where both directories containing boot scripts
and the path to a specific boot script is understood.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig |  1 +
 commands/boot.c  |  1 +
 common/blspec.c  | 11 ++++++++++-
 common/boot.c    |  1 +
 4 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 69d76a9c8028..3e21dc4c0500 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -367,6 +367,7 @@ config CMD_BOOT
 	  BOOTSRC can be:
 	  - a filename under /env/boot/
 	  - a full path to a boot script
+	  - a full path to a bootspec entry
 	  - a device name
 	  - a partition name under /dev/
 	  - a full path to a directory which
diff --git a/commands/boot.c b/commands/boot.c
index 18f4e36ec733..3f67b3bec6b0 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -122,6 +122,7 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("BOOTSRC can be:")
 BAREBOX_CMD_HELP_TEXT("- a filename under /env/boot/")
 BAREBOX_CMD_HELP_TEXT("- a full path to a boot script")
+BAREBOX_CMD_HELP_TEXT("- a full path to a bootspec entry")
 BAREBOX_CMD_HELP_TEXT("- a device name")
 BAREBOX_CMD_HELP_TEXT("- a partition name under /dev/")
 BAREBOX_CMD_HELP_TEXT("- a full path to a directory which")
diff --git a/common/blspec.c b/common/blspec.c
index cbaa211cb16f..340752337f3c 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -527,6 +527,7 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
 	if (IS_ERR(entry))
 		return PTR_ERR(entry);
 
+	root = root ?: get_mounted_path(configname);
 	entry->rootpath = xstrdup(root);
 	entry->configpath = xstrdup(configname);
 	entry->cdev = get_cdev_by_mountpath(root);
@@ -813,6 +814,7 @@ int blspec_scan_devicename(struct bootentries *bootentries, const char *devname)
 static int blspec_bootentry_provider(struct bootentries *bootentries,
 				     const char *name)
 {
+	struct stat s;
 	int ret, found = 0;
 
 	ret = blspec_scan_devicename(bootentries, name);
@@ -824,7 +826,14 @@ static int blspec_bootentry_provider(struct bootentries *bootentries,
 		if (!IS_ERR(nfspath))
 			name = nfspath;
 
-		ret = blspec_scan_directory(bootentries, name);
+		ret = stat(name, &s);
+		if (ret)
+			return found;
+
+		if (S_ISDIR(s.st_mode))
+			ret = blspec_scan_directory(bootentries, name);
+		else if (S_ISREG(s.st_mode) && strends(name, ".conf"))
+			ret = blspec_scan_file(bootentries, NULL, name);
 		if (ret > 0)
 			found += ret;
 
diff --git a/common/boot.c b/common/boot.c
index 8220b8d3fbd7..58bb02ac2548 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -272,6 +272,7 @@ int bootentry_register_provider(int (*fn)(struct bootentries *bootentries, const
  * name can be:
  * - a name of a boot script under /env/boot
  * - a full path of a boot script
+ * - a full path of a bootloader spec entry
  * - a device name
  * - a cdev name
  * - a full path of a directory containing bootloader spec entries
-- 
2.30.2



