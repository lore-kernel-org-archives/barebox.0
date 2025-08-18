Delivery-date: Mon, 18 Aug 2025 20:17:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Q1-001yFI-0M
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:17:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Pz-0000jW-DK
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:17:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/0SNFoB0r7/QXhRZMJtzDPYYdbKpCtmXRg0aHzRzFLA=; b=uaSYTv/XkEz8jUHy/ZbUylYioc
	6S0l76tLJ3vSMYtitqOeaMJQi/2OYqZ3HID/2BCoS9Yc72T08yktlf/XdGcZDnFvH6rX4XMsNIJqs
	zMnlMmmerkkH39QohVg0kS0v5zclx2GzKxnnp0CD6veq84jHxUmzoih9lUXsaKge9rK3HaS4r1BGA
	fTcgj+xuu/+BjWHXT9/9jJPoa1hVdQYbmFt6bdtfzv6r4HrAgYZhuAR468tjFLHg/NqVEoUs08+qn
	fRNPB1nUI8MSVDz4xwRnkSqH7T7+kh0i7IH+ZwxBtuj11CaVJ7BVBjoJAKX/do0PadDkcl5+bu4x0
	V9toplDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4PX-00000008IlF-3Hpw;
	Mon, 18 Aug 2025 18:16:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3cZ-000000087uH-2uTs
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:26:14 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3cY-0008EV-Hw; Mon, 18 Aug 2025 19:26:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:26:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2024-05-0-topic-fit-overlay-v5-10-b92e466a1d32@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
In-Reply-To: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_102611_914384_862EA563 
X-CRM114-Status: GOOD (  11.51  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v5 10/11] FIT: fit_open: save the filename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is in preparation of buffering fit_open() calls to not load the
same fit twice if it is still open.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c  | 5 +++--
 include/image-fit.h | 1 +
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 1cb407d4d86cb3d0a643149bb08c46caadcd56fe..e4b0a8bd5d1a7283239556dd4532eccd5333e90a 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -1005,9 +1005,8 @@ struct fit_handle *fit_open(const char *_filename, bool verbose,
 		return ERR_PTR(ret);
 	}
 
-	free(filename);
-
 	handle->fit = handle->fit_alloc;
+	handle->filename = filename;
 
 	ret = fit_do_open(handle);
 	if (ret) {
@@ -1022,6 +1021,8 @@ static void __fit_close(struct fit_handle *handle)
 {
 	if (handle->root)
 		of_delete_node(handle->root);
+
+	free(handle->filename);
 	free(handle->fit_alloc);
 }
 
diff --git a/include/image-fit.h b/include/image-fit.h
index f8321aa87e11fcea642593e790a37df72a2e93b1..68f70f4365cb7a650596263086f7de2209d5957e 100644
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
2.39.5



