Delivery-date: Tue, 11 Mar 2025 13:42:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw8-00Cg0c-2j
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:42:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tryw5-0006JO-Bg
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:42:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+O5RFY3QDr26ZsDiMHtrdpzDZJ5lZjbw8rkiJ95daw=; b=Evu9kfBXlgNLxXrkerPW7L6ccW
	2yfYB2BgzaFNxzpHsJjIQqfmfUj22ZGm9V8l9P27cCafQ5YAvsq+Df2S9nbADwOFuduz0GEW158nh
	V2nSCPrjfObLXxysUo84lW/GITnb/IGDtw/k7setIXhOYcxRb7hw7I/uWMvHXgkRGY08GMEMw0+Or
	gDZjEld7DfGP10/lEUeKGBQWHbb1m284UeUfFsecPCueoZZ0pDyPPmAV2mkDgzp2Ge2B478rVvwyW
	oUPVuGshUQFC/AXzMg7JhpIfbIvSNbYVH6Dx6SnQpNmdEgePp9KkB9iWMlKILt1cYKJt73aUmgKZj
	mF9RBR2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tryvV-00000005gtr-0elh;
	Tue, 11 Mar 2025 12:41:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tryfd-00000005d1h-0uhD
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:25:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfc-0003B7-0U; Tue, 11 Mar 2025 13:25:16 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-005B6R-1a;
	Tue, 11 Mar 2025 13:25:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1D;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-7-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=1782;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=shBVocneEfzLanSIYqo2ncRmL1j2Riui+hf7REy+Hsw=;
 b=ic/EZF64BmYfLXaw2oe9VjRmCUlEF27ooEkn6sff7MpeNGfFVcRytseS1Xl3QZ8avP3iyCJxa
 xnu+S7Hta6HC15g7p7oeBpx7NqlVmB6FfHzeVneLUFDCWqCj6XmFyQY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_052517_299683_4DB6E12D 
X-CRM114-Status: GOOD (  12.93  )
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
Subject: [PATCH v2 07/14] fip: add function to calculate a sha256 over FIP
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



