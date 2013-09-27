Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000A6-0i
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:32 +0200
Message-Id: <1380264462-27614-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] ARM: pfla02: Fix compiler warning
To: barebox@lists.infradead.org

PUTC_LL no longer exists. Use putc_ll instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-pfla02/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-pfla02/lowlevel.c b/arch/arm/boards/phytec-pfla02/lowlevel.c
index df92dba..6596e92 100644
--- a/arch/arm/boards/phytec-pfla02/lowlevel.c
+++ b/arch/arm/boards/phytec-pfla02/lowlevel.c
@@ -50,7 +50,7 @@ static inline void setup_uart(void)
 	writel(0x0000c34f, uartbase + 0xa8);
 	writel(0x00000001, uartbase + 0x80);
 
-	PUTC_LL('>');
+	putc_ll('>');
 }
 
 extern char __dtb_imx6q_phytec_pbab01_start[];
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
