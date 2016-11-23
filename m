Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U2A-0008Mi-Eq
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:40:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 10:39:34 +0100
Message-Id: <20161123093937.15711-7-s.hauer@pengutronix.de>
In-Reply-To: <20161123093937.15711-1-s.hauer@pengutronix.de>
References: <20161123093937.15711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] ARM: socfpga: fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

Fixes:
arch/arm/mach-socfpga/xload.c:121:13: warning: assignment discards 'const' qualifier from pointer target type

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/xload.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-socfpga/xload.c b/arch/arm/mach-socfpga/xload.c
index 0e584c3..d24944b 100644
--- a/arch/arm/mach-socfpga/xload.c
+++ b/arch/arm/mach-socfpga/xload.c
@@ -111,7 +111,7 @@ static void socfpga_timer_init(void)
 static __noreturn int socfpga_xload(void)
 {
 	enum bootsource bootsource = bootsource_get();
-	struct socfpga_barebox_part *part;
+	const struct socfpga_barebox_part *part;
 	void *buf = NULL;
 
 	switch (bootsource) {
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
