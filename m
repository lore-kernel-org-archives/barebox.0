Delivery-date: Tue, 20 Apr 2021 10:06:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP7-0008GA-I9
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:06:41 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP6-0004IJ-Cb
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:06:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TvRPSTBXvwQ9mK71AP080B1dG+TAVcly1X66mBsie1g=; b=iIXsywkmcUE9P9uxJ9bclYoMY
	olLmiEXTkmXV+gufRh4a/eIpplDH5oCjojE9X8AfcyNyxVsTHegNAk77RgdH5AdIclgo1yj8LJvut
	u/GEtHSS2a01P+z3SdtYpXG97T7X47Qkdfey9/eGvM7QLYshGye9bFM1FzTcybfjC6ZaLNaQkY4A1
	SBcgA2vxjy92VYXxDpkN/RxcfgMq7mOs6KK7N8EhV49Yldr2rBUk5zMKI9ue3FYnZfk5ssz2eBzEC
	QKEKsl4ZLFEBU610PMCNmyvyyPli+wzbzq66aadWfWsv+WHQwJHbhOUjKZZZxWe1JVHJgtu9z/MtE
	cf8TjZ4vA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlNv-00BWwX-De; Tue, 20 Apr 2021 08:05:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNi-00BWuK-9j
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=4QxVXEx3KDROWyjOtvSgUwGA7UhMyLAyGTv6AU5KjD4=; b=gx1CCezbzdjmPfIOdVjxLq/hOn
 jV9oja0mxT9EjlQnP/FD+sfJIHCBhtrxP34MuwQQbxLgcsK/7+rdQaHL4G6iWNlsH6bb4sdEcqdJB
 smQdZyt9sCIM3olhT8mS4NrFpQNYE+Ikuna27cKMEWJEMrrChaXyhktEAYCDUTyYyXCqXILethd+0
 3jNBKdyIrzP81pjurQ9G/Nr4kHjKc1cZp/gBrbajlM35VP1N6RsSs35YsMJ7p4g5uYeQY4dWmNGAe
 3z5CyQ1UM4zNGyyHTZ1ffUb5VaJEau2iCKODsc8zj/u/Q0PGwkZl/nxKtrVuupwhe8DTOofqkXeC2
 Fd/C/fQw==;
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNe-00BtzI-D3
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:13 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 35D79116A75; Tue, 20 Apr 2021 09:57:26 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 31743116A61;
 Tue, 20 Apr 2021 09:57:18 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:56:59 +0200
Message-Id: <20210420075700.246124-6-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010510_608413_771CFB4E 
X-CRM114-Status: GOOD (  14.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 6/8] pbl: fdt: add support to parse reserved mem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This allows the PBL to fill a reserved memory map which a subsequent
commit will use modify the early MMU mapping.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 include/pbl.h | 15 ++++++++++
 pbl/fdt.c     | 80 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 95 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index 194d5e7508..df0f41ac5b 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -34,4 +34,19 @@ ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t
 
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
 
+struct pbl_reserved_memory {
+	phys_addr_t			base;
+	phys_addr_t			size;
+	unsigned int			flag;
+};
+
+#define MAX_RESERVED_REGIONS	8
+
+#define FDT_RES_MEM_FLAG_NOMAP		BIT(0)
+
+void fdt_fill_reserve_mem(const void *fdt);
+
+struct pbl_reserved_memory* get_pbl_reserved_memory(void);
+int get_pbl_reserved_memory_num(void);
+
 #endif /* __PBL_H__ */
diff --git a/pbl/fdt.c b/pbl/fdt.c
index b4a40a514b..f8e301843f 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -68,3 +68,83 @@ err:
 	pr_err("No memory, cannot continue\n");
 	while (1);
 }
+
+struct pbl_reserved_memory reserved_mem[MAX_RESERVED_REGIONS];
+int reserved_mem_count;
+
+void fdt_fill_reserve_mem(const void *fdt)
+{
+	const __be32 *nap, *nsp, *reg;
+	uint32_t na, ns;
+	int node, size, i, parent;
+	const void * prop;
+	uint64_t memsize64, membase64;
+	bool nomap;
+
+	/* Make sure FDT blob is sane */
+	if (fdt_check_header(fdt) != 0) {
+		pr_err("Invalid device tree blob\n");
+		return;
+	}
+
+	parent = fdt_path_offset(fdt, "/reserved-memory");
+	if (parent < 0) {
+		pr_info("Cannot find reserved-memory node\n");
+		return;
+	}
+
+	nap = fdt_getprop(fdt, parent, "#address-cells", &size);
+	if (!nap || (size != 4)) {
+		pr_err("Cannot find #address-cells property");
+		return;
+	}
+	na = fdt32_to_cpu(*nap);
+
+	nsp = fdt_getprop(fdt, parent, "#size-cells", &size);
+	if (!nsp || (size != 4)) {
+		pr_err("Cannot find #size-cells property");
+		return;
+	}
+	ns = fdt32_to_cpu(*nap);
+
+	fdt_for_each_subnode(node, fdt, parent) {
+		nomap = true;
+		reg = fdt_getprop(fdt, node, "reg", &size);
+		if (size < (na + ns) * sizeof(u32)) {
+			pr_err("cannot get memory range\n");
+			return;
+		}
+
+		membase64 = 0;
+		for (i = 0; i < na; i++)
+			membase64 = (membase64 << 32) | fdt32_to_cpu(*reg++);
+
+		/* get the memsize and truncate it to under 4G on 32 bit machines */
+		memsize64 = 0;
+		for (i = 0; i < ns; i++)
+			memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);
+
+		prop = fdt_getprop(fdt, node, "nomap", NULL);
+		if (!prop)
+			nomap = false;
+
+		reserved_mem[reserved_mem_count].base = membase64;
+		reserved_mem[reserved_mem_count].size = memsize64;
+		if (nomap)
+			reserved_mem[reserved_mem_count].flag |= FDT_RES_MEM_FLAG_NOMAP;
+		reserved_mem_count++;
+	}
+
+	if ((node < 0) && (node != -FDT_ERR_NOTFOUND)) {
+		pr_err("Error while parsing reserved-memory nodes: %d\n", node);
+		return;
+	}
+}
+
+struct pbl_reserved_memory* get_pbl_reserved_memory(void) {
+	return (struct pbl_reserved_memory*)&reserved_mem;
+}
+
+int get_pbl_reserved_memory_num(void) {
+	return reserved_mem_count;
+}
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

