Delivery-date: Thu, 11 Dec 2025 16:19:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTiRf-00AL1b-0L
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 16:19:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTiRe-0002sU-IP
	for lore@pengutronix.de; Thu, 11 Dec 2025 16:19:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ru6SMvyjmDqpCZhre8RnFEznDNTkr/ORCRND5OgMzvM=; b=UrXSy32K8yObIsMXMn68ooL83n
	yBVj/5x1YoC48NuRJAET8EaFa/9M5HJqXE5i8SZ7+krSupHYLWOJSIMk1kZQPbyNpX35CSG+fH4qv
	UJ652izdsN2W9YToFsXNusB4T7aUPkw9X4/IE1mYfP8vmxtggalBZk/QnTtxAwZpkbV/MrQDQvqO1
	ApacMMsrr50NIzTyUBhFH99wYpF+noC1eO5g0Z7rNi/GSSgLxlNTwJaHtH/UHgG+jBWajCfFYOlsO
	hJWx2POszbk0UrC5VyyNShvhYmjHvGbJnXzJuWjNlshcL5MjIDPji6Ma9kXks+FFLSDXQGPGAYjRA
	vt1B/xEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTiR1-0000000GlKW-0Kwt;
	Thu, 11 Dec 2025 15:18:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTiQx-0000000GlJ8-0Wmd
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 15:18:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0002ff-Fx; Thu, 11 Dec 2025 16:18:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0059M4-0x;
	Thu, 11 Dec 2025 16:18:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTiQv-0000000Fe1B-0ncF;
	Thu, 11 Dec 2025 16:18:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 16:18:15 +0100
Message-ID: <20251211151820.3726093-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211151820.3726093-1-a.fatoum@pengutronix.de>
References: <20251211151820.3726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_071823_159034_6B8D66DE 
X-CRM114-Status: GOOD (  10.12  )
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
Subject: [PATCH 2/3] treewide: replace open-coded variants of devpath_to_name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of opencoding this at multiple places, use the helper we have
for it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/findmnt.c        | 2 +-
 common/bootscan.c         | 2 +-
 common/imx-bbu-nand-fcb.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/findmnt.c b/commands/findmnt.c
index a531b1a95a83..b1c323ebbff2 100644
--- a/commands/findmnt.c
+++ b/commands/findmnt.c
@@ -92,7 +92,7 @@ static int do_findmnt(int argc, char *argv[])
 				continue;
 
 			backingstore = target->backingstore;
-			backingstore += str_has_prefix(backingstore, "/dev/");
+			backingstore = devpath_to_name(backingstore);
 
 			if (streq_ptr(backingstore, cdev->name)) {
 				print_header(&header_printed);
diff --git a/common/bootscan.c b/common/bootscan.c
index 813d6d242a08..faaceaa22152 100644
--- a/common/bootscan.c
+++ b/common/bootscan.c
@@ -145,7 +145,7 @@ static int boot_scan_devicename(struct bootscanner *scanner,
 	pr_debug("%s(%s): %s\n", __func__, scanner->name, devname);
 
 	/* Support both boot /dev/disk0.rootfs and boot disk0.rootfs */
-	devname += str_has_prefix(devname, "/dev/");
+	devname = devpath_to_name(devname);
 
 	device_detect_by_name(devname);
 
diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 7593cd27fec9..0ca5782a702e 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1232,7 +1232,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	}
 
 	/* Support both boot /dev/nand0.barebox and boot nand0.barebox */
-	devname += str_has_prefix(devname, "/dev/");
+	devname = devpath_to_name(devname);
 
 	device_detect_by_name(devname);
 
-- 
2.47.3



