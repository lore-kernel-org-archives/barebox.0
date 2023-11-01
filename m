Delivery-date: Wed, 01 Nov 2023 13:32:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyAOW-00Dfzk-4M
	for lore@lore.pengutronix.de; Wed, 01 Nov 2023 13:32:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyAOR-0001UV-JP
	for lore@pengutronix.de; Wed, 01 Nov 2023 13:32:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VSyG5AY7ItW7tYJAMNHQF/HVgcLL6GBVG6uzCSwcnBg=; b=gi1byZcZ6zafgRonYCaKdSXrAg
	2wxO+Yws2MowDeHzJEHxYSLjK5sob2QdzwVICdW3PGo5dsBth64f8dcNfS6tiFe9rQaM9+06b8mhf
	FXdXY+iKmfXgvPWx5GQEH+QA+z97nYGhrqRyD9D94G4Fy5hZM9Ny/2z/y6tyR/5od8WRRaZiQTlKU
	oSp5i3efaC1zkCQQpKsAwG5/1UcYkBjfuKm9PUCQV7KdOgPK+jL/0uSJ5/RlNcI8//r8h5/0RvPU4
	MPVbTBwcBSdIZYL1UQ5a8HV8gmpIk+PzkpasBd8AnJ7Hx51cBcE6HhMqizGQaA2m3sY8kHSUVI66P
	JuGIsFow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyAMo-007UKY-2E;
	Wed, 01 Nov 2023 12:30:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyA0k-007LmY-0t
	for barebox@lists.infradead.org;
	Wed, 01 Nov 2023 12:07:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qyA0d-0005wa-EY; Wed, 01 Nov 2023 13:07:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qyA0c-005nvQ-5i; Wed, 01 Nov 2023 13:07:42 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qyA0b-00FoYC-28;
	Wed, 01 Nov 2023 13:07:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  1 Nov 2023 13:07:38 +0100
Message-Id: <20231101120738.3766156-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231101_050750_320000_C2D08467 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: stm32mp: define stm32_serial_putc for use with pbl_set_putc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike other debug_ll headers, such as i.MX's or AT91, the STM32MP1 header
only defined PUTC_LL, but no function suitable for use with
pbl_set_putc.

Remedy that, so PBL entry points can benefit from CONFIG_PBL_CONSOLE and
while at it, add the missing header that defines BIT().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mach/stm32mp/debug_ll.h | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/include/mach/stm32mp/debug_ll.h b/include/mach/stm32mp/debug_ll.h
index 03bb60a239c1..0d88910c1375 100644
--- a/include/mach/stm32mp/debug_ll.h
+++ b/include/mach/stm32mp/debug_ll.h
@@ -5,6 +5,7 @@
 
 #include <io.h>
 #include <mach/stm32mp/stm32.h>
+#include <linux/bitops.h>
 
 #define DEBUG_LL_UART_ADDR	STM32_UART4_BASE
 
@@ -18,13 +19,18 @@
 
 #define USART_ISR_TXE	BIT(7)
 
-static inline void PUTC_LL(int c)
+static inline void stm32_serial_putc(void *ctx, int c)
 {
-	void __iomem *base = IOMEM(DEBUG_LL_UART_ADDR);
+	void __iomem *base = IOMEM(ctx);
 
 	writel(c, base + TDR_OFFSET);
 
 	while ((readl(base + ISR_OFFSET) & USART_ISR_TXE) == 0);
 }
 
+static inline void PUTC_LL(int c)
+{
+	stm32_serial_putc(IOMEM(DEBUG_LL_UART_ADDR), c);
+}
+
 #endif /* __MACH_STM32MP1_DEBUG_LL_H */
-- 
2.39.2



