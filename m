Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPS-0002sB-3V
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:20:00 +0200
Message-Id: <20200930072005.1407-7-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 07/12] common: memsize: eliminate dead store
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The assignment to val at this location serves no purpose, drop it to
reduce clutter.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memsize.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/memsize.c b/common/memsize.c
index 915ab87b340a..2fd2b7145759 100644
--- a/common/memsize.c
+++ b/common/memsize.c
@@ -58,7 +58,7 @@ long get_ram_size(volatile long *base, long maxsize)
 	*addr = 0;
 
 	sync ();
-	if ((val = *addr) != 0) {
+	if (*addr != 0) {
 		/* Restore the original data before leaving the function.
 		 */
 		sync ();
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
