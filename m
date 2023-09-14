Delivery-date: Thu, 14 Sep 2023 12:00:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgj97-00EsEc-N1
	for lore@lore.pengutronix.de; Thu, 14 Sep 2023 12:00:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgj93-0008W1-Ht
	for lore@pengutronix.de; Thu, 14 Sep 2023 12:00:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bwiwDNvS2Os9wSXIs1r1eDk+WHsAG7Lxj/guMZhqpuc=; b=HXkRZKaED9th/b2JKdNxeZP9QT
	wa7uX1sDmIpZVk9lno1tnGumDj+5vAm/hk84RsmsVW4IlOoVdnaXATNrGQ3iWNfi9rgnKhmBH658T
	1K4x/rjNdTTnsc7zKRPAcPwq6D971LseZEwuTNkuJmE/77nLQIgzMweNlDGCKp8U4m2fIom6E4lFY
	Hewktf4z6C9srOTPxC4a1/Ix27kXXl9BISSgvLnrTBcL+vfflulJb88+G5QfAkxk3YQvOgTjMkbfr
	zmRUMWmTLvaccsj1fxFqM+WkF588HcSffrjPB7pNZ6thSQppwGrVoyG+EKAihWBtaM+ltrfqLpGvk
	4Pu3QsLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgj7r-007uCi-0y;
	Thu, 14 Sep 2023 09:59:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgj7n-007uBz-00
	for barebox@lists.infradead.org;
	Thu, 14 Sep 2023 09:59:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jbe@pengutronix.de>)
	id 1qgj7k-0007gi-7u
	for barebox@lists.infradead.org; Thu, 14 Sep 2023 11:59:00 +0200
Received: from [2a0a:edc0:0:900:1d::45] (helo=ginster)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <jbe@pengutronix.de>)
	id 1qgj7j-006Gv0-RK
	for barebox@lists.infradead.org; Thu, 14 Sep 2023 11:58:59 +0200
Received: from jbe by ginster with local (Exim 4.94.2)
	(envelope-from <jbe@pengutronix.de>)
	id 1qgj7j-0005mJ-IB
	for barebox@lists.infradead.org; Thu, 14 Sep 2023 11:58:59 +0200
From: Juergen Borleis <jbe@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 14 Sep 2023 11:58:58 +0200
Message-Id: <20230914095859.22166-1-jbe@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_025903_041224_13039D4A 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] sparse_image_fd: add function to re-use a file descriptor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 include/image-sparse.h |  1 +
 lib/image-sparse.c     | 17 +++++++++++------
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/include/image-sparse.h b/include/image-sparse.h
index 6bff844..d969ca1 100644
--- a/include/image-sparse.h
+++ b/include/image-sparse.h
@@ -59,6 +59,7 @@ static inline int is_sparse_image(const void *buf)
 struct sparse_image_ctx;
 
 struct sparse_image_ctx *sparse_image_open(const char *path);
+struct sparse_image_ctx *sparse_image_fd(int infd);
 int sparse_image_read(struct sparse_image_ctx *si, void *buf,
 		      loff_t *pos, size_t len, size_t *retlen);
 void sparse_image_close(struct sparse_image_ctx *si);
diff --git a/lib/image-sparse.c b/lib/image-sparse.c
index eb5242e..b686d25 100644
--- a/lib/image-sparse.c
+++ b/lib/image-sparse.c
@@ -146,7 +146,7 @@ loff_t sparse_image_size(struct sparse_image_ctx *si)
 	return (loff_t)si->sparse.blk_sz * si->sparse.total_blks;
 }
 
-struct sparse_image_ctx *sparse_image_open(const char *path)
+struct sparse_image_ctx *sparse_image_fd(int infd)
 {
 	struct sparse_image_ctx *si;
 	loff_t offs;
@@ -154,11 +154,7 @@ struct sparse_image_ctx *sparse_image_open(const char *path)
 
 	si = xzalloc(sizeof(*si));
 
-	si->fd = open(path, O_RDONLY);
-	if (si->fd < 0) {
-		ret = -errno;
-		goto out;
-	}
+	si->fd = infd;
 
 	/* Read and skip over sparse image header */
 	read(si->fd, &si->sparse, sizeof(struct sparse_header));
@@ -186,6 +182,15 @@ struct sparse_image_ctx *sparse_image_open(const char *path)
 	return ERR_PTR(ret);
 }
 
+struct sparse_image_ctx *sparse_image_open(const char *path)
+{
+	int fd = open(path, O_RDONLY);
+	if (fd < 0)
+		return ERR_PTR(-errno);
+
+	return sparse_image_fd(fd);
+}
+
 int sparse_image_read(struct sparse_image_ctx *si, void *buf, loff_t *pos,
 		      size_t len, size_t *retlen)
 {
-- 
2.30.2



