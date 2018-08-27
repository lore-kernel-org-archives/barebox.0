Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.4])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuI23-0007UM-Kx
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 13:58:17 +0000
From: <Oleg.Karfich@wago.com>
Date: Mon, 27 Aug 2018 13:57:48 +0000
Message-ID: <1535378254-2593-1-git-send-email-oleg.karfich@wago.com>
Content-Language: en-US
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
Subject: [PATCH] commands: of_property: do not free data in general
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

With commit 748d1b8 the function do_of_property_set_now is introduced. With this
commit an unwanted free(data) is added wich leads to that an free on the value
is done that is previously set to the property. As a consequence the command
of_dump reads freed data an printis the value as hex. Fix this by moving
free(data) to the right place like before the above commit.

Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
---
 commands/of_property.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/commands/of_property.c b/commands/of_property.c
index 8ce12e5..ea32e51 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -275,10 +275,12 @@ static int do_of_property_set_now(struct device_node *root, const char *path,
 		pp->value_const = NULL;
 
 		/* limit property data to the actual size */
-		if (len)
+		if (len) {
 			pp->value = xrealloc(data, len);
-		else
+		} else {
 			pp->value = NULL;
+			free(data);
+		}
 
 		pp->length = len;
 	} else {
@@ -374,7 +376,6 @@ static int do_of_property(int argc, char *argv[])
 				free(data);
 		} else {
 			ret = do_of_property_set_now(NULL, path, propname, data, len);
-			free(data);
 		}
 
 		return ret;
-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
