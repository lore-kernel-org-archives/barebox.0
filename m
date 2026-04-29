Delivery-date: Wed, 29 Apr 2026 12:20:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI223-0004DN-0y
	for lore@lore.pengutronix.de;
	Wed, 29 Apr 2026 12:20:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI222-0005WH-MA
	for lore@pengutronix.de; Wed, 29 Apr 2026 12:20:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pLpVcrF5/Mz+wLAPQHRAtbjDhvZorNAStiyDonghBwM=; b=qRDOcIPAsEGpDG/5GhbaP2H1I5
	bXtJR6oGQRcPxEMTSfD/DYUieTFf83/gUmGYPcl0RsnPM9B5zNnIT3MyWaIauB9WD3ZwhT5xG+8mP
	GUYT6nWW3EBo1mKKC1mkOPeUbe9sHiOnJkDFq9feBnUT1tdtvKgVFPhQSCbEpuWJq1kqcaFIqu9sf
	ph5KduuRepBr1AjKs7Pd41B99BaGfWR8xW4Py1pmeWy8q0Mo6obhcv8dBBadX8ncYjHwpz3p3zNVp
	37BU35fXzzq0qXIpCHUt64UXhAkwp0FNnozNU1skMMgt1RMLhuqHC4Sehj8EvKDX3FqTn7P5hB+/V
	42WIbUZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21U-00000003RP5-3U51;
	Wed, 29 Apr 2026 10:20:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21S-00000003ROg-2n8U
	for barebox@bombadil.infradead.org;
	Wed, 29 Apr 2026 10:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=pLpVcrF5/Mz+wLAPQHRAtbjDhvZorNAStiyDonghBwM=; b=bg8pMfiEMox4B7fzYgBjCEBv6b
	S9Pqjk5g0Zosz/1btZNiV+3Lq1ZLbuLJO8hZV2J6ujJFU5h9H1mMVq+45+btL2WyRfB+6Q2B5B61v
	U1OCsSwGJPYL/ZPgrRD4o6qQihPFDk9u0kT8b8vyBwAGmqkmP6iiFiCgo472d8bzr39PtmR9tOHXt
	+7DBofn+ue04u1Cg1JwJO5++2+KnFKHaqWcOpX3m3BbVjbh6xZCVwYfgShZ2SnrLYxYxKXUZcth7m
	ezbYGEmSGmm4rbyxnkfc7BiU7sF3pnOPrMZw/da4ft1JROzUL5+b3LZ5fMJgGDR19N6adVIfpSJWL
	x7nIXitg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21P-000000055rs-118O
	for barebox@lists.infradead.org;
	Wed, 29 Apr 2026 10:20:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-000578-He; Wed, 29 Apr 2026 12:19:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-007psG-0k;
	Wed, 29 Apr 2026 12:19:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-00000000qpg-0cOx;
	Wed, 29 Apr 2026 12:19:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Apr 2026 12:19:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260429-rkimage-resign-v1-1-1478086c369e@pengutronix.de>
References: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
In-Reply-To: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777457996; l=2619;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=XsTrMBT6PplNYdcfMLUFO7KAonf2CW+V3Qv/+ne80DM=;
 b=G9jn3kJjNFR7FfjhsKbKZbstu9BtoAq7xUVg35plwAD60eaVYkd1iU1SbQeIut5uaeC/k6iXy
 wmZd9pl5LHeA5q6MnL/VC6hOznVD4WIBanrkzMd5jxf0Ao0rbrMiTLh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_111959_441515_CFAA3BE9 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] rkimage: Support openssl provider API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

openssl engine support has long been deprecated. Add provider support.
engine support is still needed in some cases, so first try provider
support and fall back to engine support if necessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rkimage.c | 40 ++++++++++++++++++++++++++++++++++------
 1 file changed, 34 insertions(+), 6 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index e5b6d61c4a..04d98daa6d 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -13,15 +13,13 @@
 #include <stdbool.h>
 
 #include <openssl/bn.h>
-/*
- * TODO Switch from the OpenSSL ENGINE API to the PKCS#11 provider and the
- * PROVIDER API: https://github.com/latchset/pkcs11-provider
- */
+#include <openssl/err.h>
 #pragma GCC diagnostic ignored "-Wdeprecated-declarations"
 #include <openssl/engine.h>
 #include <openssl/evp.h>
 #include <openssl/pem.h>
 #include <openssl/rsa.h>
+#include <openssl/store.h>
 
 #include "common.h"
 #include "common.c"
@@ -63,12 +61,42 @@ static void idb_hash(struct newidb *idb)
 		sha512(idbu8, size, idbu8 + size);
 }
 
-static __attribute__((unused)) EVP_PKEY *load_key_pkcs11(const char *path)
+static __attribute__((unused)) EVP_PKEY *load_key_pkcs11(const char *uri)
 {
+	OSSL_STORE_CTX *ctx;
+	OSSL_STORE_INFO *info;
 	const char *engine_id = "pkcs11";
 	ENGINE *e;
 	EVP_PKEY *pkey = NULL;
 
+	/* Try provider-based store first (requires pkcs11-provider) */
+	ctx = OSSL_STORE_open(uri, NULL, NULL, NULL, NULL);
+	if (ctx) {
+		while (!OSSL_STORE_eof(ctx)) {
+			info = OSSL_STORE_load(ctx);
+			if (!info)
+				break;
+			if (OSSL_STORE_INFO_get_type(info) ==
+			    OSSL_STORE_INFO_PKEY) {
+				pkey = OSSL_STORE_INFO_get1_PKEY(info);
+				OSSL_STORE_INFO_free(info);
+				break;
+			}
+			OSSL_STORE_INFO_free(info);
+		}
+		OSSL_STORE_close(ctx);
+		if (pkey)
+			return pkey;
+	}
+
+	/*
+	 * Fall back to legacy ENGINE API (requires libp11 pkcs11 engine).
+	 * The provider-based approach above requires pkcs11-provider, which is
+	 * not yet available in ptxdist environments. The deprecated ENGINE API
+	 * via libp11 remains functional there and is used as a fallback.
+	 */
+	ERR_clear_error();
+
 	ENGINE_load_builtin_engines();
 
 	e = ENGINE_by_id(engine_id);
@@ -81,7 +109,7 @@ static __attribute__((unused)) EVP_PKEY *load_key_pkcs11(const char *path)
 		goto err_engine_init;
 	}
 
-	pkey = ENGINE_load_private_key(e, path, NULL, NULL);
+	pkey = ENGINE_load_private_key(e, uri, NULL, NULL);
 
 	ENGINE_finish(e);
 err_engine_init:

-- 
2.47.3



