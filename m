Delivery-date: Mon, 03 Mar 2025 08:29:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp0Ei-009FBE-1S
	for lore@lore.pengutronix.de;
	Mon, 03 Mar 2025 08:29:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tp0Eh-0002bq-71
	for lore@pengutronix.de; Mon, 03 Mar 2025 08:29:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g0SgrvqSIojqAnXcCDBLLR7P3giafcO+pjIiYdFq4YA=; b=sYsyY0uIrbo2jdKIANxjeZZPfk
	2EBaN8tr7VcoYsUKDWGQhd69Bg+mt1W6qj3BBfbZ6HjJnlO3uBt1Yv8LUOKci9e+UkmG/Ye3FXEHp
	yXmyvR6b54KTIza1LbcU3HyLZWhXWaUEjckRwBG6ACGviN5b7dcVKaWQoijjgEmrMmfvtsyInF0vj
	2hyRTRatBsszuM3rpE+t15hAiQQBSPBTjK5Gs8yswmWhxTovrOY96/xvgd1lWAWYsBEnmeBB7hQhN
	DaOcCtGPkPVLj2HijlQs8NBvsHC1ncwysf5ULhaqKtkWL3XmA+wKgIJ1R2lJtmUw5LhMb3O/iulYz
	F3te2RwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp0Dw-0000000HQvu-2wMv;
	Mon, 03 Mar 2025 07:28:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp0Dt-0000000HQuT-35if
	for barebox@lists.infradead.org;
	Mon, 03 Mar 2025 07:28:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tp0Dp-0002VN-Te; Mon, 03 Mar 2025 08:28:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tp0Dp-003ksM-2M;
	Mon, 03 Mar 2025 08:28:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tp0Dp-00Ftvv-21;
	Mon, 03 Mar 2025 08:28:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  3 Mar 2025 08:28:16 +0100
Message-Id: <20250303072816.3789920-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_232821_769978_3E136990 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH] fip: fix missing close() in error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The file opened in fip_read_image_from_file() is never closed in the
error paths. Add the missing close() and while at it free the allocated
pointer as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/fip.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/lib/fip.c b/lib/fip.c
index 23e82098da..99d6c5c383 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -284,7 +284,7 @@ int fip_parse(struct fip_state *fip,
 static struct fip_image *fip_read_image_from_file(const uuid_t *uuid, const char *filename)
 {
 	struct stat st;
-	struct fip_image *image;
+	struct fip_image *image = NULL;
 	int fd;
 
 	ASSERT(uuid != NULL);
@@ -298,7 +298,7 @@ static struct fip_image *fip_read_image_from_file(const uuid_t *uuid, const char
 
 	if (fstat(fd, &st) == -1) {
 		pr_err("fstat %s: %m\n", filename);
-		return NULL;
+		goto err;
 	}
 
 	image = xzalloc(sizeof(*image));
@@ -306,12 +306,18 @@ static struct fip_image *fip_read_image_from_file(const uuid_t *uuid, const char
 	image->buffer = xmalloc(st.st_size);
 	if (read_full(fd, image->buffer, st.st_size) != st.st_size) {
 		pr_err("Failed to read %s: %m\n", filename);
-		return NULL;
+		goto err;
 	}
 	image->toc_e.size = st.st_size;
 
 	close(fd);
 	return image;
+
+err:
+	close(fd);
+	free(image);
+
+	return NULL;
 }
 
 int fip_pack_images(struct fip_state *fip,
-- 
2.39.5



