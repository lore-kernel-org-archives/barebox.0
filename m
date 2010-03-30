Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHf-0001S1-To
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:47 +0200
Message-Id: <1269947215-18214-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] blackfin: implement arch_shutdown call
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/include/asm/common.h |    1 +
 arch/blackfin/lib/board.c          |    5 +++++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/blackfin/include/asm/common.h b/arch/blackfin/include/asm/common.h
index 2ab1954..1ddcd71 100644
--- a/arch/blackfin/include/asm/common.h
+++ b/arch/blackfin/include/asm/common.h
@@ -3,3 +3,4 @@
  * executing an external program
  */
 #define ARCH_HAS_EXECUTE
+#define ARCH_SHUTDOWN
diff --git a/arch/blackfin/lib/board.c b/arch/blackfin/lib/board.c
index 019995b..294d2b0 100644
--- a/arch/blackfin/lib/board.c
+++ b/arch/blackfin/lib/board.c
@@ -54,3 +54,8 @@ int arch_execute(void * address, int argc, char *argv[])
 
 	return ret;
 }
+
+void arch_shutdown(void)
+{
+	icache_disable();
+}
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
