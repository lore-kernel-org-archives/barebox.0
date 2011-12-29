Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RgDvh-0005ma-2h
 for barebox@lists.infradead.org; Thu, 29 Dec 2011 11:13:49 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 29 Dec 2011 11:13:31 +0000
Message-Id: <1325157211-3986-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1325157211-3986-1-git-send-email-renaud.barbier@ge.com>
References: <1325157211-3986-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/2] Make clock shift and mask configurable based on the
 processor type.
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org


Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/lib/time.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/lib/time.c b/arch/ppc/lib/time.c
index 04c71df..accc548 100644
--- a/arch/ppc/lib/time.c
+++ b/arch/ppc/lib/time.c
@@ -55,9 +55,9 @@ uint64_t ppc_clocksource_read(void)
 }
 
 static struct clocksource cs = {
-	.read	= ppc_clocksource_read,
-	.mask	= CLOCKSOURCE_MASK(32),
-	.shift	= 15,
+	.read = ppc_clocksource_read,
+	.mask = CLOCKSOURCE_MASK(CONFIG_CLOCKSOURCE_MASK),
+	.shift = CONFIG_CLOCKSOURCE_SHIFT,
 };
 
 static int clocksource_init (void)
-- 
1.7.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
