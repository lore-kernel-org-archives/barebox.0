Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NduV2-0005Oy-4m
	for barebox@lists.infradead.org; Sat, 06 Feb 2010 23:55:44 +0000
Date: Sun, 7 Feb 2010 00:55:22 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100206235522.GF15617@darwin>
References: <d5ecf68c69351ddcef35759f76e7e8ce3d7e0571.1265500315.git.matthias@kaehlcke.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d5ecf68c69351ddcef35759f76e7e8ce3d7e0571.1265500315.git.matthias@kaehlcke.net>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] edb93xx: Avoid stack usage in early_udelay()
To: barebox@lists.infradead.org

edb93xx: The purpose of early_udelay() is to provide delay functionality in the
early board setup, when the stack isn't set up yet. With some compiler versions
the current implementation makes use of the stack and ends up crashing. Fix this
by removing an explicit division from early_udelay()

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 board/edb93xx/early_udelay.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/board/edb93xx/early_udelay.h b/board/edb93xx/early_udelay.h
index 3b26b3f..185283d 100644
--- a/board/edb93xx/early_udelay.h
+++ b/board/edb93xx/early_udelay.h
@@ -26,7 +26,7 @@
 static inline void early_udelay(uint32_t usecs)
 {
 	/* loop takes 4 cycles at 5.0ns (fastest case, running at 200MHz) */
-	register uint32_t loops = (usecs * 1000) / 20;
+	register uint32_t loops = usecs * (1000 / 20);
 
 	__asm__ volatile ("1:\n"
 			"subs %0, %1, #1\n"
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
