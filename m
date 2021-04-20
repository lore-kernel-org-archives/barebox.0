Delivery-date: Tue, 20 Apr 2021 10:06:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP5-0008Fd-EI
	for lore@lore.pengutronix.de; Tue, 20 Apr 2021 10:06:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lYlP4-0004HZ-Mn
	for lore@pengutronix.de; Tue, 20 Apr 2021 10:06:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EBaP/Ok1/MvFcFJsI4/vtwxLfGfTKX1ns1XYsYAGirU=; b=PGHM57TcqQMOOMPF9mlyu07UG
	4V4A4PUcYD3dKplfdDrCV9bYpooapFWYD/ZtCtdIn413U7Ga0mAsoAV5PXYOao7JoNZgGK2oMitbN
	cpqiAxZBQQoY10b7JudxFqy9TZOcg6SJxAoP0UQXoUd6qihc5Y+UnIgYE8fzFGEg5djOFiR4PQSOc
	t5wjGI7rxaNMFgsBYhuZwJBDdtVLNQbZ5OYv0YRQnITOiOrZlTkUDl/StvYtH4SI7xUvlVve6tOlh
	1Z+7PKr+zCsfHE8JN35bjPXbknX7HfcZVlHeuHHyxpnhGCodEksR4z3OSNEr1UHlXLhmVxWAuh2PU
	lHwOiK72A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYlNs-00BWvy-SF; Tue, 20 Apr 2021 08:05:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNi-00BWuI-3f
 for barebox@desiato.infradead.org; Tue, 20 Apr 2021 08:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=dBvVtMAXOT87WhM8LQxUSXYfYuggwNZlXsgbncIrqkk=; b=rKID29hd/M6EXkrf5ZJxXhMTfZ
 fVErJ+BSzbwbw2qNPQ9GftzP3bpag04w2Sy61Mc3i7tISYrQRbaCWH/N6s1agwXgmt2AsNJyn5X66
 ionRy2V3qwiWgNfvteTNFXwnIODRjhxoY3RHW/1/XrXSTIUg+Z8/XPS5jNrHp2q/UZk4L8OTYYS2D
 /TjEwgTOzy8V8GglvYbQB6pb4/pkPKmfJXXeoIh2ubD7Mn2KMCTImVv9D+KA1is4CNnejJlZBEvM6
 5X+xQWBUDS/sywPLg3oN3D9PTGHg+y7+86HHBZ/Si84ZASM0hU5DquKfhs7AW3Q3LJr6gg+XyoKWN
 AfGNIaGw==;
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYlNe-00BtzH-Cu
 for barebox@lists.infradead.org; Tue, 20 Apr 2021 08:05:12 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 5D966116A0B; Tue, 20 Apr 2021 09:57:21 +0200 (CEST)
Received: from localhost (unknown [IPv6:2001:9e8:79:8c02:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 53A02116A5F;
 Tue, 20 Apr 2021 09:57:17 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 20 Apr 2021 09:56:57 +0200
Message-Id: <20210420075700.246124-4-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
References: <20210420075700.246124-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_010510_608660_ED781DAB 
X-CRM114-Status: GOOD (  13.49  )
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
Subject: [PATCH 4/8] of: add flag to not create resmem DT entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If we are parsing entries from the /reserved-memory device tree path we
don't want to add them again as resmem blocks at the beginning of the
device tree. Therefore add another flag to indicate this.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/of/fdt.c | 10 +++++++---
 include/of.h     |  2 ++
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 6aade13fa0..da36739713 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -552,6 +552,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 	if (flags & OF_RESERVE_ENTRY_FLAG_XN)
 		of_reserve_map.xn |= BIT(e);
 
+	if (flags & OF_RESERVE_ENTRY_FLAG_NO_RESERVE)
+		of_reserve_map.noentry |= BIT(e);
+
 	return 0;
 }
 
@@ -594,9 +597,10 @@ void fdt_add_reserve_map(void *__fdt)
 	fdt_res += n;
 
 	for (i = 0; i < res->num_entries; i++) {
-		of_write_number(&fdt_res->address, res->start[i], 2);
-		of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1,
-				2);
+		if (!(res->noentry & BIT(i))) {
+			of_write_number(&fdt_res->address, res->start[i], 2);
+			of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1, 2);
+		}
 		fdt_res++;
 	}
 
diff --git a/include/of.h b/include/of.h
index 088b088223..c6d3836db1 100644
--- a/include/of.h
+++ b/include/of.h
@@ -55,9 +55,11 @@ struct of_reserve_map {
 	uint64_t end[OF_MAX_RESERVE_MAP];
 	int num_entries;
 	u32 xn;
+	u32 noentry;
 };
 
 #define OF_RESERVE_ENTRY_FLAG_XN		BIT(0)
+#define OF_RESERVE_ENTRY_FLAG_NO_RESERVE	BIT(1)
 
 int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 		 int flags);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

