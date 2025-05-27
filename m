Delivery-date: Tue, 27 May 2025 23:03:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1SX-000xqG-2I
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:03:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1SX-00009x-6G
	for lore@pengutronix.de; Tue, 27 May 2025 23:03:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dARWYgpdBP36Z90WwlePKmGDG7CNTzNnTCYTLYXsBHA=; b=wgtEDd1eyrxGOdkneJZ4tIAQfH
	pDMysS+50+f3rNG4aYMIEghONHm6Xmed9mAIV/UY7pv9/Vkwdm58K9eE86VNKSPhj3kEiIyPqbhjO
	1BQVbHwSQPDxfUVzp1w8nTAiyFK6lcBhpd2T4bvvNt6Zvfyg/UDkNPStlNYgwr4XgQ8UammkN8lQg
	87/6OO/HdQJMhAzeA0Cilsn6Urn8UcZwuNEkjBIV5hudrnufJLZuITiilXLXvZWBg1h65POqTuOjb
	Uxncx54XDMRGSzuJeLZRmG4u/xPEuzx3PFoJ9PaKePznSt3nIpDQ5n/SIuXnO0XDQW9EPGhyw4Yv/
	4Mbngqeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Rz-0000000BYZ6-09Ev;
	Tue, 27 May 2025 21:03:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1Rv-0000000BYYo-44t5
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:03:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1Rs-0008GX-TC; Tue, 27 May 2025 23:03:00 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 27 May 2025 23:03:00 +0200
Message-Id: <20250527210300.562536-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_140304_009374_BA1E24D9 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-7.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] startup: add semihosting filesystem automount
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

For more convenient use of the semihosting file system, let's add an
automount when the file system is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/startup.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/common/startup.c b/common/startup.c
index bbe905141efc..c9e99d47fbd7 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -57,6 +57,7 @@ static int mount_root(void)
 	mount("none", "ramfs", "/", NULL);
 	mkdir("/dev", 0);
 	mkdir("/tmp", 0);
+	mkdir("/mnt", 0);
 	mount("none", "devfs", "/dev", NULL);
 
 	if (IS_ENABLED(CONFIG_FS_EFIVARFS) && efi_is_payload()) {
@@ -69,6 +70,11 @@ static int mount_root(void)
 		mount("none", "pstore", "/pstore", NULL);
 	}
 
+	if (IS_ENABLED(CONFIG_FS_SMHFS)) {
+		mkdir("/mnt/smhfs", 0);
+		automount_add("/mnt/smhfs", "mount -t smhfs /dev/null /mnt/smhfs");
+	}
+
 	return 0;
 }
 fs_initcall(mount_root);
-- 
2.39.5



