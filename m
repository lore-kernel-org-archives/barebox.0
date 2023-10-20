Delivery-date: Fri, 20 Oct 2023 09:24:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjs1-00FGhq-JB
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:24:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjs0-0007t5-2y
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:24:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/C/Ku8OXVoXuGlda4oFqrmNjY4YhLBQmrrjDvwdr+Cg=; b=GIj08puBSLDOiDG9vw8jzRZtWf
	YLskHedq1xxlfWB8/mnYUVWph9XscVfuDD73UGy3msQJU+cfqrL8//cEcb0bNNyMSgaweqZf2aJR6
	9Kf8qkuwC7GQ0VAOHHMvA66fGPU0ALLHUVM7ga5uGlWrzotC/Qaqc4oE/dvg3BEJCiTF8VYFEb2Vr
	6TamE8Rs8PnrznM/Mpel5Fqba3PYJTldJwweJHFna6sp4pOvQ2ER9qMk3MUFv4mKc4gmknD0KDfn3
	Yn5pDu0dsz5ict/U0DU++gM5QyzLCH9Jt78iAtoRZsaoEg8+Ucs3gI2X0daRO0tSotWRoCLs4AgDT
	5Uq0XRig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjr1-001Qqu-2N;
	Fri, 20 Oct 2023 07:23:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjqy-001QpS-2Y
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:23:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-0007c0-Lt; Fri, 20 Oct 2023 09:23:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-002yMl-8b; Fri, 20 Oct 2023 09:23:19 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjqp-00BsRI-0h;
	Fri, 20 Oct 2023 09:23:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:23:16 +0200
Message-Id: <20231020072316.2830850-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020072316.2830850-1-a.fatoum@pengutronix.de>
References: <20231020072316.2830850-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_002328_830691_635A700C 
X-CRM114-Status: GOOD (  15.13  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] of: fdt: fix possibles overflows during parsing of invalid DTs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox may end up doing out of bound accesses if certain offsets in
parsed device trees exceed the total size of the flattened device tree
being parsed. Add some checks to early abort the parsing of such
invalid device trees.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 48 ++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 40 insertions(+), 8 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9d72fafd3669..a4b42eec1c46 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -14,8 +14,23 @@
 #include <memory.h>
 #include <linux/sizes.h>
 #include <linux/ctype.h>
+#include <linux/overflow.h>
+#include <linux/string_helpers.h>
 #include <linux/err.h>
 
+static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
+				  unsigned elem_size, unsigned elem_align)
+{
+	if (!p || (const void *)fdt > p || !PTR_IS_ALIGNED(p, elem_align) ||
+	     p + elem_size > (const void *)fdt + be32_to_cpu(fdt->totalsize)) {
+		pr_err("unflatten: offset overflows or misaligns FDT\n");
+		return false;
+	}
+
+	return true;
+}
+#define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
+
 static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
 {
 	dt += size;
@@ -29,27 +44,38 @@ static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int
 
 static inline char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs)
 {
+	char *str;
+
 	if (ofs > f->size_dt_strings)
 		return NULL;
-	else
-		return strstart + ofs;
+
+	str = strstart + ofs;
+
+	return string_is_terminated(str, f->size_dt_strings - ofs) ? str : NULL;
 }
 
 static int of_reservemap_num_entries(const struct fdt_header *fdt)
 {
-	const struct fdt_reserve_entry *r;
+	/*
+	 * FDT may violate spec mandated 8-byte alignment if unflattening it out of
+	 * a FIT image property, so play it safe here.
+	 */
+	const struct fdt_reserve_entry_unaligned {
+		fdt64_t address;
+		fdt64_t size;
+	} __packed *r;
 	int n = 0;
 
 	r = (void *)fdt + be32_to_cpu(fdt->off_mem_rsvmap);
 
-	while (r->size) {
+	while (dt_ptr_ok(fdt, r) && r->size) {
 		n++;
 		r++;
 		if (n == OF_MAX_RESERVE_MAP)
 			return -EINVAL;
 	}
 
-	return n;
+	return r->size == 0 ? n : -ESPIPE;
 }
 
 /**
@@ -135,12 +161,12 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 	if (f.totalsize > size)
 		return ERR_PTR(-EINVAL);
 
-	if (f.off_dt_struct + f.size_dt_struct > f.totalsize) {
+	if (size_add(f.off_dt_struct, f.size_dt_struct) > f.totalsize) {
 		pr_err("unflatten: dt size exceeds total size\n");
 		return ERR_PTR(-ESPIPE);
 	}
 
-	if (f.off_dt_strings + f.size_dt_strings > f.totalsize) {
+	if (size_add(f.off_dt_strings, f.size_dt_strings) > f.totalsize) {
 		pr_err("unflatten: string size exceeds total size\n");
 		return ERR_PTR(-ESPIPE);
 	}
@@ -157,7 +183,13 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 		goto err;
 
 	while (1) {
-		tag = be32_to_cpu(*(uint32_t *)(infdt + dt_struct));
+		__be32 *tagp = (uint32_t *)(infdt + dt_struct);
+		if (!dt_ptr_ok(infdt, tagp)) {
+			ret = -ESPIPE;
+			goto err;
+		}
+
+		tag = be32_to_cpu(*tagp);
 
 		switch (tag) {
 		case FDT_BEGIN_NODE:
-- 
2.39.2



