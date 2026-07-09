Delivery-date: Thu, 09 Jul 2026 13:16:12 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whmjk-001tWQ-1m
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 13:16:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F194020276A
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 13:16:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qiPWWuAW;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LQKBEgqps7XEzI1aSLV5D1CBYwvaFLJbzAkjVzTCaM4=; b=qiPWWuAWBiYv5DW7NoFVCrGr7N
	H3cmK+n+msI/s9jivMpIAU9J57GFLdacAGMhbZMYDpIxBJJ4M74GenBjgu+jdZdJ3kfz5yYOsbGZQ
	O+czEnc2r+p1Pmo2XBMXjz/BgVo4O3/IULQQ9p7G2Avr1FZautOK1+1JaghEcB9r1iE4xxBeFSpjz
	MT7mGvBC0SQcVKPX6B+H8++jk/5NyW2h2MMJxXJSg77am9Zzg3RyWgfUgXw8Fz5hENU6I3/1v7xAv
	PCCOELW8Z/9ixKGAfxRwfv6fbjhBcIPGbKopCC0TcN76vg3a+iRSoeFfDpTbhpQjYXtEzZQTbNLx0
	Q64s4WHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whmiP-000000026SI-2gTU;
	Thu, 09 Jul 2026 11:14:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whmiL-000000026LW-2ZJq
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 11:14:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B7CF620277E;
	Thu, 09 Jul 2026 13:14:41 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1whmiH-000uLq-21;
	Thu, 09 Jul 2026 13:14:41 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1whmiH-00000006lOL-2CbN;
	Thu, 09 Jul 2026 13:14:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 09 Jul 2026 13:14:40 +0200
Subject: [PATCH 1/2] PBL: add pbl_sha256()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-pbl-sha256-v1-1-453800909579@pengutronix.de>
References: <20260709-pbl-sha256-v1-0-453800909579@pengutronix.de>
In-Reply-To: <20260709-pbl-sha256-v1-0-453800909579@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783595681; l=3459;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mI+eMYy80nzCdyZEnKXBhdWxGP5xSLzHUxHldlAxIvY=;
 b=j/u+1Bwj/f8mNdTMsJu1KoZ21jjXvWsXAeCXh0HohxtkOJlvCQtiJx8PGvwlEPnl0TdtGu3pQ
 D5hSJgZb0ebBNBdDH5w/4KA4fqMRASXi86NLkDBplCop+84NjOyRW4P
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_041446_639058_38C2F9D5 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The PBL open-codes SHA-256 as sha256_init()/sha256_update()/sha256_final()
    wherever it needs to hash a blob, which always uses the generic C transform.
    Add pbl_sha256(), a one-shot helper that hides t [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F194020276A
X-Stat-Signature: tp1ozmd6xf9ng4smogk38yjzfgqeieaf

The PBL open-codes SHA-256 as sha256_init()/sha256_update()/sha256_final()
wherever it needs to hash a blob, which always uses the generic C transform.
Add pbl_sha256(), a one-shot helper that hides this behind a single call and
is free to pick the best transform available in the PBL. For now it only
wraps the generic C implementation; an accelerated path is added on top in a
later commit.

Convert pbl_barebox_verify() in pbl/decomp.c to the new helper as the first
user.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/crypto/pbl-sha.h |  4 ++++
 pbl/Makefile             |  1 +
 pbl/decomp.c             |  6 +-----
 pbl/sha256.c             | 25 +++++++++++++++++++++++++
 4 files changed, 31 insertions(+), 5 deletions(-)

diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
index 7d323ab479..2508448ab4 100644
--- a/include/crypto/pbl-sha.h
+++ b/include/crypto/pbl-sha.h
@@ -3,6 +3,7 @@
 
 #define __PBL_SHA_H_
 
+#include <crypto/sha.h>
 #include <digest.h>
 #include <types.h>
 
@@ -10,4 +11,7 @@ int sha256_init(struct digest *desc);
 int sha256_update(struct digest *desc, const void *data, unsigned long len);
 int sha256_final(struct digest *desc, u8 *out);
 
+/* One-shot SHA-256 that picks the best transform available in the PBL. */
+void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE]);
+
 #endif /* __PBL-SHA_H_ */
diff --git a/pbl/Makefile b/pbl/Makefile
index 45cfbf5fba..4506f192fe 100644
--- a/pbl/Makefile
+++ b/pbl/Makefile
@@ -6,6 +6,7 @@
 pbl-y += misc.o
 pbl-y += string.o
 pbl-y += malloc.o
+pbl-y += sha256.o
 pbl-$(CONFIG_HAVE_IMAGE_COMPRESSION) += decomp.o
 pbl-$(CONFIG_LIBFDT) += fdt.o
 pbl-$(CONFIG_PBL_CONSOLE) += console.o
diff --git a/pbl/decomp.c b/pbl/decomp.c
index 1539a6b67e..2b3c35012f 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -58,8 +58,6 @@ extern unsigned char sha_sum_end[];
 int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 		       const void *hash, unsigned int hash_len)
 {
-	struct sha256_state sha_state = { 0 };
-	struct digest d = { .ctx = &sha_state };
 	char computed_hash[SHA256_DIGEST_SIZE];
 	int i;
 	const char *char_hash = hash;
@@ -67,9 +65,7 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 	if (hash_len != SHA256_DIGEST_SIZE)
 		return -1;
 
-	sha256_init(&d);
-	sha256_update(&d, compressed_start, len);
-	sha256_final(&d, computed_hash);
+	pbl_sha256(compressed_start, len, computed_hash);
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		puts_ll("CH ");
 
diff --git a/pbl/sha256.c b/pbl/sha256.c
new file mode 100644
index 0000000000..86e54f8a25
--- /dev/null
+++ b/pbl/sha256.c
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * pbl_sha256() - one-shot SHA-256 for the PBL, picking the best available
+ * transform (ARMv8 Crypto Extensions if present, else generic C).
+ */
+
+#include <common.h>
+#include <crypto/sha.h>
+#include <crypto/pbl-sha.h>
+#include <digest.h>
+
+static void pbl_sha256_generic(const void *buf, size_t len, u8 *out)
+{
+	struct sha256_state state = { };
+	struct digest d = { .ctx = &state, .length = SHA256_DIGEST_SIZE };
+
+	sha256_init(&d);
+	sha256_update(&d, buf, len);
+	sha256_final(&d, out);
+}
+
+void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])
+{
+	pbl_sha256_generic(buf, len, out);
+}

-- 
2.47.3



