Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O5Env-0000Qa-VW
	for barebox@lists.infradead.org; Fri, 23 Apr 2010 09:04:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Apr 2010 11:03:56 +0200
Message-Id: <1272013443-29196-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] add arm helper function to determine the program counter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/common.h |   14 ++++++++++++++
 1 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index 9afcff7..6b8e179 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -1 +1,15 @@
 #define ARCH_SHUTDOWN
+
+static inline unsigned long get_program_counter(void)
+{
+	unsigned long pc;
+
+	__asm__ __volatile__(
+                "mov    %0, pc\n"
+                : "=r" (pc)
+                :
+                : "memory");
+
+	return pc;
+}
+
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
