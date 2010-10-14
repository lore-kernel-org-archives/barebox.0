Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.22] helo=mail.gmx.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6LeB-0000dF-LO
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 11:06:56 +0000
From: Carsten Schlote <carsten.schlote@gmx.net>
Date: Thu, 14 Oct 2010 13:06:43 +0200
Message-Id: <1287054406-31713-2-git-send-email-carsten.schlote@gmx.net>
In-Reply-To: <1287054406-31713-1-git-send-email-carsten.schlote@gmx.net>
References: <1287054406-31713-1-git-send-email-carsten.schlote@gmx.net>
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
Subject: [PATCH 2/5] [ppc/mpc5xxx] Small text cleanups and ADDECR to output
To: barebox@lists.infradead.org

From: Carsten Schlote <c.schlote@konzeptpark.de>

Trivial.

Signed-off-by: Carsten Schlote <c.schlote@konzeptpark.de>
---
 arch/ppc/mach-mpc5xxx/reginfo.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/reginfo.c b/arch/ppc/mach-mpc5xxx/reginfo.c
index 92a1b59..7d1ef64 100644
--- a/arch/ppc/mach-mpc5xxx/reginfo.c
+++ b/arch/ppc/mach-mpc5xxx/reginfo.c
@@ -4,8 +4,9 @@
 
 void reginfo(void)
 {
-	puts ("\nMPC5200 registers\n");
+	puts ("\nMPC5xxx registers\n");
 	printf ("MBAR=%08x\n", CFG_MBAR);
+	printf ("ADDECR=%08x\n", *(volatile ulong*)MPC5XXX_ADDECR);
 	puts ("Memory map registers\n");
 	printf ("\tCS0: start %08X\tstop %08X\tconfig %08X\ten %d\n",
 		*(volatile ulong*)MPC5XXX_CS0_START,
-- 
1.7.2.2.277.gb49c4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
