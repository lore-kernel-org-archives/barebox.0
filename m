Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ2Bj-0002D5-O1
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 13:07:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2012 15:06:57 +0200
Message-Id: <1349183217-19639-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM pbl: actually create cached mappings in the
 decompressor
To: barebox@lists.infradead.org

We called create_sections with 4096MB as size argument, but create_sections
expected the argument in bytes, so create sections was completely optimized
away due to the size >>= 20. This patch changes the size argument to be in
megabytes and adjusts map_cachable to pass the argument in megabytes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |    7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 2cd33ce..1626eb3 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -56,14 +56,13 @@ extern void *input_data_end;
 
 static unsigned long *ttb;
 
-static void create_sections(unsigned long addr, int size, unsigned int flags)
+static void create_sections(unsigned long addr, int size_m, unsigned int flags)
 {
 	int i;
 
 	addr >>= 20;
-	size >>= 20;
 
-	for (i = size; i > 0; i--, addr++)
+	for (i = size_m; i > 0; i--, addr++)
 		ttb[addr] = (addr << 20) | flags;
 }
 
@@ -72,7 +71,7 @@ static void map_cachable(unsigned long start, unsigned long size)
 	start &= ~(SZ_1M - 1);
 	size = (size + (SZ_1M - 1)) & ~(SZ_1M - 1);
 
-	create_sections(start, size, PMD_SECT_AP_WRITE |
+	create_sections(start, size >> 20, PMD_SECT_AP_WRITE |
 			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
