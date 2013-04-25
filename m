Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVNqb-0003lY-9F
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 15:12:34 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 25 Apr 2013 17:12:22 +0200
Message-Id: <1366902742-30993-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] of: property: fix error message
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

At least in standard oxford english one not is enough.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/of_property.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index 6311b70..44bb388 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -62,7 +62,7 @@ static int of_parse_prop_cells(char * const *newval, int count, char *data, int
 
 		/* If the ptr didn't advance, something went wrong */
 		if ((newp - cp) <= 0) {
-			printf("cannot not convert \"%s\"\n", cp);
+			printf("cannot convert \"%s\"\n", cp);
 			return -EINVAL;
 		}
 
@@ -105,7 +105,7 @@ static int of_parse_prop_stream(char * const *newval, int count, char *data, int
 
 		/* If the ptr didn't advance, something went wrong */
 		if ((newp - cp) <= 0) {
-			printf("cannot not convert \"%s\"\n", cp);
+			printf("cannot convert \"%s\"\n", cp);
 			return -EINVAL;
 		}
 	}
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
