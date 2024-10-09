Delivery-date: Wed, 09 Oct 2024 08:11:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPuz-0027gK-0c
	for lore@lore.pengutronix.de;
	Wed, 09 Oct 2024 08:11:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1syPuy-0007Zz-HI
	for lore@pengutronix.de; Wed, 09 Oct 2024 08:11:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K9eIszlJtDhnTGl0ETX7dlAPy2NjODrEELFaR8YckeE=; b=wZi2D0uePxvjVHafEUtH1xmc51
	FjLakEUU1Eczu6pmx8AKP+bOR/GKHo23jdxVnldWw/gU0NtxyCYXWUsyVl4+4W7Rkh2MLLG6HTkLM
	oe7jJXCyKWYuVoAyZcXSFlWgBa2lj9g20b172XeXJUSis6BTTkHc2EXr6u2i39u18R8xKLL2BGhdN
	EiJmy/xB3asq3/qli787UAiQSXYzfFn+WQXB9wXN0bwWxKRs3UdFuntUK8d/rgJ8LD/0Q3atPabuy
	IEBAcNF4BvcrodXuJNo6yvLVhVbUnTRey//h5WN8S/NDxAcz5aAu9ghfVO5cPMg/u607AueB/UK0u
	IXwZEzlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syPuX-000000083GN-00vN;
	Wed, 09 Oct 2024 06:11:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syPpQ-000000082N4-2MNz
	for barebox@lists.infradead.org;
	Wed, 09 Oct 2024 06:05:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpH-0006vF-AE; Wed, 09 Oct 2024 08:05:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-000XZz-Tj; Wed, 09 Oct 2024 08:05:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1syPpG-00HI6s-2h;
	Wed, 09 Oct 2024 08:05:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Oct 2024 08:05:09 +0200
Message-Id: <20241009060511.4121157-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
References: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_230544_636923_1AC61D90 
X-CRM114-Status: GOOD (  12.74  )
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
Subject: [PATCH 3/5] mtd: cfi-flash: use I/O accessors for reads/writes of MMIO regions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The memcpy() routine can use post-indexed memory access instructions
on ARM that would trigger data aborts under KVM.

To fix this, use memcpy_fromio/memcpy_toio or the (read|write)[bwlq]
family of functions, as these are safe to call on MMIO addresses.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c |  2 +-
 drivers/mtd/nor/cfi_flash.h | 15 ++++++++++++---
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index 2cb3d5538fbd..ea2373a01827 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -892,7 +892,7 @@ static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
 {
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
 
-	memcpy(buf, info->base + from, len);
+	memcpy_fromio(buf, info->base + from, len);
 	*retlen = len;
 
 	return 0;
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index 5d3053f97156..a80a979f8c0f 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -260,7 +260,11 @@ static inline void flash_write32(u32 value, void *addr)
 
 static inline void flash_write64(u64 value, void *addr)
 {
-	memcpy((void *)addr, &value, 8);
+#if BITS_PER_LONG >= 64
+	__raw_writeq(value, addr);
+#else
+	memcpy_toio(addr, &value, 8);
+#endif
 }
 
 static inline u8 flash_read8(void *addr)
@@ -280,8 +284,13 @@ static inline u32 flash_read32(void *addr)
 
 static inline u64 flash_read64(void *addr)
 {
-	/* No architectures currently implement readq() */
-	return *(volatile u64 *)addr;
+	u64 value;
+#if BITS_PER_LONG >= 64
+	value = __raw_readq(addr);
+#else
+	memcpy_fromio(&value, addr, 8);
+#endif
+	return value;
 }
 
 /*
-- 
2.39.5



