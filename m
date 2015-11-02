Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtIGt-0006cq-Lg
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 16:47:52 +0000
Received: by lffz202 with SMTP id z202so64529932lff.3
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 08:47:30 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon,  2 Nov 2015 19:50:00 +0300
Message-Id: <1446483000-25715-3-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1446483000-25715-1-git-send-email-pmamonov@gmail.com>
References: <1446483000-25715-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH resend 2/2] mips: cpuinfo: report secondary cache configuration
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/lib/cpuinfo.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
index 1b17169..fb02a4d 100644
--- a/arch/mips/lib/cpuinfo.c
+++ b/arch/mips/lib/cpuinfo.c
@@ -28,7 +28,7 @@ static char *way_string[] = { NULL, "direct mapped", "2-way",
 
 static int do_cpuinfo(int argc, char *argv[])
 {
-	unsigned int icache_size, dcache_size;
+	unsigned int icache_size, dcache_size, scache_size;
 	struct cpuinfo_mips *c = &current_cpu_data;
 
 	printk(KERN_INFO "CPU revision is: %08x (%s)\n",
@@ -48,6 +48,15 @@ static int do_cpuinfo(int argc, char *argv[])
 	       (c->dcache.flags & MIPS_CACHE_ALIASES) ?
 			"cache aliases" : "no aliases",
 	       c->dcache.linesz);
+	if (c->scache.flags & MIPS_CACHE_NOT_PRESENT)
+		return 0;
+	scache_size = c->scache.sets * c->scache.ways * c->scache.linesz;
+	printk("Secondary data cache %ldkB, %s, %s, %s, linesize %d bytes\n",
+	       scache_size >> 10, way_string[c->scache.ways],
+	       (c->scache.flags & MIPS_CACHE_PINDEX) ? "PIPT" : "VIPT",
+	       (c->scache.flags & MIPS_CACHE_ALIASES) ?
+			"cache aliases" : "no aliases",
+	       c->scache.linesz);
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
