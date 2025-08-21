Delivery-date: Thu, 21 Aug 2025 19:52:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T6-0032cg-0L
	for lore@lore.pengutronix.de;
	Thu, 21 Aug 2025 19:52:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1up9T4-0005u3-Kr
	for lore@pengutronix.de; Thu, 21 Aug 2025 19:52:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i0R7HExFq1lMcUcCWO+t/a+ZuHFn8qh1gqGPOqMLQDY=; b=GmphTGDGO0nfmwEgqZZFHv4hOT
	J6ZmCsvvN9tCCxhhRbm91+pzrYu397qltdClUysQEE0pL+Bl2Gn1LoV6i5WGh3J3lbHhE4vCWM3yW
	Pd4b0ERZfAxlKZdOtZOTc/w8zjrinr78TeWeDKWXl/1gyez1kmaTz78hT7r3Xf5vD+zJkUG0UYjR0
	0eYFVUXVgesrs5hv8mq6MASjVX2gan4qsF5RGAl269EpwKKX0SMixvxq61CFYNThpAwAdRxjY16AK
	d6xnic+ALRXF/kW0NG7TPPv0W6D2NckAVBAWOp+ttBva2x6jNvVxr7TFFzokyBGKzh2Gg+FZ5wGkK
	Pnnh8lXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up9SS-000000006uy-2vCb;
	Thu, 21 Aug 2025 17:52:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5Bg-0000000H1cu-35BR
	for barebox@lists.infradead.org;
	Thu, 21 Aug 2025 13:18:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-0008Vf-IZ; Thu, 21 Aug 2025 15:18:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-001Q3J-0v;
	Thu, 21 Aug 2025 15:18:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1up5BX-00HHYe-0f;
	Thu, 21 Aug 2025 15:18:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Aug 2025 15:18:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-keynames-v1-5-8144af76d0ab@pengutronix.de>
References: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
In-Reply-To: <20250821-keynames-v1-0-8144af76d0ab@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755782311; l=3260;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=15JWfUa88YG49vz2d65YtTEC/tNd5YyWrhMwa0RkCZw=;
 b=QdLkVeuJRYtBEhmQr3EGIfK9zy6zz6ysAOZGDR52hTwPOafCdJ225BX2ez/NbuFAtS/EWGdSY
 MLa3rz4WIKcDcI+dXQUV/XazJMw9sYVs4SpY5rj5WBuwdFrS+3ZfLpS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_061840_777311_8A64FCCC 
X-CRM114-Status: GOOD (  11.96  )
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
Subject: [PATCH 5/6] fit: consistently pass around fit_handle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some functions in the FIT code use the image buffer as context pointer,
other do not have any context pointer at all. Consistently pass around
the struct fit_handle * as context pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 5006394eb7bbd0873a37a0102d5a0d89ea7c6b9f..1fe5aaf9bb186ae2407818b7824deea3f182e3e0 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -64,11 +64,12 @@ static int of_read_string_list(struct device_node *np, const char *name, struct
 	return prop ? 0 : -EINVAL;
 }
 
-static int fit_digest(const void *fit, struct digest *digest,
+static int fit_digest(struct fit_handle *handle, struct digest *digest,
 		      struct string_list *inc_nodes, struct string_list *exc_props,
 		      uint32_t hashed_strings_start, uint32_t hashed_strings_size)
 {
-	const struct fdt_header *fdt = fit;
+	const struct fdt_header *fdt = handle->fit;
+	const void *fit = handle->fit;
 	uint32_t dt_struct;
 	void *dt_strings;
 	struct fdt_header f = {};
@@ -254,7 +255,7 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 	return digest;
 }
 
-static int fit_check_signature(struct device_node *sig_node,
+static int fit_check_signature(struct fit_handle *handle, struct device_node *sig_node,
 			       enum hash_algo algo, void *hash)
 {
 	const struct public_key *key;
@@ -300,7 +301,7 @@ static int fit_check_signature(struct device_node *sig_node,
 /*
  * The consistency of the FTD structure was already checked by of_unflatten_dtb()
  */
-static int fit_verify_signature(struct device_node *sig_node, const void *fit)
+static int fit_verify_signature(struct fit_handle *handle, struct device_node *sig_node)
 {
 	uint32_t hashed_strings_start, hashed_strings_size;
 	struct string_list inc_nodes, exc_props;
@@ -337,7 +338,7 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 		goto out_sl;
 	}
 
-	ret = fit_digest(fit, digest, &inc_nodes, &exc_props, hashed_strings_start,
+	ret = fit_digest(handle, digest, &inc_nodes, &exc_props, hashed_strings_start,
 			 hashed_strings_size);
 	if (ret)
 		goto out_sl;
@@ -345,7 +346,7 @@ static int fit_verify_signature(struct device_node *sig_node, const void *fit)
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-	ret = fit_check_signature(sig_node, algo, hash);
+	ret = fit_check_signature(handle, sig_node, algo, hash);
 	if (ret)
 		goto out_free_hash;
 
@@ -468,7 +469,7 @@ static int fit_image_verify_signature(struct fit_handle *handle,
 	hash = xzalloc(digest_length(digest));
 	digest_final(digest, hash);
 
-	ret = fit_check_signature(sig_node, algo, hash);
+	ret = fit_check_signature(handle, sig_node, algo, hash);
 
 	free(hash);
 
@@ -721,7 +722,7 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
 		if (handle->verbose)
 			of_print_nodes(sig_node, 0, ~0);
 
-		ret = fit_verify_signature(sig_node, handle->fit);
+		ret = fit_verify_signature(handle, sig_node);
 		if (ret < 0)
 			return ret;
 	}

-- 
2.39.5



