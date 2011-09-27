Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mg-Dt
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:17 +0200
Message-Id: <1317112109-23311-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] ppc: add a get_pc() function
To: barebox@lists.infradead.org

Useful to determine whether sdram has to be setup or not.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/include/asm/common.h |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index 96de5c6..26876c7 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -21,4 +21,21 @@ void	trap_init     (ulong);
 int cpu_init_board_data(bd_t *bd);
 int init_board_data(bd_t *bd);
 
+static inline unsigned long get_pc(void)
+{
+	unsigned long pc;
+
+	__asm__ __volatile__(
+		"	mflr    0\n"
+		"	bl	1f\n"
+		"1:\n"
+		"	mflr    %0\n"
+		"	mtlr    0\n"
+		: "=r" (pc)
+                :
+                : "0", "memory");
+
+	return pc;
+}
+
 #endif /* __ASM_COMMON_H */
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
