Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA1m-0007hM-7X
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:37 +0200
Message-Id: <20200915122539.18744-9-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] openrisc: Make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

Make only locally used functions static to avoid -Wmissing-prototypes
warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/cpu/cache.c   | 2 +-
 arch/openrisc/lib/cpuinfo.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/openrisc/cpu/cache.c b/arch/openrisc/cpu/cache.c
index db6403634a..a124d6612c 100644
--- a/arch/openrisc/cpu/cache.c
+++ b/arch/openrisc/cpu/cache.c
@@ -131,7 +131,7 @@ void icache_disable(void)
 	mtspr(SPR_SR, mfspr(SPR_SR) & ~SPR_SR_ICE);
 }
 
-int cache_init(void)
+static int cache_init(void)
 {
 	if (mfspr(SPR_UPR) & SPR_UPR_ICP) {
 		icache_disable();
diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
index 4c52a65421..d94178ea59 100644
--- a/arch/openrisc/lib/cpuinfo.c
+++ b/arch/openrisc/lib/cpuinfo.c
@@ -95,7 +95,7 @@ static void cpu_implementation(ulong vr2, char *string)
 	}
 }
 
-int checkcpu(void)
+static int checkcpu(void)
 {
 	ulong upr = mfspr(SPR_UPR);
 	ulong vr = mfspr(SPR_VR);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
