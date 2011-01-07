Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9o7-0003P7-4N
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:44:03 +0100
Message-Id: <1294397044-5008-24-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 23/24] mpc5xxx: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/cpu.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 4d08c55..be7c19d 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -65,7 +65,7 @@ int checkcpu (void)
 	printf (" v%d.%d, Core v%d.%d", SVR_MJREV (svr), SVR_MNREV (svr),
 		PVR_MAJ(pvr), PVR_MIN(pvr));
 #endif
-	printf (" at %s Hz\n", clock);
+	printf (" at %ld Hz\n", clock);
 	return 0;
 }
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
