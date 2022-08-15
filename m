Delivery-date: Mon, 15 Aug 2022 17:40:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcCz-006bFF-Mr
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 17:40:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcCz-0000Gu-6m
	for lore@pengutronix.de; Mon, 15 Aug 2022 17:40:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vn9OODu1dF2/8paFMubLBBrLhB1G1Eol5yzZkbTQzQU=; b=3CEC0RtkmDd8UUXdJugoD3dRFK
	geHJkbtrR1lzIY0J+ukTNDoIQ+k4vzye75oNp2T1+FAHrC+9GAqm4BztbeQTDoteebMbc0LXPjBjz
	N80xkkMNrS/EdHftYTtc3tnGd/CrfcDLscwhvCwdgoJ5br1VLl0MaseDwQdl2DFqLfeA4qQwukqJj
	j3ZU2duBnxpfGKFTLv4AhUganRQKqJrqGzkRW/EHLRsDTzju4Rj3SHJo1KqTO+xQHvsovAHmOeSfT
	V8phT2mTAUquutbJqUZkugoU0f1tM7GWuJUMa/zS7bFkpxkoFZiFgFpLUNm+REXA0fAk+hTJKyEIA
	XSCzG1aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNcB0-000y6d-Pn; Mon, 15 Aug 2022 15:38:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc4l-000uHw-DK
	for barebox@bombadil.infradead.org; Mon, 15 Aug 2022 15:32:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vn9OODu1dF2/8paFMubLBBrLhB1G1Eol5yzZkbTQzQU=; b=Ow49paT43jaPS2pevxs+eApdO5
	M1viDToIIlPDXUYEF/ipTX11rBIf5WbJ3pAOT4axFkRlgcvPBdNfHx07dY00UvOM78uPDdE2q06Zy
	CxK97/AWX0A/X/IzqyhtxEo+dMuGbu0ZfM6xwyDt1LKIY5OuPSBL+dRXw0TLe98RWcTN+WPYAJ20z
	kwmDYXempDdNeHltCrSrA76pg7ssQbU5aEgavAePldhaaYjvbP0pDLmBqx+O9ev0h+aU6gRASsMXd
	5+v2SeLJBJDEfEOHAleGRwb71Fz+xu1suIDXQ9/1pEwA+r7oYuG1646i9tl1vAzkMVdNL4DNvd3X+
	01R7LXtQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc4g-002hO7-FX
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 15:32:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4c-0007B2-AE; Mon, 15 Aug 2022 17:32:14 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-003wmy-85; Mon, 15 Aug 2022 17:32:13 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-00AAGJ-Ft; Mon, 15 Aug 2022 17:32:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 17:32:04 +0200
Message-Id: <20220815153209.2422662-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_163218_718869_A6C87BEC 
X-CRM114-Status: GOOD (  14.77  )
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
Subject: [PATCH 05/10] of: reserved-mem: reserve regions prior to mmu_initcall()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that we both have a way to mark SDRAM regions requested as reserved
and an postmem_initcall() to do this add, change device tree memory
reservation parsing code to use them instead of requesting them as
normal memory at coredevice_initcall() level. This allows us to
reuse this information for MMU setup in the follow-up commit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c           | 15 +++------------
 drivers/of/reserved-mem.c | 34 +++++++++++++++++++++++-----------
 include/of.h              |  7 -------
 3 files changed, 26 insertions(+), 30 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 40c795d2cde1..7e24ecb2bd03 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -56,17 +56,6 @@ void mem_malloc_init(void *start, void *end)
 	mem_malloc_initialized = 1;
 }
 
-static int request_reservation(const struct resource *res)
-{
-	if (!(res->flags & IORESOURCE_EXCLUSIVE))
-		return 0;
-
-	pr_debug("region %s %pa-%pa\n", res->name, &res->start, &res->end);
-
-	request_sdram_region(res->name, res->start, resource_size(res));
-	return 0;
-}
-
 static int mem_malloc_resource(void)
 {
 #if !defined __SANDBOX__
@@ -96,7 +85,7 @@ static int mem_malloc_resource(void)
 	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
 #endif
 
-	return of_reserved_mem_walk(request_reservation);
+	return 0;
 }
 coredevice_initcall(mem_malloc_resource);
 
