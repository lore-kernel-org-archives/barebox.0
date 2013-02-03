Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Ed-0000ci-MH
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:21 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9DCA1104ECF7
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:04 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:36 +0100
Message-Id: <1359904236-11622-36-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 36/36] ARM pbl: inline decompress function
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index a825e9f..91bc8fe 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -48,13 +48,6 @@ void __naked __section(.text_head_entry) pbl_start(void)
 extern void *input_data;
 extern void *input_data_end;
 
-static void barebox_uncompress(void *compressed_start, unsigned int len)
-{
-	pbl_barebox_uncompress((void*)TEXT_BASE, compressed_start, len);
-
-	flush_icache();
-}
-
 static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 		uint32_t memsize, uint32_t boarddata)
 {
@@ -93,7 +86,9 @@ static noinline __noreturn void __barebox_arm_entry(uint32_t membase,
 	free_mem_ptr = endmem;
 	free_mem_end_ptr = free_mem_ptr + SZ_128K;
 
-	barebox_uncompress((void *)pg_start, pg_len);
+	pbl_barebox_uncompress((void*)TEXT_BASE, (void *)pg_start, pg_len);
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
