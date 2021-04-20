Delivery-date: Tue, 20 Apr 2021 10:06:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP3-0008Ej-QZ
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:06:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP2-0004Gi-V7
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:06:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6mrh7n+KasF+vC7xH9wJ9gi1vLRhQqpwe39vFez91u8=; b=epDU/Rd5skHioU2dq/3ovcewL
	BGbKzJ/njp3kNiOMviE5Q+U0eEnakloYGZUpCNPT2tM9YAStwHjxrvVhCLo9cEMbw0dUVKDwVquDb
	0rB/tvftrOdp2ZxFafpPwHJbHeHZened6z6O2dV7CqnnzxmEAfUWpo6Ro/JwnZipvPQgGu7ZjjtN2
	4/bG0wAQY1EtCiHEJrflhqRq8HxKX5LxrMmPXEmVv8otKiNKGxSD8/SO4+SrAxHzTfGh31BYhLAYV
	qWsOyg54hpSU+WvuWg4NfKojAgRvJz4QsmwoWAbMbzO5cXyhQoh/dsNyj/Z7jXHLucQzoTp2Y/yyv
	l+RiWaqWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlO6-00BWzN-H5; Tue, 20 Apr 2021 08:05:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNj-00BWuO-Jc
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=4/OO0mpfgIdCGYt6cxdxlk/PZmj5/9wWE8TywlHCn48=; b=lDmlJcmihZ+Qic2yhVze9UEli7
 xCSVu0/OR78eMAyyXooAEj2UfnrqHhC6Q1stiEG+af/SKAOjLgRvohHvFvTlsrhKknQAONvldpmkh
 d1fnIUIcZUdWp8AkDutJAK2YZXaEPy9lmA6Uoc54OJQTmPe9yyb5hg1yV1sns8G4Y3+n8LK97Lokn
 t72Fw19Oy0z2FV2DhfGgSYJuE52pQyt46TxEH5X7TmYIo+LTEFoGtXe7DRWthCxKT82foZj/x6AQ4
 4wIh+f4vtVhF5XLmHWgDpsNcEyi0oThaV0SjKs9xqQfZ13NQqER4YSbw0nVsNZ5eLM//98acS0LXy
 qUovbl7A==;
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNh-00Bu0X-15
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:14 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id EF838116A6D; Tue, 20 Apr 2021 09:57:19 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id DC3DD1167C9;
 Tue, 20 Apr 2021 09:57:16 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:56:56 +0200
Message-Id: <20210420075700.246124-3-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010513_229990_F80DA76C 
X-CRM114-Status: GOOD (  15.92  )
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
Subject: [PATCH 3/8] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the information from the reserved memory entries to modify the
mapping of memory regions to mark them as uncachable and not-executable.
This also prevents the processor from speculating into these regions,
preventing hard to debug scenarios where boots fail for unknown reasons.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 60 ++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 58 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6af228505d..71d6cad1ef 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -17,6 +17,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <asm/sections.h>
+#include <of.h>
 
 #include "mmu.h"
 
@@ -387,6 +388,57 @@ static void vectors_init(void)
 	create_vector_table(ARM_LOW_VECTORS);
 }
 
+static void create_sections_with_intersect(struct memory_bank *bank)
+{
+	int i;
+	unsigned flag;
+	struct of_reserve_map *res_map = of_get_reserve_map();
+	unsigned long j_end;
+	unsigned long end;
+	unsigned long j;
+
+	res_map = of_get_reserve_map();
+	if (!res_map)
+		return;
+
+	end = bank->start + bank->size - 1;
+	j = bank->start;
+
+	while(j < end) {
+		flag = PMD_SECT_DEF_CACHED;
+		j_end = j + PGDIR_SIZE - 1;
+
+		for (i = 0; i < res_map->num_entries; i++) {
+			if(BIT(i) & res_map->xn && (j_end >= res_map->start[i] &&
+						    j_end <= res_map->end[i]))
+				flag = PMD_SECT_DEF_UNCACHED | PMD_SECT_XN;
+		}
+
+		create_sections(ttb, j, j_end, flag);
+		j += PGDIR_SIZE;
+	}
+}
+
+static bool intersects_reserved_map_xn(struct memory_bank *bank)
+{
+	struct of_reserve_map *res_map;
+	unsigned long bank_end;
+	int i;
+
+	res_map = of_get_reserve_map();
+
+	if (!res_map)
+		return false;
+
+	bank_end = bank->start + bank->size;
+	for (i = 0; i < res_map->num_entries; i++) {
+		if(res_map->start[i] >= bank->start || res_map->end[i] <= bank_end)
+			return true;
+	}
+	return false;
+}
+
+
 /*
  * Prepare MMU for usage enable it.
  */
@@ -448,8 +500,12 @@ void __mmu_init(bool mmu_on)
 	vectors_init();
 
 	for_each_memory_bank(bank) {
-		create_sections(ttb, bank->start, bank->start + bank->size - 1,
-				PMD_SECT_DEF_CACHED);
+		if (intersects_reserved_map_xn(bank)) {
+			create_sections_with_intersect(bank);
+		} else {
+			create_sections(ttb, bank->start, bank->start + bank->size - 1,
+					PMD_SECT_DEF_CACHED);
+		}
 		__mmu_cache_flush();
 	}
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

