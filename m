Delivery-date: Tue, 02 May 2023 14:28:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptp7H-002HHQ-1Y
	for lore@lore.pengutronix.de; Tue, 02 May 2023 14:28:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptp7F-0004Ft-5b
	for lore@pengutronix.de; Tue, 02 May 2023 14:28:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zoSlgjzY0L0hVerVfrjR4IPYlQ7XcivtD/S+ihv9F80=; b=pTbDngLKmdK4lXu5MtEFtltzTP
	G9vQ4qB8QApLcXHxyJ36MI5c1B1VHEH0MuB+xGOasclvGHxArgjAY4cxLvuGL/HDHCT24sk5aJ6WT
	xBiOQcl/f40CEom+Lp7+6HHtiXiBOXTI3woCV8560pM49wOzeuLuLNl5/3lvO75+mfiYQbc9UwDi/
	k5tjstx6V8RW+X2MTov0/lvusxCWiGvG/O09eDdR27jCsq9jaBbMp9Rhct4UP8dh0gUPP7gqUv8bu
	pnXo6isfXsSFhpIi0MHENH14WDd0zxunSRddeHIt+Nuuu5sY6TNHe4YfTK1DiPjNihwQPo48QK1yZ
	wExg4fSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp68-001PEj-0b;
	Tue, 02 May 2023 12:27:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptp65-001PD8-1A
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 12:27:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptp63-00049s-FQ; Tue, 02 May 2023 14:27:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptp62-000afv-Qc; Tue, 02 May 2023 14:27:06 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptp62-008rdC-93; Tue, 02 May 2023 14:27:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 14:27:05 +0200
Message-Id: <20230502122705.2112637-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_052709_416255_E88FE417 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: rkimage: Use non-deprecated functions for sha256/512
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SHA256_Init() and SHA512_Init() are deprecated since OpensSSL 3.0. Use
EVP functions instead to calculate hashes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rkimage.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 6e68d508ac..551114ed82 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -9,7 +9,7 @@
 #include <stdint.h>
 #include <string.h>
 #include <time.h>
-#include <openssl/sha.h>
+#include <openssl/evp.h>
 #include <errno.h>
 #include <stdbool.h>
 
@@ -22,20 +22,24 @@
 
 static void sha256(const void *buf, int len, void *out)
 {
-	SHA256_CTX sha256;
+	EVP_MD_CTX *md_ctx;
 
-	SHA256_Init(&sha256);
-	SHA256_Update(&sha256, buf, len);
-	SHA256_Final(out, &sha256);
+	md_ctx = EVP_MD_CTX_new();
+	EVP_DigestInit(md_ctx, EVP_sha256());
+	EVP_DigestUpdate(md_ctx, buf, len);
+	EVP_DigestFinal(md_ctx, out, NULL);
+	EVP_MD_CTX_free(md_ctx);
 }
 
 static void sha512(const void *buf, int len, void *out)
 {
-	SHA512_CTX sha512;
+	EVP_MD_CTX *md_ctx;
 
-	SHA512_Init(&sha512);
-	SHA512_Update(&sha512, buf, len);
-	SHA512_Final(out, &sha512);
+	md_ctx = EVP_MD_CTX_new();
+	EVP_DigestInit(md_ctx, EVP_sha512());
+	EVP_DigestUpdate(md_ctx, buf, len);
+	EVP_DigestFinal(md_ctx, out, NULL);
+	EVP_MD_CTX_free(md_ctx);
 }
 
 typedef enum {
-- 
2.39.2



