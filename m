Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1q-0001mw-7o
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:25 +0200
Message-Id: <1317112109-23311-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] mpc5200: hardcode MBAR to 0xf0000000
To: barebox@lists.infradead.org

We use 0xf0000000 in barebox, no need to configure this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
index 8e95dd0..cef02d8 100644
--- a/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
+++ b/arch/ppc/mach-mpc5xxx/include/mach/mpc5xxx.h
@@ -40,6 +40,8 @@
 /* Exception offsets (PowerPC standard) */
 #define EXC_OFF_SYS_RESET	0x0100
 
+#define CFG_MBAR 0xf0000000
+
 /* useful macros for manipulating CSx_START/STOP */
 #if defined(CONFIG_MGT5100)
 #define START_REG(start)	((start) >> 15)
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
