Delivery-date: Mon, 18 Aug 2025 20:17:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Q1-001yFm-2z
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:17:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4Pz-0000js-PG
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:17:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9cmipo9h0mIvGdOIHynhjf7gzaejunPaNtjd4RjYjX8=; b=3PDEpNvJiS2g6KbhHb3Nfe3a4R
	ukelnnLpseQGi95v9PcyBHTckjoIELgIqPwpRv4sqaC4qbCvE18PmMhzuDv+rpqw99F36RBRux3PT
	dpL/KZMRj+vpDTCyn34a5LqCaBQbJhM1lGogTMTs5UAnQNHrifdWGItqDQ6zAAg0mudLTBLWQpqth
	CP3NbwAYQHlCIoV47uyoT25FsP4j0whvG8P+opLs8peLGZPDZGUv/WPpYROGTdlqSagep3kPEFIRq
	3BSvCaFwVnxgWuMo+QqSwKgBMO9jTUfkMQHUwvnOa8ye123clJ/r81GOd49qsQHDG5AcjbW9KHsEG
	d7ybwrCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4Pa-00000008Inx-0rT0;
	Mon, 18 Aug 2025 18:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3cZ-000000087uG-2mDA
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:26:15 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3cY-0008EV-Go; Mon, 18 Aug 2025 19:26:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:26:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2024-05-0-topic-fit-overlay-v5-9-b92e466a1d32@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
In-Reply-To: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_102611_931833_E32339EF 
X-CRM114-Status: GOOD (  10.77  )
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
Subject: [PATCH v5 09/11] FIT: fit_open: make filename handling more robust
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Require the filename to start at the root '/' directory and resolve any
possible link to make the filename handling more robust.

This is in preparation of adding cached fit_open support.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 0067f46e60bc954b418aef3398e2c10856b41c02..1cb407d4d86cb3d0a643149bb08c46caadcd56fe 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -972,12 +972,25 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
  *
  * Return: A handle to a FIT image or a ERR_PTR
  */
-struct fit_handle *fit_open(const char *filename, bool verbose,
+struct fit_handle *fit_open(const char *_filename, bool verbose,
 			    enum bootm_verify verify, loff_t max_size)
 {
 	struct fit_handle *handle;
+	char *filename;
 	int ret;
 
+	if (*_filename != '/') {
+		pr_err("The FIT filename must start with '/'\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	/* dirfd is ignored, since _filename is absolute */
+	filename = canonicalize_path(AT_FDCWD, _filename);
+	if (!filename) {
+		pr_err("Failed to resolve %s with %s\n", _filename, strerror(errno));
+		return ERR_PTR(-errno);
+	}
+
 	handle = xzalloc(sizeof(struct fit_handle));
 
 	handle->verbose = verbose;
@@ -988,9 +1001,12 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 	if (ret && ret != -EFBIG) {
 		pr_err("unable to read %s: %pe\n", filename, ERR_PTR(ret));
 		free(handle);
+		free(filename);
 		return ERR_PTR(ret);
 	}
 
+	free(filename);
+
 	handle->fit = handle->fit_alloc;
 
 	ret = fit_do_open(handle);

-- 
2.39.5



