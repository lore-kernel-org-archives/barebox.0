Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKB1R-0001ev-CY
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 16:45:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 18:45:04 +0200
Message-Id: <1349455505-31731-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
References: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: cleanup piggydata copy check
To: barebox@lists.infradead.org

Replace to gotos with a single if().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start-pbl.c |   28 ++++++++--------------------
 1 file changed, 8 insertions(+), 20 deletions(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 1298ca0..29d82e5 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -188,26 +188,14 @@ void __naked board_init_lowlevel_return(void)
 	pg_end = (uint32_t)&input_data_end - offset;
 	pg_len = pg_end - pg_start;
 
-	if (IS_ENABLED(CONFIG_PBL_FORCE_PIGGYDATA_COPY))
-		goto copy_piggy_link;
-
-	/*
-	 * Check if the piggydata binary will be overwritten
-	 * by the uncompressed binary or by the pbl relocation
-	 */
-	if (!offset ||
-	    !((pg_start >= TEXT_BASE && pg_start < TEXT_BASE + pg_len * 4) ||
-	      ((uint32_t)_text >= pg_start && (uint32_t)_text <= pg_end)))
-		goto copy_link;
-
-copy_piggy_link:
-	/*
-	 * copy piggydata binary to its link address
-	 */
-	memcpy(&input_data, (void *)pg_start, pg_len);
-	pg_start = (uint32_t)&input_data;
-
-copy_link:
+	if (offset && (IS_ENABLED(CONFIG_PBL_FORCE_PIGGYDATA_COPY) ||
+				region_overlap(pg_start, pg_len, TEXT_BASE, pg_len * 4))) {
+		/*
+		 * copy piggydata binary to its link address
+		 */
+		memcpy(&input_data, (void *)pg_start, pg_len);
+		pg_start = (uint32_t)&input_data;
+	}
 
 	setup_c();
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
