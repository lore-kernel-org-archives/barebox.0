Delivery-date: Mon, 29 Nov 2021 08:19:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrawX-0001vO-At
	for lore@lore.pengutronix.de; Mon, 29 Nov 2021 08:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mrawW-0008Tz-FJ
	for lore@pengutronix.de; Mon, 29 Nov 2021 08:19:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vQdYpzRD+h5HRzNVx26DrSaO/EJJ+itVSolP4LpjsTE=; b=1AebTqIRZMhzKi
	lMwp+trn2/vU0KjSS480G8zV8lF+MAW7t8R7TsOA+CDRFsKNEqEDRJYhvrkDoBF1m4y30yLHOEVm0
	dskOo5JruickCcc8/qN6PSkzoXBMzWN+cDTNPlr12olYwqqjz8j8lHiXCbsyEgVz5NIYjUZEKpJio
	Z0TeDK22mQ7zNRGo8ufrhcN9XdN0GM/e7h2bbLaAseiu+/P4IIfT47qaX3fXAYG+LiISjICntK2Ho
	1Zz61RE788MDElVze3U1o3Fq1Hi2Wbl2BQkDbEVkEdWwfdxk/DP/etml+ksK9SjSXyhCOELHcQFSA
	kff6YD9HWqPveimkBq7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mravQ-0000xT-Dm; Mon, 29 Nov 2021 07:18:08 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mravK-0000w9-Gg
 for barebox@lists.infradead.org; Mon, 29 Nov 2021 07:18:04 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 87FE020008;
 Mon, 29 Nov 2021 07:18:00 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 29 Nov 2021 08:17:56 +0100
Message-Id: <20211129071756.2015218-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211128_231802_724559_CF7FD178 
X-CRM114-Status: UNSURE (   9.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] envfs-core: write to log where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Allow retrieving warning and status messages about the environment via log.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/envfs-core.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/common/envfs-core.c b/common/envfs-core.c
index 1898c1c8cb28..0984d538734f 100644
--- a/common/envfs-core.c
+++ b/common/envfs-core.c
@@ -12,6 +12,8 @@
  * the default environment when building the barebox binary. So
  * do not add any new barebox related functions here!
  */
+#define pr_fmt(fmt) "envfs: " fmt
+
 #ifdef __BAREBOX__
 #include <common.h>
 #include <fs.h>
@@ -23,6 +25,8 @@
 #include <libfile.h>
 #else
 # define errno_str(x) ("void")
+#define pr_info(fmt, ...)	printf(pr_fmt(fmt), ##__VA_ARGS__)
+#define pr_warn(fmt, ...)	printf(pr_fmt(fmt), ##__VA_ARGS__)
 #endif
 
 static int dir_remove_action(const char *filename, struct stat *statbuf,
@@ -39,17 +43,17 @@ static int dir_remove_action(const char *filename, struct stat *statbuf,
 int envfs_check_super(struct envfs_super *super, size_t *size)
 {
 	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
-		printf("envfs: no envfs (magic mismatch) - envfs never written?\n");
+		pr_info("no envfs (magic mismatch) - envfs never written?\n");
 		return -EIO;
 	}
 
 	if (crc32(0, super, sizeof(*super) - 4) != ENVFS_32(super->sb_crc)) {
-		printf("wrong crc on env superblock\n");
+		pr_warn("wrong crc on env superblock\n");
 		return -EIO;
 	}
 
 	if (super->major < ENVFS_MAJOR)
-		printf("envfs version %d.%d loaded into %d.%d\n",
+		pr_info("version %d.%d loaded into %d.%d\n",
 			super->major, super->minor,
 			ENVFS_MAJOR, ENVFS_MINOR);
 
@@ -64,7 +68,7 @@ int envfs_check_data(struct envfs_super *super, const void *buf, size_t size)
 
 	crc = crc32(0, buf, size);
 	if (crc != ENVFS_32(super->crc)) {
-		printf("wrong crc on env\n");
+		pr_warn("wrong crc on env\n");
 		return -EIO;
 	}
 
@@ -93,7 +97,7 @@ int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
 		buf += sizeof(struct envfs_inode);
 
 		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
-			printf("envfs: wrong magic\n");
+			pr_warn("wrong magic\n");
 			ret = -EIO;
 			goto out;
 		}
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

