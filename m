Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWo1f-0007WE-Gg
 for barebox@lists.infradead.org; Tue, 22 May 2012 12:17:20 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so6374591bkw.36
 for <barebox@lists.infradead.org>; Tue, 22 May 2012 05:17:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 22 May 2012 16:17:01 +0400
Message-Id: <1337689021-1395-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1337689021-1395-1-git-send-email-antonynpavlov@gmail.com>
References: <1337689021-1395-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/3] MIPS: cpuinfo: import CPU message from Linux 3.4
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/mips/lib/cpuinfo.c |   27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index fc8fb00..c0bb87a 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -23,11 +23,34 @@
 #include <common.h>
 #include <command.h>
 #include <asm/mipsregs.h>
+#include <asm/cpu-info.h>
+
+static char *way_string[] = { NULL, "direct mapped", "2-way",
+	"3-way", "4-way", "5-way", "6-way", "7-way", "8-way"
+};
 
 static int do_cpuinfo(int argc, char *argv[])
 {
-	printf("CP0_PRID = 0x%08x\n", read_c0_prid());
-	printf("CP0_CONFIG = 0x%08x\n", read_c0_config());
+	unsigned int icache_size, dcache_size;
+	struct cpuinfo_mips *c = &current_cpu_data;
+
+	printk(KERN_INFO "CPU revision is: %08x (%s)\n",
+		current_cpu_data.processor_id, __cpu_name);
+
+	icache_size = c->icache.sets * c->icache.ways * c->icache.linesz;
+	dcache_size = c->dcache.sets * c->dcache.ways * c->dcache.linesz;
+
+	printk("Primary instruction cache %ldkB, %s, %s, linesize %d bytes.\n",
+	       icache_size >> 10,
+	       c->icache.flags & MIPS_CACHE_VTAG ? "VIVT" : "VIPT",
+	       way_string[c->icache.ways], c->icache.linesz);
+
+	printk("Primary data cache %ldkB, %s, %s, %s, linesize %d bytes\n",
+	       dcache_size >> 10, way_string[c->dcache.ways],
+	       (c->dcache.flags & MIPS_CACHE_PINDEX) ? "PIPT" : "VIPT",
+	       (c->dcache.flags & MIPS_CACHE_ALIASES) ?
+			"cache aliases" : "no aliases",
+	       c->dcache.linesz);
 
 	return 0;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
