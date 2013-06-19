Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpPOO-0005ac-1Q
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 20:54:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Jun 2013 22:53:40 +0200
Message-Id: <1371675222-25433-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371675222-25433-1-git-send-email-s.hauer@pengutronix.de>
References: <1371675222-25433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] menu: Align entries
To: barebox@lists.infradead.org

More than 9 menu entries in are single menu are not aligned anymore, like
this:

8 entry8
9 entry9
10 entry10

Use %2d in the printf format specifier to align more than 9 entries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/menu.c b/common/menu.c
index a672e59..1f0ffec 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -175,7 +175,7 @@ static void print_menu_entry(struct menu *m, struct menu_entry *me,
 		puts("   ");
 	}
 
-	printf(" %d: ", me->num);
+	printf(" %2d: ", me->num);
 	if (selected)
 		puts("\e[7m");
 
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
