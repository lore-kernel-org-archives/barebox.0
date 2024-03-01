Delivery-date: Fri, 01 Mar 2024 14:36:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33k-0026Uk-1w
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 14:36:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33j-0004fX-Nu
	for lore@pengutronix.de; Fri, 01 Mar 2024 14:36:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GSakGmqpSyTzE+AeMeeLpseT+wxjAh6vsqqiqnVCs3k=; b=rBASlZwD+c76SgHpLMdj0P7pyP
	gX6VpddLAHGpVM6c8JhpOq2CuG7jI47+8L4BPHtYlrCPzJjOVl6g2KPmmzHh1sHTqCLyLNtP3OZ/6
	kgGt15y5m5vJ7n3yjliHn27Y/KKdvcooC8fVg1j4sA15y5RbpFImf9aL7QYWQySQF1Of+U6LuJ52q
	oLruCfMonilCx1PXO+quSJhDtCFB04ZxZoQG55ixFkEihnCju3nSSSXdifFoRFAeJrYQvrBwoJS5n
	tv9OpfefrvCIqHI4d9wYsb0esvCaZGqT6OEpffsFSxhoTO5fir3bKEar90sANINWf1BlJAkgIX1YQ
	0cYrBWIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg33A-00000000VjZ-0uw2;
	Fri, 01 Mar 2024 13:35:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg2ZE-00000000Hn8-32o0
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 13:04:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZD-0000Zn-19; Fri, 01 Mar 2024 14:04:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-003mfs-Jo; Fri, 01 Mar 2024 14:04:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-000jfC-03;
	Fri, 01 Mar 2024 14:04:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Mar 2024 14:04:43 +0100
Message-Id: <20240301130445.171385-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240301130445.171385-1-a.fatoum@pengutronix.de>
References: <20240301130445.171385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_050448_830974_6604566A 
X-CRM114-Status: GOOD (  16.36  )
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
Subject: [PATCH 2/4] of: fdt: implement fdt_machine_is_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When finding compatible bootloader spec files, barebox will unflatten
each DTB in turn, allocating objects for each property and node, only to
compare a single property and then free all the allocations again.

Given that this operation is repeated for every device tree until a
match is found, it's a good idea to be able to compare machine
(top-level) compatibles without having to unflatten the whole FDT.

Implemnt fdt_machine_is_compatible() that does just that. This
intentionally opencodes the device tree iteration as to minimize
code and runtime size. Using libfdt without LTO would be slower
and bigger.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 95 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h     |  3 ++
 2 files changed, 98 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 676b8a5535bf..aa3d2e967acd 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -668,3 +668,98 @@ void fdt_print_reserve_map(const void *__fdt)
 			return;
 	}
 }
+
+static int fdt_string_is_compatible(const char *haystack, int haystack_len,
+				    const char *needle, int needle_len)
+{
+	const char *p;
+	int index = 0;
+
+	while (haystack_len >= needle_len) {
+		if (memcmp(needle, haystack, needle_len + 1) == 0)
+			return OF_DEVICE_COMPATIBLE_MAX_SCORE - (index << 2);
+
+		p = memchr(haystack, '\0', haystack_len);
+		if (!p)
+			return 0;
+		haystack_len -= (p - haystack) + 1;
+		haystack = p + 1;
+		index++;
+	}
+
+	return 0;
+}
+
+bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat)
+{
+	uint32_t tag;
+	const struct fdt_property *fdt_prop;
+	const char *name;
+	uint32_t dt_struct;
+	const struct fdt_node_header *fnh;
+	const void *dt_strings;
+	struct fdt_header f;
+	int ret, len;
+	int expect = FDT_BEGIN_NODE;
+	int compat_len = strlen(compat);
+
+	ret = fdt_parse_header(fdt, fdt_size, &f);
+	if (ret < 0)
+		return ERR_PTR(ret);
+
+	dt_struct = f.off_dt_struct;
+	dt_strings = (const void *)fdt + f.off_dt_strings;
+
+	while (1) {
+		const __be32 *tagp = (const void *)fdt + dt_struct;
+		if (!dt_ptr_ok(fdt, tagp))
+			return false;
+
+		tag = be32_to_cpu(*tagp);
+		if (tag != FDT_NOP && tag != expect)
+			return false;
+
+		switch (tag) {
+		case FDT_BEGIN_NODE:
+			fnh = (const void *)fdt + dt_struct;
+
+			/* The root node must have an empty name */
+			if (fnh->name[0] != '\0')
+				return false;
+
+			dt_struct = dt_struct_advance(&f, dt_struct,
+					sizeof(struct fdt_node_header) + 1);
+
+			expect = FDT_PROP;
+			break;
+
+		case FDT_PROP:
+			fdt_prop = (const void *)fdt + dt_struct;
+			len = fdt32_to_cpu(fdt_prop->len);
+
+			name = dt_string(&f, dt_strings, fdt32_to_cpu(fdt_prop->nameoff));
+			if (!name)
+				return false;
+
+			if (strcmp(name, "compatible")) {
+				dt_struct = dt_struct_advance(&f, dt_struct,
+							      sizeof(struct fdt_property) + len);
+				break;
+			}
+
+			return fdt_string_is_compatible(fdt_prop->data, len, compat, compat_len);
+
+		case FDT_NOP:
+			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
+			break;
+
+		default:
+			return false;
+		}
+
+		if (!dt_struct)
+			return false;
+	}
+
+	return false;
+}
diff --git a/include/of.h b/include/of.h
index 3391403a347f..b00940c8532e 100644
--- a/include/of.h
+++ b/include/of.h
@@ -64,6 +64,9 @@ void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 void fdt_print_reserve_map(const void *fdt);
 
+bool fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, const char *compat);
+
+
 struct device;
 struct driver;
 struct resource;
-- 
2.39.2



