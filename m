Delivery-date: Tue, 16 Apr 2024 08:18:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwc98-002yuE-1R
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 08:18:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwc97-0000G9-Sz
	for lore@pengutronix.de; Tue, 16 Apr 2024 08:18:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGJ8O6yus0dYiioqmiLq/FTSKiDz92gUpXHY9eCAwcQ=; b=Io46hdT6yVtmoc
	giP+RaEvBmh/3+wBvd6wSqbFi1S86+2MVC6QBJdzKavtxbCgj/GbHUotSsIdgzfD5BKh1RAsURMcD
	8sB31MVbGCdqFm3hLjv2+P/+eFC9btanGMNF95OXBOKd7uvOpIxVtkLZEBTEqkQfNfvYu8bTJ3i+Y
	ECpEDc64ncEHs03DHLzIf41uM4RNShOM0IBL0eyDuPCy/Hzp42INduYKscFHJUeDlL/aZp/fdVX13
	ZcnJkgK68EIOdsobbhZJwNPaOKXydOwfGM/x9qivMudEHbWVsDFH9wLJhiWpJaMt9hrbrNO72GFzZ
	GkgVTZWrdhaQuffmeu7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwc8j-0000000B3YR-0dcd;
	Tue, 16 Apr 2024 06:17:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwc8Y-0000000B3RS-3r3R
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 06:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwc8K-0007oZ-Ql; Tue, 16 Apr 2024 08:17:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwc8K-00CYis-Cd; Tue, 16 Apr 2024 08:17:32 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwc8K-005bWw-0u;
	Tue, 16 Apr 2024 08:17:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 08:17:30 +0200
Message-Id: <20240416061730.1335890-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416061730.1335890-1-s.hauer@pengutronix.de>
References: <20240416061730.1335890-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_231747_462550_696CE230 
X-CRM114-Status: GOOD (  11.63  )
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
Cc: Juergen Borleis <jbe@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fs: jffs2: ignore cleanup hints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Juergen Borleis <jbe@pengutronix.de>

Without any kind of write support cleanup hints make no sense and cannot
fixed inside the bootloader. Thus, ignore them entirely.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/jffs2/os-linux.h | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/fs/jffs2/os-linux.h b/fs/jffs2/os-linux.h
index 424acbdc4d..9c1c05eb6c 100644
--- a/fs/jffs2/os-linux.h
+++ b/fs/jffs2/os-linux.h
@@ -74,9 +74,17 @@ struct jffs2_file {
 
 #define SECTOR_ADDR(x) ( (((unsigned long)(x) / c->sector_size) * c->sector_size) )
 
+/**
+ * Read data from memory and ignore any hints about bitflips in case of NAND
+ * memory (because we cannot repair them).
+ */
 static inline int jffs2_flash_read(struct jffs2_sb_info *c, loff_t ofs, size_t len, size_t *retlen, u_char *buf)
 {
-	return mtd_read((c)->mtd, ofs, len, retlen, buf);
+	int rc = mtd_read((c)->mtd, ofs, len, retlen, buf);
+	if (rc == -EUCLEAN)
+		return 0; // we are read-only, we cannot repair anything.
+
+	return rc;
 }
 
 /* support run-time speed-up while scanning NAND flashs */
-- 
2.39.2



