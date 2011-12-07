Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzv-00069Z-CF
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:53:00 +0100
Message-Id: <1323262387-8012-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/11] fix underscore count in bss_start/bss_stop
To: barebox@lists.infradead.org

As done in the Linux Kernel

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/boards/ipe337/barebox.lds.S |    4 ++--
 arch/blackfin/cpu-bf561/start.S           |    8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/blackfin/boards/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
index 25ca988..9e2b034 100644
--- a/arch/blackfin/boards/ipe337/barebox.lds.S
+++ b/arch/blackfin/boards/ipe337/barebox.lds.S
@@ -84,9 +84,9 @@ SECTIONS
 	___usymtab_end = .;
 
 	. = ALIGN(4);
-	__bss_start = .;
+	___bss_start = .;
 	.bss : { *(.bss) }
-	__bss_stop = .;
+	___bss_stop = .;
 	_end = .;
 }
 
diff --git a/arch/blackfin/cpu-bf561/start.S b/arch/blackfin/cpu-bf561/start.S
index 4345362..8a6c563 100644
--- a/arch/blackfin/cpu-bf561/start.S
+++ b/arch/blackfin/cpu-bf561/start.S
@@ -163,8 +163,8 @@ offset:
 	p2.h = hi(TEXT_BASE);
 
 	p3 = 0x04;
-	p4.l = __bss_start;
-	p4.h = __bss_start;
+	p4.l = ___bss_start;
+	p4.h = ___bss_start;
 loop1:
 	r1 = [p1 ++ p3];
 	[p2 ++ p3] = r1;
@@ -308,8 +308,8 @@ WAIT_DMA_DONE:
 	W[P1+OFFSET_(MDMA_D0_IRQ_STATUS)] = R0;	/* Write 1 to clear DMA interrupt */
 
 	/* Initialize BSS Section with 0 s */
-	p1.l = __bss_start;
-	p1.h = __bss_start;
+	p1.l = ___bss_start;
+	p1.h = ___bss_start;
 	p2.l = _end;
 	p2.h = _end;
 	r1 = p1;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
