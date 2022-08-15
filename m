Delivery-date: Mon, 15 Aug 2022 15:12:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZsz-006SbE-9m
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 15:12:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNZsz-0004a6-DN
	for lore@pengutronix.de; Mon, 15 Aug 2022 15:12:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2hyH4gY5zsxai7s+X7z96RaEWGTw4fneNJ3LekJqbww=; b=AqQ8Jj7UhYsN+m2NNOseuhqO6X
	mUCZlt4+hkHqgqs33+NWj6WUzW+/STKkowOtaF1ONdG7JzOjib/CPomoFDRbvz82IsaJNUBhW4b0i
	HM3X2mYDJVHHaxUIi/zlGQNn1RaUdnM7zQEMZrr4brn7BdKyd4/1l1gG/ejhOsQb30EaGdj0Llbvb
	Al+A8x5v+1xwlCCbmd9r2pau9Fym6JP0z+wq85mFVD+le8UqViLDhmdLFieyQ3UK/3KXubZo6PrnG
	pUnLAcSA1oE/ZUkz2MghwhY4LmI7lbWxaBVZ5B84qOZOCMtE+NbpWrGC1lH0v7oYottOvM0KPzNE9
	M/8w5miA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZrK-00GZvl-Ta; Mon, 15 Aug 2022 13:10:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNZqx-00GZeI-O0
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 13:10:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZqw-0003x9-A6; Mon, 15 Aug 2022 15:09:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZqt-003viY-Aj; Mon, 15 Aug 2022 15:09:57 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNZqu-009mr3-Pu; Mon, 15 Aug 2022 15:09:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 15:09:54 +0200
Message-Id: <20220815130955.2332697-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815130955.2332697-1-a.fatoum@pengutronix.de>
References: <20220815130955.2332697-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_061000_850232_461C3AEA 
X-CRM114-Status: GOOD (  13.48  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] pbl: export pbl_barebox_verify
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



