Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp46.i.mail.ru ([94.100.177.106])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WsXxe-0001Wk-CK
 for barebox@lists.infradead.org; Thu, 05 Jun 2014 13:44:09 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  5 Jun 2014 17:43:39 +0400
Message-Id: <1401975820-29215-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1401975820-29215-1-git-send-email-shc_work@mail.ru>
References: <1401975820-29215-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] ARM: clps711x: Remove unused UART bit definitions
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/include/mach/clps711x.h | 34 --------------------------
 1 file changed, 34 deletions(-)

diff --git a/arch/arm/mach-clps711x/include/mach/clps711x.h b/arch/arm/mach-clps711x/include/mach/clps711x.h
index f4a1f0a..957b2b8 100644
--- a/arch/arm/mach-clps711x/include/mach/clps711x.h
+++ b/arch/arm/mach-clps711x/include/mach/clps711x.h
@@ -98,16 +98,12 @@
 #define RANDID2			(REGS_BASE + 0x2708)
 #define RANDID3			(REGS_BASE + 0x270c)
 
-/* common bits: SYSCON1 / SYSCON2 */
-#define SYSCON_UARTEN		(1 << 8)
-
 #define SYSCON1_KBDSCAN(x)	((x) & 15)
 #define SYSCON1_KBDSCANMASK	(15)
 #define SYSCON1_TC1M		(1 << 4)
 #define SYSCON1_TC1S		(1 << 5)
 #define SYSCON1_TC2M		(1 << 6)
 #define SYSCON1_TC2S		(1 << 7)
-#define SYSCON1_UART1EN		SYSCON_UARTEN
 #define SYSCON1_BZTOG		(1 << 9)
 #define SYSCON1_BZMOD		(1 << 10)
 #define SYSCON1_DBGEN		(1 << 11)
@@ -121,11 +117,6 @@
 #define SYSCON1_WAKEDIS		(1 << 19)
 #define SYSCON1_IRTXM		(1 << 20)
 
-/* common bits: SYSFLG1 / SYSFLG2 */
-#define SYSFLG_UBUSY		(1 << 11)
-#define SYSFLG_URXFE		(1 << 22)
-#define SYSFLG_UTXFF		(1 << 23)
-
 #define SYSFLG1_MCDR		(1 << 0)
 #define SYSFLG1_DCDET		(1 << 1)
 #define SYSFLG1_WUDR		(1 << 2)
@@ -133,13 +124,10 @@
 #define SYSFLG1_CTS		(1 << 8)
 #define SYSFLG1_DSR		(1 << 9)
 #define SYSFLG1_DCD		(1 << 10)
-#define SYSFLG1_UBUSY		SYSFLG_UBUSY
 #define SYSFLG1_NBFLG		(1 << 12)
 #define SYSFLG1_RSTFLG		(1 << 13)
 #define SYSFLG1_PFFLG		(1 << 14)
 #define SYSFLG1_CLDFLG		(1 << 15)
-#define SYSFLG1_URXFE		SYSFLG_URXFE
-#define SYSFLG1_UTXFF		SYSFLG_UTXFF
 #define SYSFLG1_CRXFE		(1 << 24)
 #define SYSFLG1_CTXFF		(1 << 25)
 #define SYSFLG1_SSIBUSY		(1 << 26)
@@ -154,9 +142,6 @@
 #define SYSFLG2_SS2TXFF		(1 << 4)
 #define SYSFLG2_SS2TXUF		(1 << 5)
 #define SYSFLG2_CKMODE		(1 << 6)
-#define SYSFLG2_UBUSY		SYSFLG_UBUSY
-#define SYSFLG2_URXFE		SYSFLG_URXFE
-#define SYSFLG2_UTXFF		SYSFLG_UTXFF
 
 #define LCDCON_GSEN		(1 << 30)
 #define LCDCON_GSMD		(1 << 31)
@@ -169,30 +154,11 @@
 #define SYSCON2_PCCARD1		(1 << 5)
 #define SYSCON2_PCCARD2		(1 << 6)
 #define SYSCON2_SS2RXEN		(1 << 7)
-#define SYSCON2_UART2EN		SYSCON_UARTEN
 #define SYSCON2_SS2MAEN		(1 << 9)
 #define SYSCON2_OSTB		(1 << 12)
 #define SYSCON2_CLKENSL		(1 << 13)
 #define SYSCON2_BUZFREQ		(1 << 14)
 
-/* common bits: UARTDR1 / UARTDR2 */
-#define UARTDR_FRMERR		(1 << 8)
-#define UARTDR_PARERR		(1 << 9)
-#define UARTDR_OVERR		(1 << 10)
-
-/* common bits: UBRLCR1 / UBRLCR2 */
-#define UBRLCR_BAUD_MASK	((1 << 12) - 1)
-#define UBRLCR_BREAK		(1 << 12)
-#define UBRLCR_PRTEN		(1 << 13)
-#define UBRLCR_EVENPRT		(1 << 14)
-#define UBRLCR_XSTOP		(1 << 15)
-#define UBRLCR_FIFOEN		(1 << 16)
-#define UBRLCR_WRDLEN5		(0 << 17)
-#define UBRLCR_WRDLEN6		(1 << 17)
-#define UBRLCR_WRDLEN7		(2 << 17)
-#define UBRLCR_WRDLEN8		(3 << 17)
-#define UBRLCR_WRDLEN_MASK	(3 << 17)
-
 #define SYNCIO_FRMLEN(x)	(((x) & 0x1f) << 8)
 #define SYNCIO_SMCKEN		(1 << 13)
 #define SYNCIO_TXFRMEN		(1 << 14)
-- 
1.8.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
