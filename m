Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6BaB-00042Z-2D
 for barebox@lists.infradead.org; Thu, 13 Aug 2020 11:39:43 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 13 Aug 2020 13:39:38 +0200
Message-Id: <20200813113938.24127-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] string: add sanity check to the strcmp() and strncmp()
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

A relatively big portion of barebox init sequence is running without
configured exception vector. As result we may not detect some NULL
pointer dereferences (as on iMX6) or just silently freeze (as on stm32).

So, add sanity check to detect this kind of issues as early as possible.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 lib/string.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/string.c b/lib/string.c
index 717b59aa50..7548fd3581 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -208,6 +208,8 @@ int strcmp(const char * cs,const char * ct)
 {
 	register signed char __res;
 
+	BUG_ON(!cs || !ct);
+
 	while (1) {
 		if ((__res = *cs - *ct++) != 0 || !*cs++)
 			break;
@@ -229,6 +231,8 @@ int strncmp(const char * cs, const char * ct, size_t count)
 {
 	register signed char __res = 0;
 
+	BUG_ON(!cs || !ct);
+
 	while (count) {
 		if ((__res = *cs - *ct++) != 0 || !*cs++)
 			break;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
