Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtHyA-00057C-2Q
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 16:28:31 +0000
Received: by lfbn126 with SMTP id n126so63840412lfb.2
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 08:28:08 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon,  2 Nov 2015 19:30:29 +0300
Message-Id: <1446481830-25052-2-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1446481830-25052-1-git-send-email-pmamonov@gmail.com>
References: <1446481830-25052-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 1/2] mips: c-r4k: detect secondary cache
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

---
 arch/mips/lib/c-r4k.c     | 31 +++++++++++++++++++++++++++++++
 arch/mips/lib/cpu-probe.c |  2 --
 2 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 01b8665..0a9dd0e 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -91,7 +91,38 @@ static void probe_pcache(void)
 	}
 }
 
+#define CONFIG_M	(1 << 31)
+#define CONFIG2_SS_OFFSET	8
+#define CONFIG2_SL_OFFSET	4
+#define CONFIG2_SA_OFFSET	0
+static void probe_scache(void)
+{
+	struct cpuinfo_mips *c = &current_cpu_data;
+	unsigned int config2, config1, config = read_c0_config();
+	unsigned int ss, sl, sa;
+
+	if ((config & CONFIG_M) == 0)
+		goto noscache;
+	config1 = read_c0_config1();
+	if ((config1 & CONFIG_M) == 0)
+		goto noscache;
+	config2 = read_c0_config2();
+	ss = 0xf & (config2 >> CONFIG2_SS_OFFSET);
+	sl = 0xf & (config2 >> CONFIG2_SL_OFFSET);
+	sa = 0xf & (config2 >> CONFIG2_SA_OFFSET);
+	if (sl == 0)
+		goto noscache;
+	c->scache.linesz = 1 << (sl + 1);
+	c->scache.sets = 64 << ss;
+	c->scache.ways = 1 + sa;
+	c->scache.waysize = c->scache.linesz * c->scache.sets;
+	return;
+noscache:
+	c->scache.flags = MIPS_CACHE_NOT_PRESENT;
+}
+
 void r4k_cache_init(void)
 {
 	probe_pcache();
+	probe_scache();
 }
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index 4622bcd..71dbaf6 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -75,8 +75,6 @@ static void decode_configs(struct cpuinfo_mips *c)
 	c->options = MIPS_CPU_4KEX | MIPS_CPU_4K_CACHE | MIPS_CPU_COUNTER |
 	             MIPS_CPU_DIVEC | MIPS_CPU_LLSC | MIPS_CPU_MCHECK;
 
-	c->scache.flags = MIPS_CACHE_NOT_PRESENT;
-
 	ok = decode_config0(c);			/* Read Config registers.  */
 	BUG_ON(!ok);				/* Arch spec violation!  */
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
