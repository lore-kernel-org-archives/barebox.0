Delivery-date: Mon, 11 Aug 2025 14:31:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRg9-009Ksb-1D
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:31:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfl-0006ta-GD
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rAseFS5QWsDy4RD6W8NZ00gSoRblhmMwZLMjBeJJH4U=; b=cAYj1X+iYpAiTie0cuRIiaT+jI
	iesopLYZoYQWpPMh6JIiY2UpOh/3WzLfFOpUHRQxtQP7ZFQKpMkHToUwYlPw8YfpZPZMXbkiqq1YI
	0u+fVA5X9gJ5V5YqbMFyNoB9GKaKiNbZ8Q80FxOC6bm7t/ZdwwwtzUBYc2f+IwfbqdAXSwYBASypL
	z+ZF/bSFrIckptK77CG7jOw/dcYAF7V3zqLnRUek+tCkPmDmcLlRYanINy6mgPCAYQzCwhQcVEkeC
	8FBk8Gg+tYuz0oyFc+3sv9eQKRI89Z1gpH1CkgUXSKIl6h7VMcn9u5Qo0CSMlqqVZW46mCeNMXdij
	Gx16ZWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReK-00000007egr-0LvB;
	Mon, 11 Aug 2025 12:29:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdj-00000007dbq-0tSh
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdh-0004WP-Dy; Mon, 11 Aug 2025 14:28:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:09 +0200
Message-Id: <20250811122824.1667791-30-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052835_273245_FCB7EC9B 
X-CRM114-Status: GOOD (  12.79  )
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
Subject: [PATCH 29/44] security: blobgen: add easy way to check for existent providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

blobgen_get() expects the user to name the blobgen instance to be used.
For general informational purposes, it would be nice to just check if
any provider is registered at all, so make that possible by accepting a
NULL filter argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/blobgen.h  |  7 +++++++
 security/blobgen.c | 18 +++++++++++-------
 2 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/include/blobgen.h b/include/blobgen.h
index 9f8876cee045..00674ef40f73 100644
--- a/include/blobgen.h
+++ b/include/blobgen.h
@@ -44,7 +44,14 @@ struct blobgen {
 
 int blob_gen_register(struct device *dev, struct blobgen *bg);
 
+#ifdef CONFIG_BLOBGEN
 struct blobgen *blobgen_get(const char *name);
+#else
+static inline struct blobgen *blobgen_get(const char *name)
+{
+	return NULL;
+}
+#endif
 
 int blob_encrypt(struct blobgen *blg, const char *modifier, const void *plain,
 		 int plainsize, void **blob, int *blobsize);
diff --git a/security/blobgen.c b/security/blobgen.c
index 0a4e192a271f..df42c8f6f1bc 100644
--- a/security/blobgen.c
+++ b/security/blobgen.c
@@ -50,24 +50,28 @@ int blob_gen_register(struct device *dev, struct blobgen *bg)
 
 /**
  * blobgen_get - get a blob generator of given name
- * @name: The name of the blob generator to look for
+ * @name: The name of the blob generator to look for or NULL
  *
- * Finds a blob generator by name and returns it. Returns NULL if none is found.
+ * Finds a blob generator by name and returns it.
+ * If name is NULL, returns the first blob generator encountered.
+ * Returns NULL if none is found.
  */
 struct blobgen *blobgen_get(const char *name)
 {
-	struct device *dev;
+	struct device *dev = NULL;
 	struct blobgen *bg;
 
 	if (!name)
 		return bg_default;
 
-	dev = get_device_by_name(name);
-	if (!dev)
-		return NULL;
+	if (name) {
+		dev = get_device_by_name(name);
+		if (!dev)
+			return NULL;
+	}
 
 	list_for_each_entry(bg, &blobs, list) {
-		if (dev == &bg->dev)
+		if (!dev || dev == &bg->dev)
 			return bg;
 	}
 
-- 
2.39.5