@@ -173,6 +162,8 @@ int barebox_add_memory_bank(const char *name, resource_size_t start,
 	if (IS_ERR(res))
 		return PTR_ERR(res);
 
+	res->flags = IORESOURCE_MEM;
+
 	bank = xzalloc(sizeof(*bank));
 
 	bank->res = res;
diff --git a/drivers/of/reserved-mem.c b/drivers/of/reserved-mem.c
index 34e61dfea343..f50a0bd8374d 100644
--- a/drivers/of/reserved-mem.c
+++ b/drivers/of/reserved-mem.c
@@ -4,16 +4,31 @@
 #include <stdio.h>
 #include <of.h>
 #include <of_address.h>
+#include <memory.h>
+#include <linux/ioport.h>
 
 #define MEMRESERVE_NCELLS	2
-#define MEMRESERVE_FLAGS	(IORESOURCE_MEM | IORESOURCE_EXCLUSIVE)
 
-int of_reserved_mem_walk(int (*handler)(const struct resource *res))
+static void request_region(struct resource *r)
+{
+	struct memory_bank *bank;
+
+	for_each_memory_bank(bank) {
+		if (!resource_contains(bank->res, r))
+			continue;
+
+		if (!reserve_sdram_region(r->name, r->start, resource_size(r)))
+			pr_warn("couldn't request reserved sdram region %pa-%pa\n",
+				&r->start, &r->end);
+		break;
+	}
+}
+
+static int of_reserved_mem_walk(void)
 {
 	struct device_node *node, *child;
 	int ncells = 0;
 	const __be32 *reg;
-	int ret;
 
 	node = of_find_node_by_path("/reserved-memory");
 	if (node) {
@@ -27,11 +42,9 @@ int of_reserved_mem_walk(int (*handler)(const struct resource *res))
 			of_address_to_resource(child, 0, &resource);
 
 			resource.name = child->name;
-			resource.flags = MEMRESERVE_FLAGS;
+			resource.flags = IORESOURCE_MEM;
 
-			ret = handler(&resource);
-			if (ret)
-				return ret;
+			request_region(&resource);
 		}
 	}
 
@@ -48,7 +61,7 @@ int of_reserved_mem_walk(int (*handler)(const struct resource *res))
 
 			snprintf(name, sizeof(name), "fdt-memreserve-%u", n++);
 			resource.name = name;
-			resource.flags = MEMRESERVE_FLAGS;
+			resource.flags = IORESOURCE_MEM;
 
 			resource.start = of_read_number(reg + i, MEMRESERVE_NCELLS);
 			i += MEMRESERVE_NCELLS;
@@ -61,11 +74,10 @@ int of_reserved_mem_walk(int (*handler)(const struct resource *res))
 
 			resource.end = resource.start + size - 1;
 
-			ret = handler(&resource);
-			if (ret)
-				return ret;
+			request_region(&resource);
 		}
 	}
 
 	return 0;
 }
+postmem_initcall(of_reserved_mem_walk);
diff --git a/include/of.h b/include/of.h
index 223c634bc88a..91c3766992aa 100644
--- a/include/of.h
+++ b/include/of.h
@@ -325,8 +325,6 @@ int of_autoenable_device_by_path(char *path);
 int of_autoenable_i2c_by_component(char *path);
 int of_prepend_machine_compatible(struct device_node *root, const char *compat);
 
-int of_reserved_mem_walk(int (*handler)(const struct resource *res));
-
 #else
 static inline struct of_reserve_map *of_get_reserve_map(void)
 {
@@ -868,11 +866,6 @@ static inline int of_prepend_machine_compatible(struct device_node *root,
 	return -ENODEV;
 }
 
-static inline int of_reserved_mem_walk(int (*handler)(const struct resource *res))
-{
-	return 0;
-}
-
 #endif
 
 #define for_each_property_of_node(dn, pp) \
-- 
2.30.2



