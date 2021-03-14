Delivery-date: Sun, 14 Mar 2021 13:30:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPtI-0007qc-4J
	for lore@lore.pengutronix.de; Sun, 14 Mar 2021 13:30:40 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLPtD-0007eM-MK
	for lore@pengutronix.de; Sun, 14 Mar 2021 13:30:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NrXCUs4neadYb7PkPI7/OMtVsGfHly+U/hMuOi+34n4=; b=A0RmnrHpXbKkl9mJYslyaEUfw
	teC8pK9eYCqMIyyXh/J1KoI6UZp9oSujVURBb1z9LawdtiVfzcKVuYNeOkwLo8dy2eChMOWAHLs7a
	YU0dSSp40lPoF40IYrneiipEd1W4pcw7Qs8VDB7YeAmQ9qUAcKSh1mUO3ThYT8oHD5F4aVqSmOchr
	YnaBAdaDwQnFi+VkkmnpsVuDVrPiwY/b1LkDut702w3HmvHPQ4npasvOz3SbVxBwLWI23zxVkMbQn
	JK2jFqNrctjr5/ungSQhzuDFeJYktuRd0x+uH8kJ6J8AxWSp21UTWSlEvTyglpG084fPVmEf28pkY
	no2k7YQKQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLPrx-00ECSJ-SQ; Sun, 14 Mar 2021 12:29:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLPr5-00EBy7-Fw
 for barebox@lists.infradead.org; Sun, 14 Mar 2021 12:28:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqo-0006LZ-VG; Sun, 14 Mar 2021 13:28:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lLPqn-00016F-JP; Sun, 14 Mar 2021 13:28:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 14 Mar 2021 13:27:52 +0100
Message-Id: <20210314122804.4128-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210314122804.4128-1-a.fatoum@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210314_122824_828274_C2F4EE03 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/20] RISC-V: debug_ll: ns16550: align C access size with
 assembly's
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The assembly putc routines do accesses the same size of the register
stride. Do likewise for the C implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/debug_ll_ns16550.h | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/include/asm/debug_ll_ns16550.h b/arch/riscv/include/asm/debug_ll_ns16550.h
index f1c2ccbd0afb..7d6d12df74fe 100644
--- a/arch/riscv/include/asm/debug_ll_ns16550.h
+++ b/arch/riscv/include/asm/debug_ll_ns16550.h
@@ -51,9 +51,13 @@
 #if defined(DEBUG_LL_UART_IOSIZE32)
 #define UART_REG_L	lw
 #define UART_REG_S	sw
+#define __uart_read	readl
+#define __uart_write	writel
 #elif defined(DEBUG_LL_UART_IOSIZE8)
 #define UART_REG_L	lbu
 #define UART_REG_S	sb
+#define __uart_read	readb
+#define __uart_write	writeb
 #else
 #error "Please define DEBUG_LL_UART_IOSIZE{8,32}"
 #endif
@@ -68,19 +72,19 @@
 static inline void PUTC_LL(char ch)
 {
 #ifdef CONFIG_DEBUG_LL
-	while (!(__raw_readl((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
+	while (!(__uart_read((u8 *)DEBUG_LL_UART_ADDR + UART_LSR) & UART_LSR_THRE))
 		;
-	__raw_writel(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
+	__uart_write(ch, (u8 *)DEBUG_LL_UART_ADDR + UART_THR);
 #endif /* CONFIG_DEBUG_LL */
 }
 
 static inline void debug_ll_ns16550_init(void)
 {
 #ifdef CONFIG_DEBUG_LL
-	__raw_writel(UART_LCR_DLAB, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
-	__raw_writel(DEBUG_LL_UART_DIVISOR & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLL);
-	__raw_writel((DEBUG_LL_UART_DIVISOR >> 8) & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLM);
-	__raw_writel(UART_LCR_W, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
+	__uart_write(UART_LCR_DLAB, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
+	__uart_write(DEBUG_LL_UART_DIVISOR & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLL);
+	__uart_write((DEBUG_LL_UART_DIVISOR >> 8) & 0xff, (u8 *)DEBUG_LL_UART_ADDR + UART_DLM);
+	__uart_write(UART_LCR_W, (u8 *)DEBUG_LL_UART_ADDR + UART_LCR);
 #endif /* CONFIG_DEBUG_LL */
 }
 #else /* __ASSEMBLY__ */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

