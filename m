Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x22f.google.com ([2607:f8b0:400e:c02::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YojcY-0004ip-NY
 for barebox@lists.infradead.org; Sun, 03 May 2015 02:27:07 +0000
Received: by pdbnk13 with SMTP id nk13so130838854pdb.0
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 19:26:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  2 May 2015 19:26:14 -0700
Message-Id: <1430619980-26243-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/8] i.MX: serial: Add constants for UART clock divisor
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/include/mach/serial.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/serial.h b/arch/arm/mach-imx/include/mach/serial.h
index b999c58..3890fd5 100644
--- a/arch/arm/mach-imx/include/mach/serial.h
+++ b/arch/arm/mach-imx/include/mach/serial.h
@@ -77,6 +77,13 @@
 #define  UCR4_DREN  	 (1<<0)  /* Recv data ready interrupt enable */
 #define  UFCR_RXTL_SHF   0       /* Receiver trigger level shift */
 #define  UFCR_RFDIV      (7<<7)  /* Reference freq divider mask */
+#define	 UFCR_RFDIV6	  (0b000<<7)  /* Reference freq divider mask */
+#define	 UFCR_RFDIV5	  (0b001<<7)  /* Reference freq divider mask */
+#define	 UFCR_RFDIV4	  (0b010<<7)  /* Reference freq divider mask */
+#define	 UFCR_RFDIV3	  (0b011<<7)  /* Reference freq divider mask */
+#define	 UFCR_RFDIV2	  (0b100<<7)  /* Reference freq divider mask */
+#define	 UFCR_RFDIV1	  (0b101<<7)  /* Reference freq divider mask */
+#define	 UFCR_RFDIV7	  (0b110<<7)  /* Reference freq divider mask */
 #define  UFCR_TXTL_SHF   10      /* Transmitter trigger level shift */
 #define  USR1_PARITYERR  (1<<15) /* Parity error interrupt flag */
 #define  USR1_RTSS  	 (1<<14) /* RTS pin status */
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
