Delivery-date: Mon, 16 Feb 2026 10:17:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruje-002GvD-01
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujY-0007Tb-Aw
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IZXv6CcdIo5pyhlO7IV4C6CJiEkw+4PjAXvjzpwjVfU=; b=Pz47xyU9KXWJL1SR4mums/Pea2
	5sHZJf+W0aGHG0qSBt6nE8lAO1I/lv3kFcId/uLNZoPEcCyYI5D2HuJGii5DT0hUd+y6V/kKtz2cz
	kswo5ALbqDCvSRDtFREha1T3gC5sHgXkH6kyoBHaeS5CGG7gEeBTkZSGQqaWz83GV2M3/sRqZQtCk
	LdXrAne6ZBRUTkZR44D0eI57SXsjDdsD9Qy78+EkilKOvDZkZxlMYGIlcfhhhWk09nNf4hoPFqwKZ
	wYia9AfueCkDdT3SOu6ubSUVORJXCC6mOLwvX9RGqcOo7N0ltPsRLQpjruToFAwYag8J6AIanc0ep
	ziRvPoWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruii-00000006EWc-2jwT;
	Mon, 16 Feb 2026 09:16:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruig-00000006ERj-23eT
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0006Tx-J9; Mon, 16 Feb 2026 10:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruid-0012Wf-08;
	Mon, 16 Feb 2026 10:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-3HOF;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:23 +0100
Message-ID: <20260216084758.3548990-24-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011642_528286_870191FA 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 23/39] efi: loader: initialize block IO ops before installing protocol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_disk_add_cdev() installs the EFI_BLOCK_IO_PROTOCOL with
efi_install_multiple_protocol_interfaces() before populating the ops
structure and media fields. Between installation and initialization,
any consumer of the protocol (e.g., efi_simple_file_system() called
immediately after) would see zeroed-out function pointers.

Move the ops, media, and cdev initialization before the protocol
installation so the interface is fully populated when it becomes
visible.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/disk.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
index b4a3a7ab0c97..5494f9197cb4 100644
--- a/efi/loader/protocols/disk.c
+++ b/efi/loader/protocols/disk.c
@@ -248,6 +248,18 @@ static efi_status_t efi_disk_add_cdev(efi_handle_t parent,
 		diskobj->dp = efi_dp_from_cdev(cdev, true);
 	}
 
+	diskobj->media.removable_media = removable;
+	diskobj->media.media_present = true;
+	diskobj->media.read_only = cdev->flags & DEVFS_PARTITION_READONLY;
+	diskobj->media.block_size = 512;
+	diskobj->media.io_align = 512;
+	diskobj->media.last_block = cdev->size / diskobj->media.block_size - 1;
+
+	diskobj->ops = block_io_disk_template;
+	diskobj->ops.media = &diskobj->media;
+
+	diskobj->cdev = cdev;
+
 	/*
 	 * Install the device path and the block IO protocol.
 	 *
@@ -272,18 +284,6 @@ static efi_status_t efi_disk_add_cdev(efi_handle_t parent,
 			return ret;
 	}
 
-	diskobj->media.removable_media = removable;
-	diskobj->media.media_present = true;
-	diskobj->media.read_only = cdev->flags & DEVFS_PARTITION_READONLY;
-	diskobj->media.block_size = 512;
-	diskobj->media.io_align = 512;
-	diskobj->media.last_block = cdev->size / diskobj->media.block_size - 1;
-
-	diskobj->ops = block_io_disk_template;
-	diskobj->ops.media = &diskobj->media;
-
-	diskobj->cdev = cdev;
-
 	if (disk)
 		*disk = diskobj;
 
-- 
2.47.3



