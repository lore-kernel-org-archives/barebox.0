Delivery-date: Wed, 03 Jul 2024 18:59:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kk-001EY7-2M
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 18:59:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kj-0005Ob-8m
	for lore@pengutronix.de; Wed, 03 Jul 2024 18:59:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J1fY263GNo1w5R0RnH1eMyFlNEPo+3mSj/7WN7I6xRo=; b=yTShUlyCuWKIIJK0NN+5pFegW7
	qfxM0T7OerRgoQjEI5SzRRCfGdMIhg40tx0FvMqtF/rm264HQCP55mY92EX6XMPBohLWRdXTHF+uO
	8Jp7BJuLUI52sJ8KR3pbdv9qKR8fYEcpKYvoTRJ7vmcLvylbl/CthKravcg5p16y8KsuraJEqgefQ
	2IbAKnyW+6R768AD8gpup6FTOmU+pQU0GomtAI9OHSnqQHT5Q24hFI4DPLYnHrV1jEGFTlJ2Z8wFg
	ropMORoZFQE5KHANF8Zcf6t2EOIF5/KbNlX5/TTQJ22B8OsBh2tcpJTclI9qE85oNAlF2HNEqmGK/
	CrobM+xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3K3-0000000Av6k-2vQf;
	Wed, 03 Jul 2024 16:59:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3Jv-0000000Av2A-0BqI
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 16:59:07 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3Jr-0004uJ-Ha; Wed, 03 Jul 2024 18:58:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 18:58:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-fit-overlay-v3-9-c1fd766fd31d@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_095903_245790_06CD4550 
X-CRM114-Status: UNSURE (   9.38  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/10] FIT: save filename during fit_open
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is in preparation of buffering fit_open() calls to not load the
same fit twice if it is still open.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 2 ++
 include/image-fit.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 9480d7963f2a..4839d8dd33a4 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -937,6 +937,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	}
 
 	handle->fit = handle->fit_alloc;
+	handle->filename = xstrdup(filename);
 
 	ret = fit_do_open(handle);
 	if (ret) {
@@ -952,6 +953,7 @@ void fit_close(struct fit_handle *handle)
 	if (handle->root)
 		of_delete_node(handle->root);
 
+	free(handle->filename);
 	free(handle->fit_alloc);
 	free(handle);
 }
diff --git a/include/image-fit.h b/include/image-fit.h
index f8321aa87e11..68f70f4365cb 100644
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



