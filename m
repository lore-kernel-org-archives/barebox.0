Delivery-date: Wed, 18 Jun 2025 11:53:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTv-008ZRU-0y
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 11:53:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRpTt-0003Lc-PV
	for lore@pengutronix.de; Wed, 18 Jun 2025 11:53:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/VH2jXM+pJOpurUQN4u7O/nlv16I3T59I9J5mzqYiPM=; b=i0V0FUSTMwVgwll0pCJXaciYGU
	U4a4bBZbmmLbT3Vl9wC41D29iQfevw03CaiSmiiNfs+Cihe28S0MBuYHc93Qp8W/2F+uNjnIt2d+q
	5gGGERiBWwz72aJ60OsnDe8xuhKS8RhqDunpNaEzL8J6TnpgfYf/DC58TnAe35PunFu6hqdbfHtyT
	WV1gEN3E8uU7kFDdY4RVRRqXOBRwWrCjo6N7pXVqk/Q5AwsgJg+0k9/u7iiyYS64bnUG1lUrwxDPD
	H+TgCTIBH7xvhEtMcRr5EpWUAnOp/Tvds78Lr/0BaDQGiOGOSOJUCYXIYVod642n/Iku5dvmwRp7f
	lvq5VqXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpTK-00000009f4P-3xFw;
	Wed, 18 Jun 2025 09:52:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRpC0-00000009c3H-0AQH
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 09:34:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBx-0004nj-Au; Wed, 18 Jun 2025 11:34:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBx-0047Gi-00;
	Wed, 18 Jun 2025 11:34:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRpBw-005SrZ-2q;
	Wed, 18 Jun 2025 11:34:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Jun 2025 11:34:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250618-mmu-xn-ro-v3-2-2a9825725934@pengutronix.de>
References: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
In-Reply-To: <20250618-mmu-xn-ro-v3-0-2a9825725934@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750239288; l=1687;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=erTe6dWGPT/2Oa5NvRuRyGYJpVl/fD3kbUpLRILxklA=;
 b=hdpZFFiRy9S3vYVm0sdAhkC0BvMDxK1+c2AaWiIwRoHSjwJc5NtQ9e45XeqzZrAZqBXG9nrUa
 SGKhB/EBUAuC97wV5CnbJhn9L9HTLLG+7O+kZeEI5VgX7UnMHDp+9dT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250618_023452_083009_88BCD1A7 
X-CRM114-Status: GOOD (  11.11  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/6] ARM: mmu: move ARCH_MAP_WRITECOMBINE to header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARCH_MAP_WRITECOMBINE is defined equally for both mmu_32 and mmu_64 and
we'll add more mapping types later, so move it to a header file to be
shared by both mmu implementations.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu-common.h | 2 ++
 arch/arm/cpu/mmu_32.c     | 1 -
 arch/arm/cpu/mmu_64.c     | 2 --
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index d0b50662570a48fafd47edac9fbc12fe2a62458a..0f11a4b73d1199ec2400f64a2f057cf940d4ff2d 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -9,6 +9,8 @@
 #include <linux/kernel.h>
 #include <linux/sizes.h>
 
+#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
+
 struct device;
 
 void dma_inv_range(void *ptr, size_t size);
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 2c2144327380c7cbb6c7426212d94a4a9ba5f70f..104780ff6b9827982e16c1e2b8ac8aae6e4b5c6a 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -23,7 +23,6 @@
 #include "mmu_32.h"
 
 #define PTRS_PER_PTE		(PGDIR_SIZE / PAGE_SIZE)
-#define ARCH_MAP_WRITECOMBINE	((unsigned)-1)
 
 static inline uint32_t *get_ttb(void)
 {
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index cb0803400cfd6a55f0b34dea823576d6593e96f1..121dd136af33967e516b66091a6c671d45e6e119 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -24,8 +24,6 @@
 
 #include "mmu_64.h"
 
-#define ARCH_MAP_WRITECOMBINE  ((unsigned)-1)
-
 static uint64_t *get_ttb(void)
 {
 	return (uint64_t *)get_ttbr(current_el());

-- 
2.39.5



