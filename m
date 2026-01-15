Delivery-date: Thu, 15 Jan 2026 13:08:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9H-001aGS-1E
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:08:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM9G-0002ZS-7S
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:08:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2f+SnwsxhNvTF/pauReR/WBzasXmmnTLCTxdIzO2cXA=; b=Ax/nDBGgy/0JgP82/w496ccaA1
	w/+6y3v2MU/WXPzU+Kg1C7k2eQHN9HP6UuuTB/Qi2kURHST5nUjvgmJbeiAKnojvMLzw6oLl78YkX
	kr2GXobwxwSLR3o4ap6eZk2i8YyX7xh5E+Zzk691NDtGObkJ0g3gItAfKk4y8eCmn7AAmofoOgBdw
	tNce/RUu9jqrVmVMgQl4N/Wz7N+hrLVMBefmqbXihwc4vFcdZNcmI+ChJrEXh931aVXJVEEHCgG6i
	P4oX8B8wQaIfd1ugOXuw/SWIs5bIo7/0aos4YDzT9lEGrXwFKOprp51Trw6svjq0e4qdskD0faVDC
	yUdoJu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8p-0000000CIWJ-0CdG;
	Thu, 15 Jan 2026 12:07:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM8l-0000000CITR-2oeH
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:07:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM8j-0002HG-Ok; Thu, 15 Jan 2026 13:07:49 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:06:09 +0100
Message-ID: <20260115120748.3433463-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260115120748.3433463-1-a.fatoum@barebox.org>
References: <20260115120748.3433463-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040751_713534_6F1BDF8C 
X-CRM114-Status: GOOD (  14.68  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] firmware: qemu_fw_cfg: use wider PIO reads if applicable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have some logic for wider reading register, but it's not used,
because we break in fw_cfg_data_read instead of returning.

The logic is broken though, because it doesn't increment correctly,
so rewrite it to actually work.

This doesn't go out of its way to use the biggest width possible
in all cases, because we are going to add a dedicated DMA mode later,
so we don't need to optimize PIO much.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/firmware/qemu_fw_cfg.c | 78 +++++++++++-----------------------
 1 file changed, 25 insertions(+), 53 deletions(-)

diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 42bc5879879c..33cc5bc54ce9 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -79,47 +79,29 @@ static int fw_cfg_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 	return 0;
 }
 
-#define __raw_readu64 __raw_readq
-#define __raw_readu32 __raw_readl
-#define __raw_readu16 __raw_readw
-#define __raw_readu8 __raw_readb
-
-#define fw_cfg_data_read_sized(fw_cfg, remaining, address, type) do {	\
-	while (*remaining >= sizeof(type)) {				\
-		val = __raw_read##type((fw_cfg)->reg_data);		\
-		*remaining -= sizeof(type);				\
-		put_unaligned(val, (type *)*address);		\
-		*address += sizeof(type);			\
-	}								\
-} while(0)
-
-static void fw_cfg_data_read(struct fw_cfg *fw_cfg, void *address, size_t remaining,
-			     unsigned rdsize)
+static void reads_n(const void __iomem *src, void *dst,
+		   resource_size_t count, int rwsize)
 {
-
-	u64 val;
-
-	if (fw_cfg->is_mmio) {
-		/*
-		 * This is just a preference. If we can't honour it, we
-		 * fall back to byte-sized copy
-		 */
-		switch(rdsize) {
-		case 8:
+	switch (rwsize) {
+	case 1: readsb(src, dst, count / 1); break;
+	case 2: readsw(src, dst, count / 2); break;
+	case 4: readsl(src, dst, count / 4); break;
 #ifdef CONFIG_64BIT
-			fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u64);
-			break;
+	case 8: readsq(src, dst, count / 8); break;
 #endif
-		case 4:
-			fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u32);
-			break;
-		case 2:
-			fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u16);
-			break;
-		}
 	}
+}
 
-	fw_cfg_data_read_sized(fw_cfg, &remaining, &address, u8);
+static void ins_n(unsigned long src, void *dst,
+		  resource_size_t count, int rwsize)
+{
+	switch (rwsize) {
+	case 1: insb(src, dst, count / 1); break;
+	case 2: insw(src, dst, count / 2); break;
+	case 4: insl(src, dst, count / 4); break;
+	/* No insq, so just do 32-bit accesses */
+	case 8: insl(src, dst, count / 4); break;
+	}
 }
 
 static void fw_cfg_do_dma(struct fw_cfg *fw_cfg, dma_addr_t address,
@@ -141,30 +123,20 @@ static ssize_t fw_cfg_read(struct cdev *cdev, void *buf, size_t count,
 			   loff_t pos, unsigned long flags)
 {
 	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
-	unsigned rdsize = FIELD_GET(O_RWSIZE_MASK, flags);
-	u32 selector = FW_CFG_DMA_CTL_SELECT | fw_cfg->sel << 16;
+	unsigned rdsize = FIELD_GET(O_RWSIZE_MASK, flags) ?: 8;
 
 	if (!pos || pos != fw_cfg->next_read_offset) {
 		fw_cfg_select(fw_cfg);
 		fw_cfg->next_read_offset = 0;
 	}
 
-	if (!rdsize) {
-		if (pos % 8 == 0)
-			rdsize = 8;
-		else if (pos % 4 == 0)
-			rdsize = 4;
-		else if (pos % 2 == 0)
-			rdsize = 2;
-		else
-			rdsize = 1;
-	}
+	if (!IS_ALIGNED(pos, rdsize) || !IS_ALIGNED(count, rdsize))
+		rdsize = 1;
 
-	if (pos != fw_cfg->next_read_offset)
-		fw_cfg_do_dma(fw_cfg, DMA_ERROR_CODE, pos,
-			      FW_CFG_DMA_CTL_SKIP | selector);
-
-	fw_cfg_data_read(fw_cfg, buf, count, rdsize);
+	if (fw_cfg->is_mmio)
+		reads_n(fw_cfg->reg_data, buf, count, rdsize);
+	else
+		ins_n((ulong)fw_cfg->reg_data, buf, count, rdsize);
 
 	fw_cfg->next_read_offset += count;
 	return count;
-- 
2.47.3



