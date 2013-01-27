Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzPlb-00006F-La
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 10:47:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Jan 2013 11:47:03 +0100
Message-Id: <1359283623-1782-35-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
References: <1359283623-1782-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 34/34] ARM pbl: inline decompress function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index b93f5a3..c192d59 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -62,16 +62,6 @@ static void noinline errorfn(char *error)
 	while (1);
 }
 
-static void barebox_uncompress(void *compressed_start, unsigned int len)
-{
-	decompress((void *)compressed_start,
-			len,
-			NULL, NULL,
-			(void *)TEXT_BASE, NULL, errorfn);
-
-	flush_icache();
-}
-
 static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 		uint32_t memsize, uint32_t boarddata)
 {
@@ -111,7 +101,10 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 	free_mem_ptr = endmem;
 	free_mem_end_ptr = free_mem_ptr + SZ_128K;
 
-	barebox_uncompress((void *)pg_start, pg_len);
+	decompress((void *)pg_start, pg_len, NULL, NULL,
+			(void *)TEXT_BASE, NULL, errorfn);
+
+	flush_icache();
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
 		barebox = (void *)(TEXT_BASE + 1);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
