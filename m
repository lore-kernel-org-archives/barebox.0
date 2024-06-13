Delivery-date: Thu, 13 Jun 2024 14:59:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2u-005NNY-26
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 14:59:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2t-0004UB-HL
	for lore@pengutronix.de; Thu, 13 Jun 2024 14:59:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a69dmBY2hFB6ETzemvxgjdRTW3xYzaAPa8fLPUqwVYM=; b=K049bsxqNfY34/SPxlfU8E6sRK
	//1M3rnqtXUGVZHe+99hPpAbcTNFPX7Z5dnJm63qWrbywclIDjLNjNtVEFaiO37NgieB+ZsyAGo6/
	/XRc4TvB92O+SF+8+WUNx/PsUb3ddcaqGSHTVoWLN2OhU4p7/3upivI2SoUxrEmQJRyqok0axcW/V
	6AWhZS5Bg9/IGQs4cObdjd8Fo6qcQD9aLrJzBl923b/1OlLdefaiZwXkXbehgTmKWyPVuKrMuTcd5
	o6AGGi3oIQgI+Rrp8WO60OcFGupPFKrsp+7IcBOqVIBQTz3HthyyY6maE5ZnYp7aSyz1c9qDJXmNi
	3P9kXA5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk2G-0000000GbBN-3UzB;
	Thu, 13 Jun 2024 12:58:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk27-0000000Gb51-0a94
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:31 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-DF
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:17 +0200
Message-Id: <20240613125818.30499-11-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055827_322135_35565908 
X-CRM114-Status: UNSURE (   9.79  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 10/11] FIT: save filename during fit_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is in preparation of buffering fit_open() calls to not load the
same fit twice if it is still open.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 4 ++++
 include/image-fit.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index e93946a0615e..c5c88ebe4c1e 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -951,6 +951,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	}
 
 	handle->fit = handle->fit_alloc;
+	handle->filename = xstrdup(filename);
 
 	ret = fit_do_open(handle);
 	if (ret) {
@@ -966,6 +967,9 @@ void fit_close(struct fit_handle *handle)
 	if (handle->root)
 		of_delete_node(handle->root);
 
+	if (handle->filename)
+		free(handle->filename);
+
 	free(handle->fit_alloc);
 	free(handle);
 }
diff --git a/include/image-fit.h b/include/image-fit.h
index 7e0cd38fea53..10fa3716a094 100644
--- a/include/image-fit.h
+++ b/include/image-fit.h
@@ -13,6 +13,7 @@ struct fit_handle {
 	const void *fit;
 	void *fit_alloc;
 	size_t size;
+	char *filename;
 
 	bool verbose;
 	enum bootm_verify verify;
-- 
2.39.2



