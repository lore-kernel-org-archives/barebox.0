Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ2Bj-0002D4-Bs
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 13:07:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2012 15:06:56 +0200
Message-Id: <1349183217-19639-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349183217-19639-1-git-send-email-s.hauer@pengutronix.de>
References: <1349183217-19639-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM pbl: Provide a dummy error function for the
 decompressor
To: barebox@lists.infradead.org

We can't do anything useful in the error function, so we just hang.
This has the advantage that at least when a JTAG debugger is connected
we can see what happens. Otherwise the code just jumps to NULL in case
of an error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 932a3da..2cd33ce 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -113,6 +113,11 @@ static void mmu_disable(void)
 	__mmu_cache_off();
 }
 
+void noinline errorfn(char *error)
+{
+	while (1);
+}
+
 static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	void (*barebox)(void);
@@ -135,7 +140,7 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 	decompress((void *)compressed_start,
 			len,
 			NULL, NULL,
-			(void *)TEXT_BASE, NULL, NULL);
+			(void *)TEXT_BASE, NULL, errorfn);
 
 	if (use_mmu)
 		mmu_disable();
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
