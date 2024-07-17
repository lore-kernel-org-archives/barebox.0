Delivery-date: Wed, 17 Jul 2024 08:34:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEs-0005bh-20
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:34:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTyEr-0004OJ-Ug
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:34:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TfMuBgMKXgFec2gucBbuYhs2GEzb106PautIKPSoPwg=; b=BFzK1hFuopdEIJMAJuCmSZrRhX
	Axs+31BkPALiu9ICD0Wz/Wp/byJH6rF3H92GPbaMsFjUb/jx7Mkj2VR3+sGuLkbEWPicWCsN1soXw
	CJUq56K0VBd1p1+WT/gZ0LzN44NuG+K1MeBpwy0NuOnb7Cm28u1UuWR3uIXS5zvnL2eqK02Dhcu3L
	2iVEi/SoSLgHgwynQTrN5foweJgGjjFILkzev641AygwmF4T/Ew5vfM1AEjo8bTS5WE2gCCoj4AqY
	uMiABZfEkgyePsIwTNSzS5yaeG5a0QWh3eTHy6IsQLBR8JU4iguI1F46BbhoVJRhcuMBGkAGaw8dG
	JGom9gkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEO-0000000CrGt-1y3j;
	Wed, 17 Jul 2024 06:33:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTyEI-0000000CrDn-1LBZ
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:33:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00045e-MK; Wed, 17 Jul 2024 08:33:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-0009QK-8n; Wed, 17 Jul 2024 08:33:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTyEG-00BnEX-0Z;
	Wed, 17 Jul 2024 08:33:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>,
	Michael Olbrich <mol@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 08:33:28 +0200
Message-Id: <20240717063328.2810835-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
References: <20240717063328.2810835-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_233334_387113_874F2A73 
X-CRM114-Status: GOOD (  16.70  )
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
Subject: [PATCH 6/6] squashfs: refuse mount of squashfs images with non-128K block size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Mounting a block of any size, but 128K, leads to erroneous data in blocks
beyond the first. It would be nice to support the full-range of block
sizes supported by Linux, but for now, let's just enforce that the
default block size of 128K is used and refuse the mount with an error
message if the image has been generated with a non-default block size.

Reported-by: Michael Olbrich <mol@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/squashfs/Kconfig | 5 +----
 fs/squashfs/super.c | 7 +++++++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
index af187a2a8ac7..c57ef0044cdd 100644
--- a/fs/squashfs/Kconfig
+++ b/fs/squashfs/Kconfig
@@ -9,10 +9,7 @@ menuconfig FS_SQUASHFS
 	  filesystem for Linux.  It uses zlib, lzo or xz compression to
 	  compress both files, inodes and directories.  Inodes in the system
 	  are very small and all blocks are packed to minimise data overhead.
-	  Block sizes greater than 4K are supported up to a maximum of 1 Mbytes
-	  (default block size 128K).  SquashFS 4.0 supports 64 bit filesystems
-	  and files (larger than 4GB), full uid/gid information, hard links and
-	  timestamps.
+	  Only the default block sizes of 128K is supported.
 
 	  Squashfs is intended for general read-only filesystem use, for
 	  archival use (i.e. in cases where a .tar.gz file may be used), and in
diff --git a/fs/squashfs/super.c b/fs/squashfs/super.c
index f3dac6de1527..7695c9e0fd25 100644
--- a/fs/squashfs/super.c
+++ b/fs/squashfs/super.c
@@ -31,6 +31,7 @@
 #include <linux/pagemap.h>
 #include <linux/magic.h>
 #include <linux/bitops.h>
+#include <linux/sizes.h>
 
 #include "page_actor.h"
 #include "squashfs_fs.h"
@@ -172,6 +173,12 @@ static int squashfs_fill_super(struct super_block *sb, void *data, int silent)
 		goto failed_mount;
 	}
 
+	if (msblk->block_size != SZ_128K) {
+		ERROR("filesystem block size (%d) != 128K.  This is "
+			"currently not supported!\n", msblk->block_size);
+		goto failed_mount;
+	}
+
 	/* Check block log for sanity */
 	msblk->block_log = le16_to_cpu(sblk->block_log);
 	if (msblk->block_log > SQUASHFS_FILE_MAX_LOG)
-- 
2.39.2



