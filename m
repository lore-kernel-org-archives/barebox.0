Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22f.google.com ([2607:f8b0:400e:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq53x-0007px-CE
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:32:58 +0000
Received: by pabtp1 with SMTP id tp1so17983077pab.2
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:31:57 -0700
Message-Id: <1430940733-4415-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 02/18] i.MX: serial: Add constants for UART clock divisor
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/serial/imx-uart.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/serial/imx-uart.h b/include/serial/imx-uart.h
index e40843d..0a01788 100644
--- a/include/serial/imx-uart.h
+++ b/include/serial/imx-uart.h
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
