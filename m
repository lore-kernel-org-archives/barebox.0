Delivery-date: Fri, 29 Jul 2022 22:56:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHX2T-003zmt-4O
	for lore@lore.pengutronix.de; Fri, 29 Jul 2022 22:56:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHX2R-0005Yp-Qo
	for lore@pengutronix.de; Fri, 29 Jul 2022 22:56:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WuHMlY6XzmyZgrCEhYeuq0hvqLG+V6/lmkBMziGDV0o=; b=pGaET6+VQwLlE+UHwZ5seL0sVt
	zj8CWNsrGwGwgQo4/3g63D5qYBctGZKee/4cNo2eYI9CcHyrmuCUlm6TZHLdLiSjcGWs3ddgycnU+
	eF7T5kuG7tbxyY0xt5OjRw1Y67h+OFB9tvNV9lHCpydm4TwVA5sEPj+P2STWqe13a7X32Q+OY9ZMW
	bnf4v98flkg4UwbpwwviBgk1gNlPXNabRYsNi6U84ZIcKt3b4ke4KHs1pPaZl84gbzHhGjWemNKKj
	+zb2JCofWyKGADVfqZFyqe1bJs14PHwX/A7H3gJtLH+mmqHP8fpUikOtn3vbz+hacKp7wRJna2F89
	PYXnwtqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHX0b-00CVLU-1i; Fri, 29 Jul 2022 20:54:57 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHX0X-00CV8Q-7v
	for barebox@lists.infradead.org; Fri, 29 Jul 2022 20:54:54 +0000
Received: by mail-ej1-x62f.google.com with SMTP id bp15so10490059ejb.6
        for <barebox@lists.infradead.org>; Fri, 29 Jul 2022 13:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WuHMlY6XzmyZgrCEhYeuq0hvqLG+V6/lmkBMziGDV0o=;
        b=fPto4flMuc7rfGXEE091HTvSX5cHbccplLH1JKe+lCrmM0Sh8iwxixH4xLAqP2lkoY
         EPMdngKAQjx52LybuZp30sZdwYOdvtYrM/G8A8s1R3G9mAMKxi1a4qHACOgkWwkH1Lf8
         70uRYDt2bsxr6fepGOLqtckb89dKNvA1+k6l00VSxDitANKjaQ/UqNarvVYTYsYDHlBy
         Og5tUkhlEGKqfVU1KCkp6B2rtWIg+uzew4P57UR4Gxfgea+0tux/4KDEbUeQJ0hi2yFP
         IxXAEkSIyL9si5AdFgpWxPIb+qXMewVXBMCrt+8NcXDg4X4wTMWgnUm/tj6QvYO6k53b
         GSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WuHMlY6XzmyZgrCEhYeuq0hvqLG+V6/lmkBMziGDV0o=;
        b=NZtBGjhUQwGpoqR+iJ3pOVWBs0nIK7Ua3OC+mNIiB6qUppWwUI5d3xAwsr2nV8Pug3
         SZxDRsEg6T3iS4JvAPaYxQHBPCIXJXAdCVRpmbQACE6zfuHkt4ci9+YwJ8nCFrBdmKhP
         Um9aaYgHVY+tYKKsi3Ed8x6QtE3C1gl4kzYjquoNM/fYvC7OLFTBiYIbEB7pAU8/+xS4
         sJALaLq72lpmtgYI1EwMxhasHfwQgzywqUhzsXw6CxdpUxiJPxjWV8vG289No7KroWVJ
         cV/ieuni7sLojTzl38Id1Nl4aHBV59XQloNGxtdc3iduNjvyK5JhR13XJ5bIHx6NjVd/
         k02A==
X-Gm-Message-State: AJIora9WYj9BHTL7pvdcx4Ddr2Cu71fonkZMouCzSfuDDNn3vIDm0RfI
	agHDGBjbdeqxB7/QuEfQGcev4edntmw=
X-Google-Smtp-Source: AGRyM1snDcd2t7Q9qbK1aI59j7GOT1BYM3HDK7SVcbOxdM8cHN6RN01RChRgTDa7xsGT0dTBPB3Qvw==
X-Received: by 2002:a17:907:2809:b0:72f:c717:ed48 with SMTP id eb9-20020a170907280900b0072fc717ed48mr4118525ejc.601.1659128088178;
        Fri, 29 Jul 2022 13:54:48 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.bb.vodafone.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id mr42-20020a17090782aa00b00722fc0779e3sm2073285ejc.85.2022.07.29.13.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 13:54:47 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Fri, 29 Jul 2022 22:54:41 +0200
Message-Id: <20220729205441.9512-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220729_135453_313358_F1E6D8E9 
X-CRM114-Status: GOOD (  14.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] image-fit: use real size of fit image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The real size of the fit image might be significantly smaller than it may
appear to be based on the specified filename. For example, if path to raw disk
partition is passed (eg. /dev/disk0.1), the size of the partition itself
might be several times larger than the fit image it contains at the moment
(so it has headroom for possible future image size changes).
This modification uses the fdt header field 'totalsize' to read-in only what
is needed.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
v2: use fdt32_to_cpu to read the totalsize from header
---
 common/image-fit.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index a410632d7..de65e3dd1 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -774,13 +774,18 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
 				enum bootm_verify verify)
 {
 	struct fit_handle *handle;
+	struct fdt_header *header;
 	int ret;
 
+	if (size < sizeof(*header))
+		return ERR_PTR(-EINVAL);
+
+	header = (struct fdt_header*)buf;
 	handle = xzalloc(sizeof(struct fit_handle));
 
 	handle->verbose = verbose;
 	handle->fit = buf;
-	handle->size = size;
+	handle->size = fdt32_to_cpu(header->totalsize);
 	handle->verify = verify;
 
 	ret = fit_do_open(handle);
@@ -807,15 +812,31 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 			    enum bootm_verify verify)
 {
 	struct fit_handle *handle;
-	int ret;
+	struct fdt_header header;
+	int fd, ret;
 
 	handle = xzalloc(sizeof(struct fit_handle));
 
 	handle->verbose = verbose;
 	handle->verify = verify;
 
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		pr_err("unable to open %s: %s\n", filename, strerror(errno));
+		return ERR_PTR(-errno);
+	}
+
+	ret = read_full(fd, &header, sizeof(header));
+	if (ret < 0) {
+		close(fd);
+		pr_err("unable to read %s: %s\n", filename, strerror(errno));
+		return ERR_PTR(-errno);
+	}
+
+	close(fd);
+
 	ret = read_file_2(filename, &handle->size, &handle->fit_alloc,
-			  FILESIZE_MAX);
+			  fdt32_to_cpu(header.totalsize));
 	if (ret) {
 		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
 		return ERR_PTR(ret);
-- 
2.17.1



