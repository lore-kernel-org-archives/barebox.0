Delivery-date: Wed, 20 Aug 2025 12:30:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5H-002aQx-3C
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5G-0007Xh-EA
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X4zlMSs75XYn8Sjjy7hJ60obSqYCwG/jfsG4+fVH1Cg=; b=Q85YOgWRbAs/FG7mSeHbPAa71t
	IyctLqbmB2hDJEkWKR7ddHJkHIVpNNgAHCbW3XsNYENlB/DIgrZ/XWjDpTLg9bJwpZY3ZBaw75aWJ
	kGQ+zpI/AbC4VlJEXmahL13XA/f73C2bTjLvUJ6fZdIXG8bgfVO5J2VMn+Zxz4WSI6u45Sc1qL6uH
	e0UW3jNpCtgzmW8DhQbufCL1WsHs3BNerHlr5samIkSnC95v0HEX62fHxuN2qLUBnmPUw7ToCP7hK
	cYEUUT30uvf7gdqnOQjZtt5iLawS/Xr+02cL6BTJwFPTkkhYxeERvLmgEZOKD6LgTm3Bso16iyDhW
	N2vOXAFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4j-0000000D9Ia-2urt;
	Wed, 20 Aug 2025 10:29:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQx-0000000D0qV-3Q2q
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=X4zlMSs75XYn8Sjjy7hJ60obSqYCwG/jfsG4+fVH1Cg=; b=RB+LE5yn6TNs1BuNgy8GuIx60H
	Z7lgXdcuIUJnNhw+gN/uH/ipDiYDwG5IGb4ts4y1RhVBEx9UAyQ+z7txEa93louXs3Gv1mkmCk+4M
	XDezMLrUIiHD9eSTyuDiR/Ueuu6W5WXfpF/PzMxkeMHXBdJ8GxIETUGEwDvOHLr9/m60vG5OEpy7u
	9ESe6nJFPyswtWw8d3oqyah/zBb/Xx1cM3igy2YMuJnN+3Csf0XS6nClWllYCshuUwCMBjFrdj1xx
	1QMNBLJimguEH6RVMltitks5Sb6GOQBjbUYh/X5gd9dmKNjQ5b8456mEZfG17zCS1D3GDwMF911+4
	fh49IxTg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQt-00000000HWe-2BNR
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-LN; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-10-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104839_715260_3A67C39B 
X-CRM114-Status: UNSURE (   9.76  )
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
Subject: [PATCH v6 10/12] FIT: fit_open: canonicalize provided filename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Resolve any possible filename links to prepare the FIT code to cache the
fit_open() calls.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 0067f46e60bc954b418aef3398e2c10856b41c02..afd82637444a479c8cbb41c5d779da6a013c0386 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -972,12 +972,19 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
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
 
+	filename = canonicalize_path(AT_FDCWD, _filename);
+	if (!filename) {
+		pr_err("Cannot open %s: %m\n", _filename);
+		return ERR_PTR(-errno);
+	}
+
 	handle = xzalloc(sizeof(struct fit_handle));
 
 	handle->verbose = verbose;
@@ -988,9 +995,12 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
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



