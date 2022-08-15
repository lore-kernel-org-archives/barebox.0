Delivery-date: Mon, 15 Aug 2022 13:49:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNYav-006Na9-8S
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 13:49:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNYav-0001eG-DH
	for lore@pengutronix.de; Mon, 15 Aug 2022 13:49:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lF5Gk3nuCTvcTsLOrgSXsGLOES0Zt0q4knm23J+4otk=; b=DegskaQ2dJ3epD6lSR3qrSzPSd
	RhQAbfTkvGPtsm7ioZsFLI3x1xf/6HC+d6deZSQ14S27VH4onrKn9qTx4rHc2xBZ2Q1hwmUHGAPCW
	cdz2NKB4D5+qntqTH6uyIl+FA/vCntIjYfpzZT76i34ThkRdc0afOfh4vsEQdigDdFRkd4zt62F6L
	InQw+kw5ko+k12Bs3WKQ0DF/xRbsJulK3Qfgedt8Ob1LWSodYRaeuEv9yqLNYtl+ebqOQgREQqDof
	Vyx/DeyaxXNkFA2DOEJkSXCHW5POTDhJ938cf4b1hbwGtwHR0f9NJEQc/mpzTBDT2VZueJesw6qqY
	d4jw7mPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNYZ5-00FcrJ-9A; Mon, 15 Aug 2022 11:47:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNYUf-00FZhe-W1
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 11:42:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYUb-0000eZ-1P; Mon, 15 Aug 2022 13:42:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYUY-003uOi-24; Mon, 15 Aug 2022 13:42:48 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYUZ-009Xxu-Il; Mon, 15 Aug 2022 13:42:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 13:42:45 +0200
Message-Id: <20220815114246.2275465-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_044254_105828_74154091 
X-CRM114-Status: GOOD (  13.14  )
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
Subject: [PATCH 1/2] of: add new of_fixup_reserved_memory() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We are opencoding the reserved memory fixup in fs/pstore/ram.c and the
sequence is generic enough that we could use it for other fixups as
well, e.g. rmem, barebox as secure monitor or OP-TEE which is not
configured to generate an overlay or fix up the device tree itself.

Add a helper that can be directly registered and reads all the necessary
information out of a struct resource.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/oftree.c | 41 +++++++++++++++++++++++++++++++++++++++++
 include/of.h    |  2 ++
 2 files changed, 43 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index 91b3fcc9fad6..e459f84601a3 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -271,6 +271,47 @@ static int of_register_bootargs_fixup(void)
 }
 late_initcall(of_register_bootargs_fixup);
 
+int of_fixup_reserved_memory(struct device_node *root, void *_res)
+{
+	struct resource *res = _res;
+	struct device_node *node, *child;
+	struct property *pp;
+	unsigned addr_n_cells = sizeof(void *) / sizeof(__be32),
+		 size_n_cells = sizeof(void *) / sizeof(__be32);
+	unsigned rangelen = 0;
+	__be32 reg[4];
+	int ret;
+
+	node = of_get_child_by_name(root, "reserved-memory") ?: of_new_node(root, "reserved-memory");
+
+	ret = of_property_read_u32(node, "#address-cells", &addr_n_cells);
+	if (ret)
+		of_property_write_u32(node, "#address-cells", addr_n_cells);
+
+	ret = of_property_read_u32(node, "#size-cells", &size_n_cells);
+	if (ret)
+		of_property_write_u32(node, "#size-cells", size_n_cells);
+
+	pp = of_find_property(node, "ranges", &rangelen) ?: of_new_property(node, "ranges", NULL, 0);
+	if (rangelen) {
+		pr_warn("reserved-memory ranges not 1:1 mapped. Aborting fixup\n");
+		return -EINVAL;
+	}
+
+	child = of_get_child_by_name(node, res->name) ?: of_new_node(node, res->name);
+
+	if (res->flags & IORESOURCE_BUSY)
+		of_property_write_bool(child, "no-map", true);
+
+	of_write_number(reg, res->start, addr_n_cells);
+	of_write_number(reg + addr_n_cells, resource_size(res), size_n_cells);
+
+	of_new_property(child, "reg", reg,
+			(addr_n_cells + size_n_cells) * sizeof(*reg));
+
+	return 0;
+}
+
 struct of_fixup_status_data {
 	const char *path;
 	bool status;
diff --git a/include/of.h b/include/of.h
index 9130a36d372d..223c634bc88a 100644
--- a/include/of.h
+++ b/include/of.h
@@ -113,6 +113,8 @@ int of_parse_dtb(struct fdt_header *fdt);
 struct device_node *of_unflatten_dtb(const void *fdt, int size);
 struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
 
+int of_fixup_reserved_memory(struct device_node *node, void *data);
+
 struct cdev;
 
 #ifdef CONFIG_OFTREE
-- 
2.30.2



