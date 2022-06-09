Delivery-date: Thu, 09 Jun 2022 07:45:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAz5-008RWA-7H
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 07:45:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzAz3-0006Si-NT
	for lore@pengutronix.de; Thu, 09 Jun 2022 07:45:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43kxb/EbWKfIyNc//UBstFWQ+9avWkfmwvv2g8xK3y0=; b=IoA2fffQNfz4cK
	/td9sY97euI0c6MSaOfd7qTKuSvxPITYTxFNrGpIkt7YI1KHnE5m1VcdlR601rp9xeNfroG1ya6m7
	ghdak7lD1tlw98i57E1zcG1/iHEftm4bfsOyMKKgchW8r4mXlf/8v7x7WeiB00GSehESgMzBOnsFq
	qrKWDNhWMrsHkjKOYTt25O1lu6NTpsCFAT1YLGNIp6OoJbthOGvplhBDJ4Yot5/0jxXI84uEtdoIA
	2+QmJB4hNhdHbaIe1CfpJZp9BXdC3cOgnlu2o0kePj91iDHCGtmQZQquVRKt4lmJjZnSewSmwrE2U
	CBRe2dMdpf7jjBGH+kiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxc-00GrXx-8K; Thu, 09 Jun 2022 05:44:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzAxR-00GrVU-DC
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 05:43:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxN-0006AF-Ua; Thu, 09 Jun 2022 07:43:45 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxO-007K7D-Iw; Thu, 09 Jun 2022 07:43:45 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzAxL-002nNk-W9; Thu, 09 Jun 2022 07:43:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  9 Jun 2022 07:43:42 +0200
Message-Id: <20220609054342.661505-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609054342.661505-1-a.fatoum@pengutronix.de>
References: <20220609054342.661505-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_224349_601172_63D39C7C 
X-CRM114-Status: GOOD (  17.78  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] of: request reserved memory regions so other code can't
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add a reserved_mem_read initcall which parses the reserved-memory
entries and adds barebox of reserve entries. This avoids e.g. bootm
trying to place the kernel into a reserved region.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Compared with Rouven's v2, rename OF_RESERVE_ENTRY_FLAG_NO_RESERVE
to NO_FIXUP and read both /reserved-memory and /memreserve
to request memory regions.
---
 common/memory.c     | 21 +++++++++++++++++++--
 drivers/of/Makefile |  1 +
 drivers/of/fdt.c    | 12 ++++++++----
 include/of.h        |  2 ++
 4 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 95995bb6e310..b40c74bfe97f 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -12,6 +12,7 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 #include <malloc.h>
+#include <of.h>
 
 /*
  * Begin and End of memory area for malloc(), and current "brk"
@@ -53,9 +54,12 @@ void mem_malloc_init(void *start, void *end)
 	mem_malloc_initialized = 1;
 }
 
-#if !defined __SANDBOX__
 static int mem_malloc_resource(void)
 {
+	struct of_reserve_map *map;
+	int i;
+
+#if !defined __SANDBOX__
 	/*
 	 * Normally it's a bug when one of these fails,
 	 * but we have some setups where some of these
@@ -80,10 +84,23 @@ static int mem_malloc_resource(void)
 #ifdef STACK_BASE
 	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
 #endif
+#endif
+
+	map = of_get_reserve_map();
+	if (!map)
+		return 0;
+
+	for (i = 0; i < map->num_entries; i++) {
+		const char *name;
+
+		name = map->runtime_fw & BIT(i) ? "protected code" : "protected data";
+		request_sdram_region(name, map->start[i],
+				     map->end[i] - map->start[i] + 1);
+	}
+
 	return 0;
 }
 coredevice_initcall(mem_malloc_resource);
-#endif
 
 static void *sbrk_no_zero(ptrdiff_t increment)
 {
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index ca8da71cb4f0..99b610cba85e 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_OF_GPIO) += of_gpio.o
 obj-$(CONFIG_OF_PCI) += of_pci.o
 obj-y += partition.o
 obj-y += of_net.o
+obj-$(CONFIG_OFDEVICE) += reserved-mem.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
 obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o of_firmware.o
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 4a4eeba24bc3..ee875f5787b1 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -551,6 +551,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 	if (flags & OF_RESERVE_ENTRY_FLAG_RUNTIME_FW)
 		of_reserve_map.runtime_fw |= BIT(e);
 
+	if (flags & OF_RESERVE_ENTRY_FLAG_NO_FIXUP)
+		of_reserve_map.no_fixup |= BIT(e);
+
 	return 0;
 }
 
@@ -592,11 +595,12 @@ void fdt_add_reserve_map(void *__fdt)
 
 	fdt_res += n;
 
-	for (i = 0; i < res->num_entries; i++) {
+	for (i = 0; i < res->num_entries; i++, fdt_res++) {
+		if (BIT(i) & res->no_fixup)
+			continue;
+
 		of_write_number(&fdt_res->address, res->start[i], 2);
-		of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1,
-				2);
-		fdt_res++;
+		of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1, 2);
 	}
 
 	of_write_number(&fdt_res->address, (unsigned long)__fdt, 2);
diff --git a/include/of.h b/include/of.h
index d55016f1e372..c2a0cdae8dc2 100644
--- a/include/of.h
+++ b/include/of.h
@@ -56,9 +56,11 @@ struct of_reserve_map {
 	uint64_t end[OF_MAX_RESERVE_MAP];
 	int num_entries;
 	u16 runtime_fw : OF_MAX_RESERVE_MAP;
+	u16 no_fixup : OF_MAX_RESERVE_MAP;
 };
 
 #define OF_RESERVE_ENTRY_FLAG_RUNTIME_FW	BIT(0)
+#define OF_RESERVE_ENTRY_FLAG_NO_FIXUP		BIT(1)
 
 int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 		 int flags);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

