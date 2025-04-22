Delivery-date: Tue, 22 Apr 2025 10:38:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7996-003yV3-1y
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7993-0001Lb-H6
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WIL/8LjA5HYY7ZGRoc/f5UlS4eowk4udELV3Lhx0/C8=; b=Vi4jklSF19fHNYs3bO8kL998KK
	jQhCeVDtkRk5kU64GOmudRfkEfNAcp15u58iNlH3lA71LPAD8um1mi7Rck85q+qIT5VV2YVBUwizj
	TPBSIcjRiHnjdPjYVuKKPpgXH1Mz0FlffEe1E5E76xIlcIYcUypOCC5uy7qe+pNf8Ox3h7szAMEat
	kj3fX7vdVterM50gjGiYalVBWIaoYrGsmrltNP9JglX37yIU34xn0maxMP5Aaj8E+ulluQqlK31zU
	Z5dLoISkxmx0TpYw+gslRZGArrySH9QTGMAihI8nbdISBuxIMprz3UZptTreKuoOC3jHDu0j1S9Ky
	ibzlzHBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798a-00000006M3P-0gPC;
	Tue, 22 Apr 2025 08:37:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78TR-00000006C4R-2LAA
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:55:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-0000VM-FL
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:55:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-001VvE-0s
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-000uz2-0a
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:55:18 +0200
Message-Id: <20250422075519.219029-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075519.219029-1-a.fatoum@pengutronix.de>
References: <20250422075519.219029-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005521_618018_7D565D13 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/4] ARM: k3: define debug_ll_write_reg only on CONFIG_DEBUG_AM62X_UART=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Defining debug_ll_read_reg unconditionally for K3 can clash with other
debug_ll implementations, so move it into the include guard.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/mach/k3/debug_ll.h | 37 ++++++++++++++++++-------------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
index 13321c61346f..0e479d2e7f2b 100644
--- a/include/mach/k3/debug_ll.h
+++ b/include/mach/k3/debug_ll.h
@@ -2,6 +2,20 @@
 #define __MACH_K3_DEBUG_LL_H__
 #include <io.h>
 
+#define AM62X_UART_UART0_BASE	0x02800000
+#define AM62X_UART_UART1_BASE	0x02810000
+#define AM62X_UART_UART2_BASE	0x02820000
+#define AM62X_UART_UART3_BASE	0x02830000
+#define AM62X_UART_UART4_BASE	0x02840000
+#define AM62X_UART_UART5_BASE	0x02850000
+#define AM62X_UART_UART6_BASE	0x02860000
+
+#if defined CONFIG_DEBUG_AM62X_UART
+#define K3_DEBUG_SOC AM62X_UART
+
+#define __K3_UART_BASE(soc, num) soc##_UART##num##_BASE
+#define K3_UART_BASE(soc, num) __K3_UART_BASE(soc, num)
+
 static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
 	return readb(base + (reg << 2));
@@ -22,25 +36,6 @@ static inline void k3_debug_ll_init(void __iomem *base)
 	debug_ll_write_reg(base, 8, 0x00);
 }
 
-#define AM62X_UART_UART0_BASE	0x02800000
-#define AM62X_UART_UART1_BASE	0x02810000
-#define AM62X_UART_UART2_BASE	0x02820000
-#define AM62X_UART_UART3_BASE	0x02830000
-#define AM62X_UART_UART4_BASE	0x02840000
-#define AM62X_UART_UART5_BASE	0x02850000
-#define AM62X_UART_UART6_BASE	0x02860000
-
-#if defined CONFIG_DEBUG_AM62X_UART
-#define K3_DEBUG_SOC AM62X_UART
-
-#define __K3_UART_BASE(soc, num) soc##_UART##num##_BASE
-#define K3_UART_BASE(soc, num) __K3_UART_BASE(soc, num)
-
-static inline void debug_ll_init(void)
-{
-	/* already configured */
-}
-
 static inline void PUTC_LL(int c)
 {
 	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,
@@ -49,6 +44,10 @@ static inline void PUTC_LL(int c)
 	debug_ll_ns16550_putc(base, c);
 }
 
+#else
+static inline void k3_debug_ll_init(void __iomem *base)
+{
+}
 #endif
 
 #endif /* __MACH_K3_DEBUG_LL_H__ */
-- 
2.39.5



