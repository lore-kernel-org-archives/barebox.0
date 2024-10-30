Delivery-date: Wed, 30 Oct 2024 12:47:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ag-002gBy-0h
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 12:47:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t67Ag-0003zk-MP
	for lore@pengutronix.de; Wed, 30 Oct 2024 12:47:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kI72dQ97iLrA6o3NzL8dlWrreiF+d9JYxEEAYS8i+b0=; b=1hURe27oHEFqnMbyYglkdLAjQV
	A93id/FPKIAAX+3iCX5n7tOyxxOzcQTUvnR2NzTf8m+AbeB1JqrnPyz6NdnAzEL95zqsYE9oIUvY0
	JzgB8Bac8J0cmtvtkOaD7qgCrd9GsP2jCCdO+VPKWpSNxSgKCHpQ/aOPDcEO6DTwHO118sO7DwcU/
	uTk1ysWAnBu5meA31MXspJ4TCsLWZ3qRiPRIVk1AakMTIyZIaTJofvHc+es29/hl/qr49f7DgP+iC
	ofbIQJh6/L+1/+PY/KetQkbjeYQXbKTGXETHdfN69nqVo223elym9BBLDo8HIU92TGvuYxhTzy/6h
	iqlJGO9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t67A9-00000000CXe-2ziF;
	Wed, 30 Oct 2024 11:46:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t66uT-000000008rh-2jRD
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 11:30:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-0001gZ-H6; Wed, 30 Oct 2024 12:30:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-001Bh9-0m;
	Wed, 30 Oct 2024 12:30:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t66uK-00333E-0a;
	Wed, 30 Oct 2024 12:30:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 12:30:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241030-handoff-data-v1-1-4403e0c62c2a@pengutronix.de>
References: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
In-Reply-To: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730287836; l=2965;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=yfhTSnTtCYdvjO2IODxffF9L4O9sbvQH73zEJPq2Yzs=;
 b=nXBad1DFf5r/HWkqNmkKmPVcwDAnDWw/AkVKaRZbZ6NvHu9TIF6/8HsiwvuMszhGfF34/musO
 Ic7/JjBjtkjAnONK/hCHEFxtQzAC9d1491DDjYW2NQka3xdf7TnNcYh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_043045_740416_8853AC94 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] handoff_data: add handoff_data_add_dt()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Factor out a handoff_data_add_dt() from the existing ARM code in case a
board wants to set the fdt directly in board code rather than passing it
in the boarddata pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/uncompress.c  | 18 ++----------------
 include/pbl/handoff-data.h |  2 ++
 pbl/handoff-data.c         | 15 +++++++++++++++
 3 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 8f916359b3..ac1462b7b1 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -31,21 +31,6 @@ unsigned long free_mem_end_ptr;
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
-static void add_handoff_data(void *boarddata)
-{
-	if (!boarddata)
-		return;
-	if (blob_is_fdt(boarddata)) {
-		handoff_data_add(HANDOFF_DATA_INTERNAL_DT, boarddata,
-				 get_unaligned_be32(boarddata + 4));
-	} else if (blob_is_compressed_fdt(boarddata)) {
-		struct barebox_boarddata_compressed_dtb *bd = boarddata;
-
-		handoff_data_add(HANDOFF_DATA_INTERNAL_DT_Z, boarddata,
-				 bd->datalen + sizeof(*bd));
-	}
-}
-
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 				  void *boarddata)
 {
@@ -82,7 +67,8 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 		mmu_early_enable(membase, memsize);
 
 	/* Add handoff data now, so arm_mem_barebox_image takes it into account */
-	add_handoff_data(boarddata);
+	if (boarddata)
+		handoff_data_add_dt(boarddata);
 
 	barebox_base = arm_mem_barebox_image(membase, endmem,
 					     uncompressed_len, NULL);
diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index d475bdd694..eac3b9bf3e 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -51,4 +51,6 @@ static inline size_t handoff_data_size(void)
 	return __handoff_data_size(NULL);
 }
 
+void handoff_data_add_dt(void *fdt);
+
 #endif /* __PBL_HANDOFF_DATA_H */
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index 7453c9c82c..17b0512132 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -4,6 +4,8 @@
 #include <init.h>
 #include <linux/list.h>
 #include <memory.h>
+#include <fdt.h>
+#include <compressed-dtb.h>
 
 static struct handoff_data *handoff_data = (void *)-1;
 
@@ -160,6 +162,19 @@ int handoff_data_show(void)
 	return 0;
 }
 
+void handoff_data_add_dt(void *fdt)
+{
+	if (blob_is_fdt(fdt)) {
+		handoff_data_add(HANDOFF_DATA_INTERNAL_DT, fdt,
+				 get_unaligned_be32(fdt + 4));
+	} else if (blob_is_compressed_fdt(fdt)) {
+		struct barebox_boarddata_compressed_dtb *bd = fdt;
+
+		handoff_data_add(HANDOFF_DATA_INTERNAL_DT_Z, fdt,
+				 bd->datalen + sizeof(*bd));
+	}
+}
+
 static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
 {
 	static char name[sizeof("handoff 12345678")];

-- 
2.39.5



