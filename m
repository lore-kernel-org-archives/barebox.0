Delivery-date: Wed, 28 May 2025 16:20:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHe1-001DRh-1k
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHe0-0007n1-Ta
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TvLRtRlueVfseMoQ/C/EIliUTIYqEplVWL8aiiEkYg8=; b=HQY7EW46PidODUHkFtOxWQexKI
	RHWnpWnb8/MEvunyH6aV6L02kzCQirNUJrt4Qu7HuYVxDZl955Sk8a2C4J5OwlBl971SL+TKkLxfu
	FobA3AdnHXIYbBDLv8yS6mvjhH8sKBpXpoEfAjOPlIW8gQt6Vy2KtPGJf1fNMRuI1bzn9BFIPiXlp
	6GAj4FrpJu3rLFwqVZWMYrNUTpY6AhrUxL56vsXFPL0Dp+pCSr9RUfTuZhnplPd4JYrpXvX4xM3m4
	Q7fhW1zL/dNiUCRcd/hIrKxFjxune105oRtGOl9uNGsxgfM40krUWrB887VRxW2esPFL4ceGMi3hN
	pPwfUlOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdM-0000000DN8s-41py;
	Wed, 28 May 2025 14:19:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVL-0000000DKy9-2737
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:40 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVI-00011O-RK; Wed, 28 May 2025 16:11:36 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-rk3588-optee-v2-4-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071139_624310_C289F9A5 
X-CRM114-Status: GOOD (  10.41  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/9] PBL: fdt: refactor helper for reading nr of cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since libfdt now contains fdt_addresses, the fdt_find_mem function can
use the already existing helpers to read #size-cells and #address-cells.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
---
 pbl/fdt.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/pbl/fdt.c b/pbl/fdt.c
index 8e4d1295074a6b8dc4ad07ad2ada5882148c9ce6..3b1783152a8cb81f3eda1187b2f7bf998c4addf4 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -17,8 +17,8 @@ static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
 
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize)
 {
-	const __be32 *nap, *nsp, *reg;
-	uint32_t na, ns;
+	const __be32 *reg;
+	int na, ns;
 	uint64_t memsize64, membase64;
 	int node, size;
 
@@ -28,26 +28,23 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
 		goto err;
 	}
 
-	/* Find the #address-cells and #size-cells properties */
 	node = fdt_path_offset(fdt, "/");
 	if (node < 0) {
 		pr_err("Cannot find root node\n");
 		goto err;
 	}
 
-	nap = fdt_getprop(fdt, node, "#address-cells", &size);
-	if (!nap || (size != 4)) {
+	na = fdt_address_cells(fdt, node);
+	if (na < 0) {
 		pr_err("Cannot find #address-cells property");
 		goto err;
 	}
-	na = fdt32_to_cpu(*nap);
 
-	nsp = fdt_getprop(fdt, node, "#size-cells", &size);
-	if (!nsp || (size != 4)) {
+	ns = fdt_size_cells(fdt, node);
+	if (ns < 0) {
 		pr_err("Cannot find #size-cells property");
 		goto err;
 	}
-	ns = fdt32_to_cpu(*nsp);
 
 	/* Find the memory range */
 	node = fdt_node_offset_by_prop_value(fdt, -1, "device_type",

-- 
2.39.5



