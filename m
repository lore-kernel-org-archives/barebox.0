Delivery-date: Fri, 28 Feb 2025 08:18:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnuds-007xpp-30
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:18:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnudq-0004Ev-3y
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:18:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+O5RFY3QDr26ZsDiMHtrdpzDZJ5lZjbw8rkiJ95daw=; b=cFDz8RPtR8EL7Hlvax2mpJ1Yyv
	m8nWgQa5TNj6zXGkkOR69qEtgjNQRtcaTGLET8JgXjKqtksP7bIDZdAMWLwtn+3ufEMm01ZatKCuk
	tQF5ZI5G61LJx9rbASIkyGkE600/3K6zuvGsQOJEpAzDy6bBmoXtIcjDBc4ll1SvgM/FlCeH8TdK6
	5VRFs7EAJGrZeedKUi/0S5pODcvqatO9hWxSCJBZTbZjXBh7ZrhI/rghOHgnAzOF4xpXN44TD4spR
	yFZKhNgwbRwe6lZqMqBzxMyluAmyRDJAFe9tnWNKgZyF71wfI3iChZNddylHesGOTwd+eREoyTj2/
	I5u6jcLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnudD-00000009xhp-1XET;
	Fri, 28 Feb 2025 07:17:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnuc9-00000009xZh-3Iz0
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:16:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-0003kF-Kn; Fri, 28 Feb 2025 08:16:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-003FtP-0i;
	Fri, 28 Feb 2025 08:16:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0N;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:16:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-7-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727010; l=1782;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=shBVocneEfzLanSIYqo2ncRmL1j2Riui+hf7REy+Hsw=;
 b=5RB1w8K5LB2LBCJcmFJ797DidbA5TehZlWVk2l2PgPhPshYQGyX6Z1ze1t8fMobrUHjp2Ew91
 t43c+GGAOvICSexXVtDWrxNEYv+58yp4uh0St4ndsaS27AmvdgUfR4y
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_231653_868168_8E470FEF 
X-CRM114-Status: GOOD (  13.12  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/13] fip: add function to calculate a sha256 over FIP
 image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds fip_sha256() to calculate a sha256 over a FIP image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/fiptool.h |  3 +++
 lib/fip.c         | 23 ++++++++++++++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/include/fiptool.h b/include/fiptool.h
index bb63a79c16..73b0fbe398 100644
--- a/include/fiptool.h
+++ b/include/fiptool.h
@@ -38,6 +38,7 @@ struct fip_state {
 	size_t nr_image_descs;
 	int verbose;
 	void *buffer;
+	size_t bufsize;
 	bool buf_no_free;
 };
 
@@ -100,4 +101,6 @@ extern toc_entry_t plat_def_toc_entries[];
 
 struct fip_state *fip_image_open(const char *filename, size_t offset);
 
+int fip_sha256(struct fip_state *fip, char *hash);
+
 #endif /* FIPTOOL_H */
diff --git a/lib/fip.c b/lib/fip.c
index 8086b43412..7a5e3dc844 100644
--- a/lib/fip.c
+++ b/lib/fip.c
@@ -24,6 +24,7 @@
 #include <libfile.h>
 #include <fs.h>
 #include <linux/kernel.h>
+#include <digest.h>
 
 #include <fip.h>
 #include <fiptool.h>
@@ -168,6 +169,7 @@ static int fip_do_parse_buf(struct fip_state *fip, void *buf, size_t size,
 	int terminated = 0;
 
 	fip->buffer = buf;
+	fip->bufsize = size;
 
 	bufend = fip->buffer + size;
 
@@ -570,10 +572,29 @@ struct fip_state *fip_image_open(const char *filename, size_t offset)
 	close(fd);
 
 	return fip_state;
-
 err:
 	close(fd);
 	fip_free(fip_state);
 
 	return ERR_PTR(ret);
 }
+
+int fip_sha256(struct fip_state *fip, char *hash)
+{
+	struct digest *d;
+	int ret;
+
+	d = digest_alloc_by_algo(HASH_ALGO_SHA256);
+	if (!d)
+		return -ENOSYS;
+
+	digest_init(d);
+
+	digest_update(d, fip->buffer, fip->bufsize);
+
+	ret = digest_final(d, hash);
+
+	digest_free(d);
+
+	return ret;
+}

-- 
2.39.5



