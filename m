Delivery-date: Mon, 27 Jul 2026 15:01:19 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1woKxK-003R1M-2V
	for lore@lore.pengutronix.de;
	Mon, 27 Jul 2026 15:01:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D5B6E202241
	for <lore@pengutronix.de>; Mon, 27 Jul 2026 15:01:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4BpF6PMv;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qv7Q5LJ3gMDqldbmZt8zedgM3I/oYLcK8I/FdbNqPsg=; b=4BpF6PMvPtaaBV06UTF6/z41Jk
	oTMtDj/wVFpGNuXMLlsCypSwvwig43Hg/0riCc9YF+V/7dlIcsqPuNBdSJ4zIYb+b3DZxUeWDCoL0
	VmEX8VaenBBOOw3hxxesR8m+sWaTjxeBEI4IZXSYE17M+bRRpCwu22XGTPu5QS+0QavF6vRIUxlfe
	rlWJoJzhTzNmm80U82yq32BXxMNFOnq7vb3hM3AVBcTrPLG66KuhM3/PsvhaAt0LyrAT+IlFVSE2E
	ZcZzoUtoqWSGVDsRm+sdWbwRFkEdEKymNUykNBjYNL4kqXcZHq520t0tWQ2fvqOgPQDSBh3nqd+Jr
	j6Iz/yNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woKvz-00000002lUq-47bA;
	Mon, 27 Jul 2026 12:59:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woKvw-00000002lS0-1WCM
	for barebox@lists.infradead.org;
	Mon, 27 Jul 2026 12:59:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9525E202228;
	Mon, 27 Jul 2026 14:59:48 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1woKvs-001XuZ-1Z;
	Mon, 27 Jul 2026 14:59:48 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1woKvs-00000001ECO-1kyI;
	Mon, 27 Jul 2026 14:59:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Jul 2026 14:59:45 +0200
Subject: [PATCH v2 2/2] ARM: pbl: add PBL support for crypto extensions
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260727-pbl-sha256-v2-2-5f5a16d614ca@pengutronix.de>
References: <20260727-pbl-sha256-v2-0-5f5a16d614ca@pengutronix.de>
In-Reply-To: <20260727-pbl-sha256-v2-0-5f5a16d614ca@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785157188; l=4890;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=F6ehQ+hxnmqCmgmUPiUDpoiOhQchbeZ4a2hN+ADYWJU=;
 b=G9++259ME45NoT+tX2f3zROMQEfvmgTjqJKF4ISPNQBn+7bktncZHeTwpTssHR9+GvqAHekm7
 ejXoqWE1XVLAeTDJhdB1jbvU90w5dgSB2HhbQwC2rsWsLQsZNb15NAN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_055952_564883_813ADE5F 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hashing large blobs in the PBL with the generic C SHA-256
   transform is slow; ARMv8 provides optional Crypto Extensions (sha256h/sha256h2/sha256su0/
    sha256su1) that do the transform roughly 100x faster [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:0:c01:1d::a2:received];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: D5B6E202241
X-Rspamd-Server: mx1
X-Stat-Signature: 84q5ck8k1m9ym8uezkuftbowo4ejc7tr

Hashing large blobs in the PBL with the generic C SHA-256 transform is slow;
ARMv8 provides optional Crypto Extensions (sha256h/sha256h2/sha256su0/
sha256su1) that do the transform roughly 100x faster, and barebox proper
already uses them via arch/arm/crypto/sha2-ce-glue.c.

Reuse that driver in the PBL. Build sha2-ce-glue.c and the shared
sha2-ce-core.S transform for the PBL as well (obj-pbl-) and have the glue
additionally provide pbl_sha256_ce(), a one-shot hash that drives the asm
core directly without the digest API or NEON save/restore, neither of which
exist in the PBL. Like the digest registration it gates on
ID_AA64ISAR0_EL1.SHA2 and returns -EOPNOTSUPP when the extensions are
absent, so pbl_sha256() transparently falls back to the generic C transform.

Assisted-by: Claude Opus 4.8
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/crypto/Makefile       |  3 +--
 arch/arm/crypto/sha2-ce-glue.c | 44 ++++++++++++++++++++++++++++++++++++++++++
 include/crypto/pbl-sha.h       | 10 ++++++++++
 pbl/sha256.c                   |  3 +++
 4 files changed, 58 insertions(+), 2 deletions(-)

diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index 55b3ac0538..976c175b71 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -12,8 +12,7 @@ sha256-arm-y	:= sha256-core.o sha256_glue.o
 obj-$(CONFIG_DIGEST_SHA1_ARM64_CE) += sha1-ce.o
 sha1-ce-y := sha1-ce-glue.o sha1-ce-core.o
 
