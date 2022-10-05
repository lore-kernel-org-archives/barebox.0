Delivery-date: Wed, 05 Oct 2022 13:14:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2ME-006eu7-3J
	for lore@lore.pengutronix.de; Wed, 05 Oct 2022 13:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1og2MC-0004Fe-Px
	for lore@pengutronix.de; Wed, 05 Oct 2022 13:14:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qTi9nz2hEjqA0Rb1QUDa9EfqxdVxohE5y7me5YQeTK4=; b=ICZGb2Sj7BPlmc1XZpTP4SP/EG
	YqKa5nW7tDv1Y+ZpF0ZgyaAtgSvvR6ELkv4ypchvhDA04s5C1ET+UlezpMzPU0GEcYbmqw0JYlgPQ
	B0is7UOGflZG3lDhmr919W9R8l0yD7pPNuK2zCD1EhdcFnPpTOgpsbyNKP2iAKivL+nYPAzMM/GYk
	t8DsLzqsLpu24+PI8blsJ2hH51c3/YLdQuAorQEE/aabmWSa9QX7n4VG2Dd92OiHIA2g2+WTe2TQ6
	NJLU2z+fhfAFbxHcqbivnTscheObDjiQ/7etyP9LIaDohQAYdMAutVChMknoYH9IQ5mHA6Ada9It4
	rrQ5D4jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2KD-00DjSd-SC; Wed, 05 Oct 2022 11:12:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1og2K4-00DjL5-09
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 11:12:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K2-0003lX-QK
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K3-004kIM-Hl
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:18 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1og2K0-000crf-GQ
	for barebox@lists.infradead.org; Wed, 05 Oct 2022 13:12:16 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Oct 2022 13:12:09 +0200
Message-Id: <20221005111214.148844-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221005111214.148844-1-m.felsch@pengutronix.de>
References: <20221005111214.148844-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_041220_054484_6264A329 
X-CRM114-Status: GOOD (  13.40  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/7] RISC-V: add riscv_vendor_id() support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the support to query the vendorid which is stored within the
mvendorid register. This register is only accessible from M-Mode so we
need to use the sbi interface if we are running from S-Mode.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- adapt switch-case to fix compile error.

 arch/riscv/include/asm/system.h | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/riscv/include/asm/system.h b/arch/riscv/include/asm/system.h
index adf856f9e9..89516f075b 100644
--- a/arch/riscv/include/asm/system.h
+++ b/arch/riscv/include/asm/system.h
@@ -5,6 +5,8 @@
 
 #ifndef __ASSEMBLY__
 
+#include <asm/sbi.h>
+
 #define RISCV_MODE_MASK 0x3
 enum riscv_mode {
     RISCV_U_MODE	= 0,
@@ -42,6 +44,30 @@ static inline long __riscv_hartid(u32 flags)
 	return hartid;
 }
 
+static inline long __riscv_vendor_id(u32 flags)
+{
+	struct sbiret ret;
+	long id;
+
+	switch (__riscv_mode(flags)) {
+	case RISCV_M_MODE:
+		__asm__ volatile("csrr %0, mvendorid\n" : "=r"(id));
+		return id;
+	case RISCV_S_MODE:
+		/*
+		 * We need to use the sbi_ecall() since it can be that we got
+		 * called without a working stack
+		 */
+		ret = sbi_ecall(SBI_EXT_BASE, SBI_EXT_BASE_GET_MVENDORID,
+				0, 0, 0, 0, 0, 0);
+		if (!ret.error)
+			return ret.value;
+		return -1;
+	default:
+		return -1;
+	}
+}
+
 #ifndef __PBL__
 extern unsigned barebox_riscv_pbl_flags;
 
@@ -54,6 +80,11 @@ static inline long riscv_hartid(void)
 {
 	return __riscv_hartid(barebox_riscv_pbl_flags);
 }
+
+static inline long riscv_vendor_id(void)
+{
+	return __riscv_vendor_id(barebox_riscv_pbl_flags);
+}
 #endif
 
 #endif
-- 
2.30.2



