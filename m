Delivery-date: Mon, 12 Jan 2026 09:57:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDk4-000SqS-2H
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:57:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDk3-0002We-NH
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:57:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RmYeXOILlZUuCb8qrXAuaDDfyqEPmyjamOL4zCe/mUI=; b=2NAYuZwk7IKG0LJPcXNaq/I/ig
	82TUrjwvqnblbX/wfje9MLhXPYaKjyjRCRnAN75pqbwnBYJhIxVKV1CRQ6WMnOo2vqicUSAX+Lxho
	iD2SHmRGjrWDSPQvc/o/wFK2MCd35REf7c9KtMYJv8CBNw1eo25E9w2blZStnjQgeAyhMYJsGuR8q
	SLrQ9C6JhleikgMF/5TydLs5nWhyTHW5jq918RFiACh7xXsroFgv6Ld2fiFOqtbSD0/lgNj9e2fmU
	/AglLUWIv4i+/JjldiMevUZB98HM6jANu+VWFpSQ5+8uB2agCJa1pI+k8y7ULwS6woIAAe2TR73Q2
	i0Lad6SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDje-000000052Ua-0sUu;
	Mon, 12 Jan 2026 08:57:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDjc-000000052TZ-1GDC
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:57:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDja-0002PO-GZ; Mon, 12 Jan 2026 09:57:10 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:56:39 +0100
Message-ID: <20260112085709.2953004-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005712_337974_21AC25E6 
X-CRM114-Status: GOOD (  10.12  )
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
Subject: [PATCH 1/2] debug_ll: pl011: add PBL console helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use with pbl_set_putc, define a helper for PL011, like we already do
for NS16550.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/debug_ll/pl011.h | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/include/debug_ll/pl011.h b/include/debug_ll/pl011.h
index 12f9ce1564c5..aeec456f2006 100644
--- a/include/debug_ll/pl011.h
+++ b/include/debug_ll/pl011.h
@@ -3,25 +3,36 @@
 #ifndef __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
 #define __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__
 
+#include <io.h>
+#include <linux/amba/serial.h>
+
+static inline void debug_ll_pl011_putc(void __iomem *base, int c)
+{
+	/* Wait until there is space in the FIFO */
+	while (readl(base + UART01x_FR) & UART01x_FR_TXFF)
+		;
+
+	/* Send the character */
+	writel(c, base + UART01x_DR);
+}
+
+#ifdef CONFIG_DEBUG_LL
+
 #ifndef DEBUG_LL_UART_ADDR
 #error DEBUG_LL_UART_ADDR is undefined!
 #endif
 
-#include <io.h>
-#include <linux/amba/serial.h>
-
 static inline void PUTC_LL(char c)
 {
-	/* Wait until there is space in the FIFO */
-	while (readl(DEBUG_LL_UART_ADDR + UART01x_FR) & UART01x_FR_TXFF)
-		;
+	void __iomem *base = IOMEM(DEBUG_LL_UART_ADDR);
 
-	/* Send the character */
-	writel(c, DEBUG_LL_UART_ADDR + UART01x_DR);
+	debug_ll_pl011_putc(base, c);
 
 	/* Wait to make sure it hits the line, in case we die too soon. */
-	while (readl(DEBUG_LL_UART_ADDR + UART01x_FR) & UART01x_FR_TXFF)
+	while (readl(base + UART01x_FR) & UART01x_FR_TXFF)
 		;
 }
 
+#endif
+
 #endif /* __INCLUDE_ARM_ASM_DEBUG_LL_PL011_H__ */
-- 
2.47.3



