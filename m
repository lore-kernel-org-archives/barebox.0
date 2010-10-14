Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.22] helo=mail.gmx.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6LeB-0000dE-JU
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 11:06:56 +0000
From: Carsten Schlote <carsten.schlote@gmx.net>
Date: Thu, 14 Oct 2010 13:06:42 +0200
Message-Id: <1287054406-31713-1-git-send-email-carsten.schlote@gmx.net>
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
Subject: [PATCH 1/5] [ppc/mpc5xxx] Fixed typo in cpu_init.c
To: barebox@lists.infradead.org

From: Carsten Schlote <c.schlote@konzeptpark.de>

- Fixed typo, which assigns CS5 start address to CS7

Signed-off-by: Carsten Schlote <c.schlote@konzeptpark.de>
---
 arch/ppc/mach-mpc5xxx/cpu_init.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu_init.c b/arch/ppc/mach-mpc5xxx/cpu_init.c
index fc5db0e..4ec5cba 100644
--- a/arch/ppc/mach-mpc5xxx/cpu_init.c
+++ b/arch/ppc/mach-mpc5xxx/cpu_init.c
@@ -119,7 +119,7 @@ int cpu_init(void)
 #endif
 
 #if defined(CFG_CS7_START) && defined(CFG_CS7_SIZE)
-	*(vu_long *)MPC5XXX_CS7_START = START_REG(CFG_CS5_START);
+	*(vu_long *)MPC5XXX_CS7_START = START_REG(CFG_CS7_START);
 	*(vu_long *)MPC5XXX_CS7_STOP = STOP_REG(CFG_CS7_START, CFG_CS7_SIZE);
 	addecr |= (1 << 27);
 #endif
-- 
1.7.2.2.277.gb49c4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
