Delivery-date: Thu, 18 Aug 2022 07:06:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXk4-002c7m-MD
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:06:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXk2-00070M-4S
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:06:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gaJ4g/r7oMI+bkWkycKu37SJvN+HLlOM/pWWF1rWDus=; b=ZHbxVbE51y2nI7JamAHbRNqz8B
	qzh4JugEXwAXYRSQeBjh6/IwkkZc00YDzs2aoc2KQcaX3sdJHeVptzBWEMh6DrP663D15sgyUjkzF
	wyD9zoXKiCLVZbo8EB97/Z3mLWqsOps8r2/zpQ2cJxC1S3ahmPATTBjRbpNThcLLPg3+Dqfngzb0/
	lzRh7anEHd8f8E15V2cJhWJIW3hVljhQvRp1ObouB7n9eRuATZ44hl/Eby48ohcU1ox5ND/uHVUh1
	DaSpg3bX+Nybo68tVnSt8GlREgqnxjBacByytBEMDCiYUdZTYo3a6Aq780pp0i2QYSNykNVK85IJp
	WNteLpBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiN-00FLz5-4Z; Thu, 18 Aug 2022 05:05:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXiA-00FLn1-AD
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:05:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi5-0006TN-RN; Thu, 18 Aug 2022 07:04:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi5-000S1u-5b; Thu, 18 Aug 2022 07:04:49 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXi4-008hJB-2a; Thu, 18 Aug 2022 07:04:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:04:45 +0200
Message-Id: <20220818050447.2072932-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
References: <20220818050447.2072932-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_220454_430226_3BF21917 
X-CRM114-Status: GOOD (  14.08  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] pbl: export pbl_barebox_verify
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's no downside to always build the digest verification code in PBL
and export pbl_barebox_verify to access it. This allows board code to
use the function for verifying other firmware blobs and
CONFIG_PBL_VERIFY_PIGGY=y will remain to enable the verification at
barebox proper extraction time. Code not using it will have the function
sections garbage collected by the linker, so no functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 crypto/Makefile | 3 +--
 include/pbl.h   | 3 +++
 pbl/decomp.c    | 6 +++---
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 762d7e543be4..22035d4f69ee 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -10,8 +10,7 @@ obj-$(CONFIG_DIGEST_MD5_GENERIC)	+= md5.o
 obj-$(CONFIG_DIGEST_SHA1_GENERIC)	+= sha1.o
 obj-$(CONFIG_DIGEST_SHA224_GENERIC)	+= sha2.o
 obj-$(CONFIG_DIGEST_SHA256_GENERIC)	+= sha2.o
-pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= sha2.o
-pbl-$(CONFIG_PBL_VERIFY_PIGGY)		+= digest.o
+pbl-y					+= sha2.o digest.o
 obj-$(CONFIG_DIGEST_SHA384_GENERIC)	+= sha4.o
 obj-$(CONFIG_DIGEST_SHA512_GENERIC)	+= sha4.o
 obj-y	+= memneq.o
diff --git a/include/pbl.h b/include/pbl.h
index 0dc23c72dcf5..7dc4fa309257 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -30,4 +30,7 @@ const void *
 fdt_device_get_match_data(const void *fdt, const char *nodepath,
 			  const struct fdt_device_id ids[]);
 
+int pbl_barebox_verify(const void *compressed_start, unsigned int len,
+		       const void *hash, unsigned int hash_len);
+
 #endif /* __PBL_H__ */
diff --git a/pbl/decomp.c b/pbl/decomp.c
index 1e0ef81ada00..553895bac5e8 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -54,14 +54,14 @@ static void noinline errorfn(char *error)
 extern unsigned char sha_sum[];
 extern unsigned char sha_sum_end[];
 
-static int pbl_barebox_verify(void *compressed_start, unsigned int len, void *hash,
-			      unsigned int hash_len)
+int pbl_barebox_verify(const void *compressed_start, unsigned int len,
+		       const void *hash, unsigned int hash_len)
 {
 	struct sha256_state sha_state = { 0 };
 	struct digest d = { .ctx = &sha_state };
 	char computed_hash[SHA256_DIGEST_SIZE];
 	int i;
-	char *char_hash = hash;
+	const char *char_hash = hash;
 
 	if (hash_len != SHA256_DIGEST_SIZE)
 		return -1;
-- 
2.30.2



