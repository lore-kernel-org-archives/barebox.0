Delivery-date: Mon, 18 Jul 2022 21:28:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDWPS-00DTUB-Na
	for lore@lore.pengutronix.de; Mon, 18 Jul 2022 21:28:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oDWPQ-0006DU-Im
	for lore@pengutronix.de; Mon, 18 Jul 2022 21:28:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LzkVskhwbs6ac6cPNFee+lkeHCIBPUNznJJRgOh1iTo=; b=g9w7+p4c8cpPNqqaZH7M24ZB6u
	0D37QWcNXVjSLJgiHmBJ4mrCg/9oNozSnlnMwXBq+cXxGg6iCoKMtKJOmbNZcVqo78DX5t6nCNwFX
	NGKegkTykmJs57kKGvIU9byuIuwLdY5EUGqnrwxYYdLQDNpxvrGiCr74/GTMZ8wTC90M4e8YiOWHh
	FA5V3iseiYglD08FQa/mZON7B2OKW5qqSY/EOTKx9+aMh4ObwUcjBvCyts7CpiVrRbmjPGiA5Hz6f
	6W7zVTwhsg0y8yFZMlOdKGVUOZXtl6hW7cRVDACPua6LQTv6XHq6Ubds7L0JpyBB4T022hagXKx+U
	LxaS2MJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDWNl-000O0O-Qd; Mon, 18 Jul 2022 19:26:17 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDWNg-000Nx4-5p
	for barebox@lists.infradead.org; Mon, 18 Jul 2022 19:26:13 +0000
Received: by mail-wr1-x435.google.com with SMTP id z12so18516920wrq.7
        for <barebox@lists.infradead.org>; Mon, 18 Jul 2022 12:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LzkVskhwbs6ac6cPNFee+lkeHCIBPUNznJJRgOh1iTo=;
        b=QUIoU8bx89ZQ8si6XCO9fNHA1iGHJTggkFBKotmcbCMotP75FjBrS9y01Om4LsqDFW
         Ii9CYeTzMs+kv7n/7CTeCvn74dl1Lv8wLooKSEpnr796e3zMZj0kkTbeBBvwSYk3uNWy
         P7DC1L3Iq9sqh17TPcSmpSwHpukXTgjjHUZiDwj+o7wpiLOpA9Vc+ah+npZ4OlYtfsUm
         x0K8+ljmB82q9EyI/EnL5t4fO657Lx0qKERepXin3vdTbtdckXX51nlZo7j9fLHnugMS
         EZaf77IPrEJwES3bcteewzCz106YW3qAtIfO8OT2Q6ZTGOBCvYpCTQwwcwmJt6WQPZHO
         +8mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LzkVskhwbs6ac6cPNFee+lkeHCIBPUNznJJRgOh1iTo=;
        b=5WK+8ExiKdKQgtd/g0Qz2EcM6YhscDdpnKFkaDLRA+ZkRqHsgC2RycQU7k/Ib+xVzE
         RAXz+7yyYvotZrU7cXm9gb54zw+rJp1eLh4or2w92xixG9YmmFbShqE9DMGGMIbMJwGj
         ZViaLvVF15WJ9cpFnKsvDSeHHHkL4ywL/y3BvslUTerJz3CQNtAXRwyUDscKXGP6hZKh
         taEyivXCGkAQPK3Bxl3Lpw2S7ODHm1mtNo+3gFLwsaC6X4hCzT44DHlUKg/pOmph2s9h
         RHlBWQTSo+NuRot+TDylNL6JqPkrcXJUx7Qols81txCEwvaBVjrNlFyMp8tmHKSP/ADv
         TM3w==
X-Gm-Message-State: AJIora8e5551m2li+HdpguFyWUahU0dxtGmEQnXq7Z+3laPlzRkN+2nl
	tVVkBnWgTuHLCJH+thVd/ZcIk0SjDSo=
X-Google-Smtp-Source: AGRyM1t110wBbpQQ1qvOXCXrbVryggotoZfizeFWAuitMI9CiVfJiVt7Mzggtvou1XqkbqYXmgxssQ==
X-Received: by 2002:a05:6000:18a3:b0:21d:c651:4de7 with SMTP id b3-20020a05600018a300b0021dc6514de7mr17713191wri.679.1658172367570;
        Mon, 18 Jul 2022 12:26:07 -0700 (PDT)
Received: from DESKTOP-KJS3OJ9.localdomain (ip-78-45-69-229.bb.vodafone.cz. [78.45.69.229])
        by smtp.gmail.com with ESMTPSA id q5-20020a1c4305000000b0039747cf8354sm15972502wma.39.2022.07.18.12.26.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 12:26:06 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Mon, 18 Jul 2022 21:25:45 +0200
Message-Id: <20220718192545.10308-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_122612_270929_96910287 
X-CRM114-Status: GOOD (  13.77  )
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
Subject: [PATCH] image-fit: use real size of fit image
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
 common/image-fit.c | 27 ++++++++++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index a410632d70..24e63f9a72 100644
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
+	handle->size = (size_t)header->totalsize;
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
+			  header.totalsize);
 	if (ret) {
 		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
 		return ERR_PTR(ret);
-- 
2.17.1