-obj-$(CONFIG_DIGEST_SHA256_ARM64_CE) += sha2-ce.o
-sha2-ce-y := sha2-ce-glue.o sha2-ce-core.o
+obj-pbl-$(CONFIG_DIGEST_SHA256_ARM64_CE) += sha2-ce-glue.o sha2-ce-core.o
 
 quiet_cmd_perl = PERL    $@
       cmd_perl = $(PERL) $(<) > $(@)
diff --git a/arch/arm/crypto/sha2-ce-glue.c b/arch/arm/crypto/sha2-ce-glue.c
index 8479b3c60c..4ccf1b86cb 100644
--- a/arch/arm/crypto/sha2-ce-glue.c
+++ b/arch/arm/crypto/sha2-ce-glue.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <crypto/sha.h>
 #include <crypto/sha256_base.h>
+#include <crypto/pbl-sha.h>
 #include <crypto/internal.h>
 #include <linux/linkage.h>
 #include <asm/byteorder.h>
@@ -33,6 +34,49 @@ extern const u32 sha256_ce_offsetof_finalize;
 asmlinkage int sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
 				 int blocks);
 
+/*
+ * In the PBL there is no digest API and no NEON save/restore; expose a
+ * one-shot pbl_sha256_ce() that pbl_sha256() calls in preference to the
+ * generic C transform.
+ */
+static void pbl_sha2_ce_transform(struct sha256_state *sst, u8 const *src,
+				  int blocks)
+{
+	struct sha256_ce_state *s =
+		container_of(sst, struct sha256_ce_state, sst);
+
+	/* finalize == 0: C does the padding via sha256_base_do_finalize(). */
+	s->finalize = 0;
+	while (blocks) {
+		int rem = sha2_ce_transform(s, src, blocks);
+
+		src += (blocks - rem) * SHA256_BLOCK_SIZE;
+		blocks = rem;
+	}
+}
+
+int pbl_sha256_ce(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])
+{
+	struct sha256_ce_state s;
+	struct digest d = { .ctx = &s, .length = SHA256_DIGEST_SIZE };
+
+	/*
+	 * The Crypto Extensions are optional on ARMv8 and sha256h & co. trap
+	 * as undefined without them, so gate on ID_AA64ISAR0_EL1.SHA2 like the
+	 * digest registration below does and let the caller fall back to
+	 * generic C.
+	 */
+	if (!(read_sysreg(ID_AA64ISAR0_EL1) & ID_AA64ISAR0_EL1_SHA2_MASK))
+		return -EOPNOTSUPP;
+
+	sha256_base_init(&d);
+	sha256_base_do_update(&d, buf, len, pbl_sha2_ce_transform);
+	sha256_base_do_finalize(&d, pbl_sha2_ce_transform);
+	sha256_base_finish(&d, out);
+
+	return 0;
+}
+
 static void __sha2_ce_transform(struct sha256_state *sst, u8 const *src,
 				int blocks)
 {
diff --git a/include/crypto/pbl-sha.h b/include/crypto/pbl-sha.h
index 2508448ab4..3ccd5151e1 100644
--- a/include/crypto/pbl-sha.h
+++ b/include/crypto/pbl-sha.h
@@ -14,4 +14,14 @@ int sha256_final(struct digest *desc, u8 *out);
 /* One-shot SHA-256 that picks the best transform available in the PBL. */
 void pbl_sha256(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE]);
 
+#ifdef CONFIG_DIGEST_SHA256_ARM64_CE
+/* ARMv8 Crypto Extensions transform; returns -EOPNOTSUPP if unavailable. */
+int pbl_sha256_ce(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE]);
+#else
+static inline int pbl_sha256_ce(const void *buf, size_t len, u8 out[SHA256_DIGEST_SIZE])
+{
+	return -EOPNOTSUPP;
+}
+#endif
+
 #endif /* __PBL-SHA_H_ */
diff --git a/pbl/sha256.c b/pbl/sha256.c
index 853d6bcbf6..04cc64a77d 100644
--- a/pbl/sha256.c
+++ b/pbl/sha256.c
@@ -21,5 +21,8 @@ static void pbl_sha256_generic(const void *buf, size_t len, u8 *out)
 
 void pbl_sha256(const void *buf, size_t len, u8 out[static SHA256_DIGEST_SIZE])
 {
+	if (!pbl_sha256_ce(buf, len, out))
+		return;
+
 	pbl_sha256_generic(buf, len, out);
 }

-- 
2.47.3



