Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008Hc-6f
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0003OS-T0
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004D0-RY
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:04 +0200
Message-Id: <1412691738-11145-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/19] arch/MPC5xxx: just a format clean up
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/start.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 6a32718..8402345 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -68,7 +68,8 @@
 	 */
 _base:
 	mfspr	r4, MBAR
-	b setup_mbar
+	b	setup_mbar
+
 	. = EXC_OFF_SYS_RESET
 	.globl	_start
 _start:
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
