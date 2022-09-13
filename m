Delivery-date: Tue, 13 Sep 2022 14:51:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OR-003gOV-DO
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 14:51:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY5OO-0007tF-1W
	for lore@pengutronix.de; Tue, 13 Sep 2022 14:51:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+Uim4nPJVmwMaGQjmcAd/Za5WNB1HPaC6yD4teIQxtg=; b=RcYaGMvgCV6x3+RuHovgNTMsNj
	jzLFci/TQUglIgehyZtwF/D+VEtUDNGvDyhgR8CEPYZv2slsYbq9K+I/4z7GadEkx418kVAXPoqZ/
	LCcRmbbO2HJG7+pRBqzN6XbZ92RNcLON41MJH/NNU+PQv6rcpBJBfciMmdM1IUuvFaRrNb0zT2wJc
	12EeTQE9D8CXHyzHnUM/XXcFYcmLZJ1aFDIDwuYYa1QAcGBY82gU+HdEWXOyVNEHhEoOpfAzsM73K
	uT2rnHflUXs5c6x+1/uf5PhAIxPpJoxX4E3z4Zqt2dcgD827mFQcchmVPERsBMC+QXlrPD0x8+gC6
	ATBLzaXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5Mg-00ADGJ-07; Tue, 13 Sep 2022 12:50:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5MX-00ADAo-0u
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 12:50:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MT-0007L1-PJ
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MU-000VCl-He
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:57 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1oY5MR-005fms-Jc
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 14:49:55 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Sep 2022 14:49:50 +0200
Message-Id: <20220913124954.1346533-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220913124954.1346533-1-m.felsch@pengutronix.de>
References: <20220913124954.1346533-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_055001_106416_7C8B6F6E 
X-CRM114-Status: GOOD (  14.09  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] RISC-V: add riscv_vendor_id() support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add the support to query the vendorid which is stored within the
mvendorid register. This register is only accessible from M-Mode so we
need to use the sbi interface if we are running from S-Mode.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/riscv/include/asm/system.h | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/riscv/include/asm/system.h b/arch/riscv/include/asm/system.h
index adf856f9e9..3eb50f63fd 100644
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
+	struct sbiret ret = { .error = -1 };
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
+	default:
+	}
+
+	return ret.error;
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



