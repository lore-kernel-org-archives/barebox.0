Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzS-0005X0-R3
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:56 +0100
Message-Id: <1361909936-2665-30-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 29/29] of_property command: Fix crash with empty property value
To: barebox@lists.infradead.org

the of_property command crashes when an empty property value
was given. This is because xrealloc is called with a length
argument of 0. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_property.c |   10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index 5d35bb4..6311b70 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -254,9 +254,15 @@ static int do_of_property(int argc, char *argv[])
 
 		if (pp) {
 			free(pp->value);
+
 			/* limit property data to the actual size */
-			data = xrealloc(data, len);
-			pp->value = data;
+			if (len) {
+				pp->value = xrealloc(data, len);
+			} else {
+				pp->value = NULL;
+				free(data);
+			}
+
 			pp->length = len;
 		} else {
 			pp = of_new_property(node, propname, data, len);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
