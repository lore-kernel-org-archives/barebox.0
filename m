Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZO1A-0003OO-I7
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 19:25:37 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Feb 2016 20:12:37 +0100
Message-Id: <1456513959-26781-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/3] bootm: fix uImage crashes when no partition is given
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Before the conversion to use the partition string instead of a plain
integer the default was partition 0, now it's just a NULL pointer.

There are a lot of places where strtoul is called on the partition string
which crashes when encountering the NULL pointer. Instead of fixing all
those places, plug in a default partition string that matches the old
behavior by picking partition 0.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/bootm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 7d00f8e..1f99b61 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -465,6 +465,8 @@ static void bootm_print_info(struct image_data *data)
 		printf("OS image not yet relocated\n");
 }
 
+static char part_zero[] = "0";
+
 static int bootm_image_name_and_part(const char *name, char **filename, char **part)
 {
 	char *at, *ret;
@@ -475,7 +477,7 @@ static int bootm_image_name_and_part(const char *name, char **filename, char **p
 	ret = xstrdup(name);
 
 	*filename = ret;
-	*part = NULL;
+	*part = part_zero;
 
 	at = strchr(ret, '@');
 	if (!at)
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
