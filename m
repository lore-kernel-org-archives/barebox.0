Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zdny6-0006Dw-00
 for barebox@lists.infradead.org; Sun, 20 Sep 2015 23:24:26 +0000
Received: by lagj9 with SMTP id j9so58799840lag.2
 for <barebox@lists.infradead.org>; Sun, 20 Sep 2015 16:24:04 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-254-180.pppoe.spdop.ru.
 [79.139.254.180])
 by smtp.gmail.com with ESMTPSA id x1sm3091424lbb.32.2015.09.20.16.24.03
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 20 Sep 2015 16:24:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 21 Sep 2015 02:23:47 +0300
Message-Id: <1442791433-10892-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
References: <1442791433-10892-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC v2 04/10] MIPS: mach-ath79: add debug_ll_ar9331_init macro
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/debug_ll.h | 29 ++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
index d3813af..e0c3f79 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
@@ -63,6 +63,35 @@ static inline void PUTC_LL(int ch)
  * Macros for use in assembly language code
  */
 
+#define AR933X_UART_CS_REG		0x04
+#define UART_CS_REG	((KSEG1 | AR933X_UART_BASE) | AR933X_UART_CS_REG)
+#define AR933X_UART_CS_IF_MODE_S	2
+#define	  AR933X_UART_CS_IF_MODE_DCE	2
+#define AR933X_UART_CS_TX_READY_ORIDE	BIT(7)
+#define AR933X_UART_CS_RX_READY_ORIDE	BIT(8)
+
+/*
+ * simple uart clock setup
+ * from u-boot_mod/u-boot/cpu/mips/ar7240/hornet_serial.c
+ */
+#define BAUD_CLOCK 25000000
+#define CLOCK_SCALE ((BAUD_CLOCK / (16 * CONFIG_BAUDRATE)) - 1)
+#define CLOCK_STEP 0x2000
+
+#define AR933X_UART_CLOCK_REG		0x08
+#define CLOCK_REG	((KSEG1 | AR933X_UART_BASE) | AR933X_UART_CLOCK_REG)
+
+.macro debug_ll_ar9331_init
+#ifdef CONFIG_DEBUG_LL
+
+	pbl_reg_writel ((AR933X_UART_CS_IF_MODE_DCE << AR933X_UART_CS_IF_MODE_S) \
+			| AR933X_UART_CS_TX_READY_ORIDE \
+			| AR933X_UART_CS_RX_READY_ORIDE), UART_CS_REG
+	pbl_reg_writel ((CLOCK_SCALE << 16) | CLOCK_STEP), CLOCK_REG
+
+#endif /* CONFIG_DEBUG_LL */
+.endm
+
 /*
  * output a character in a0
  */
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
