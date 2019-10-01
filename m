Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF6Tb-0000aL-AC
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 00:57:16 +0000
Received: by mail-pg1-x542.google.com with SMTP id i14so8376293pgt.11
 for <barebox@lists.infradead.org>; Mon, 30 Sep 2019 17:57:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 30 Sep 2019 17:56:50 -0700
Message-Id: <20191001005650.11810-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: start: Cast board data to "unsigned long"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Cast board data to "unsigned long", not "uint32_t" to avoid warnings
on ARM64.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/start.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 0c2e9fb9a8..44d974e40e 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -195,7 +195,7 @@ __noreturn void barebox_non_pbl_start(unsigned long membase,
 
 		if ((unsigned long)boarddata < 8192) {
 			struct barebox_arm_boarddata *bd;
-			uint32_t machine_type = (uint32_t)boarddata;
+			uint32_t machine_type = (unsigned long)boarddata;
 			unsigned long mem = arm_mem_boarddata(membase, endmem,
 							      sizeof(*bd));
 			pr_debug("found machine type %d in boarddata\n",
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
