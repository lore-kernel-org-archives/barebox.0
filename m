Delivery-date: Fri, 01 Mar 2024 14:36:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33o-0026WQ-07
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 14:36:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33n-0004hf-7O
	for lore@pengutronix.de; Fri, 01 Mar 2024 14:36:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+7R45dIc3SFrTXf10My3/dCmmLmsuPt2ht9L/MDT8TE=; b=jipaPRhJz0bQ+W77Gcc9y5SVXC
	4hF/Lz8r0dOCPlkdC3W9muinlvqurJJ6qpn5edX1xVzXvxo8kwb0MlW/WtIaqjPphjm8BNw4yfYRg
	utuQNZJ4ZLhf0Zrm4fKI7ZZa9sAVCVYgCP8uDkAs8aiJyMGykVq3JgoMn18cA+oFLFQcEFpFnQ8Hy
	L+qk5s5kF6e6hl9wfRsFJeJUleUFiVxA73H/iQ96yZPdTIB5IXOnLPBZbkW8POYcAcL1mWeonhdt9
	9ZWPLZWxcXPyZxONigqfNHag5mtkucoSB2Zr8bC4i3XWA0PgHRBEPF/D4+Zpr93HD/U5vFeytKLE4
	xWj7DG5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg33D-00000000VlD-26cN;
	Fri, 01 Mar 2024 13:35:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg2ZM-00000000Hs7-0r0V
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 13:04:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZD-0000Zm-18; Fri, 01 Mar 2024 14:04:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-003mfp-IS; Fri, 01 Mar 2024 14:04:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZB-000jfC-38;
	Fri, 01 Mar 2024 14:04:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Mar 2024 14:04:42 +0100
Message-Id: <20240301130445.171385-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240301130445.171385-1-a.fatoum@pengutronix.de>
References: <20240301130445.171385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_050456_270550_07C2CA65 
X-CRM114-Status: GOOD (  14.14  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/4] of: fdt: factor out FDT header parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Follow-up commit will need to parse the FDT header without unflattening
the whole device tree at the same time. Therefore split off the header
verification into its own separate function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 76 +++++++++++++++++++++++++++---------------------
 1 file changed, 43 insertions(+), 33 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index cf08fa1cfdfd..676b8a5535bf 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -43,9 +43,9 @@ static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int
 	return dt;
 }
 
-static inline char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs)
+static inline const char *dt_string(struct fdt_header *f, const char *strstart, uint32_t ofs)
 {
-	char *str;
+	const char *str;
 
 	if (ofs > f->size_dt_strings)
 		return NULL;
@@ -115,6 +115,44 @@ static int of_unflatten_reservemap(struct device_node *root,
 	return 0;
 }
 
+static int fdt_parse_header(const struct fdt_header *fdt, size_t fdt_size,
+			  struct fdt_header *out)
+{
+	if (fdt_size < sizeof(struct fdt_header))
+		return -EINVAL;
+
+	if (fdt->magic != cpu_to_fdt32(FDT_MAGIC)) {
+		pr_err("bad magic: 0x%08x\n", fdt32_to_cpu(fdt->magic));
+		return -EINVAL;
+	}
+
+	if (fdt->version != cpu_to_fdt32(17)) {
+		pr_err("bad dt version: 0x%08x\n", fdt32_to_cpu(fdt->version));
+		return -EINVAL;
+	}
+
+	out->totalsize = fdt32_to_cpu(fdt->totalsize);
+	out->off_dt_struct = fdt32_to_cpu(fdt->off_dt_struct);
+	out->size_dt_struct = fdt32_to_cpu(fdt->size_dt_struct);
+	out->off_dt_strings = fdt32_to_cpu(fdt->off_dt_strings);
+	out->size_dt_strings = fdt32_to_cpu(fdt->size_dt_strings);
+
+	if (out->totalsize > fdt_size)
+		return -EINVAL;
+
+	if (size_add(out->off_dt_struct, out->size_dt_struct) > out->totalsize) {
+		pr_err("unflatten: dt size exceeds total size\n");
+		return -ESPIPE;
+	}
+
+	if (size_add(out->off_dt_strings, out->size_dt_strings) > out->totalsize) {
+		pr_err("unflatten: string size exceeds total size\n");
+		return -ESPIPE;
+	}
+
+	return 0;
+}
+
 /**
  * of_unflatten_dtb - unflatten a dtb binary blob
  * @infdt - the fdt blob to unflatten
@@ -140,37 +178,9 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 	unsigned int maxlen;
 	const struct fdt_header *fdt = infdt;
 
-	if (size < sizeof(struct fdt_header))
-		return ERR_PTR(-EINVAL);
-
-	if (fdt->magic != cpu_to_fdt32(FDT_MAGIC)) {
-		pr_err("bad magic: 0x%08x\n", fdt32_to_cpu(fdt->magic));
-		return ERR_PTR(-EINVAL);
-	}
-
-	if (fdt->version != cpu_to_fdt32(17)) {
-		pr_err("bad dt version: 0x%08x\n", fdt32_to_cpu(fdt->version));
-		return ERR_PTR(-EINVAL);
-	}
-
-	f.totalsize = fdt32_to_cpu(fdt->totalsize);
-	f.off_dt_struct = fdt32_to_cpu(fdt->off_dt_struct);
-	f.size_dt_struct = fdt32_to_cpu(fdt->size_dt_struct);
-	f.off_dt_strings = fdt32_to_cpu(fdt->off_dt_strings);
-	f.size_dt_strings = fdt32_to_cpu(fdt->size_dt_strings);
-
-	if (f.totalsize > size)
-		return ERR_PTR(-EINVAL);
-
-	if (size_add(f.off_dt_struct, f.size_dt_struct) > f.totalsize) {
-		pr_err("unflatten: dt size exceeds total size\n");
-		return ERR_PTR(-ESPIPE);
-	}
-
-	if (size_add(f.off_dt_strings, f.size_dt_strings) > f.totalsize) {
-		pr_err("unflatten: string size exceeds total size\n");
-		return ERR_PTR(-ESPIPE);
-	}
+	ret = fdt_parse_header(infdt, size, &f);
+	if (ret < 0)
+		return ERR_PTR(ret);
 
 	dt_struct = f.off_dt_struct;
 	dt_strings = (void *)fdt + f.off_dt_strings;
-- 
2.39.2



