Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f46.google.com ([74.125.83.46])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UA1CY-0001KG-8u
 for barebox@lists.infradead.org; Mon, 25 Feb 2013 16:46:55 +0000
Received: by mail-ee0-f46.google.com with SMTP id e49so1468317eek.5
 for <barebox@lists.infradead.org>; Mon, 25 Feb 2013 08:46:51 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Mon, 25 Feb 2013 17:46:48 +0100
Message-Id: <1361810808-6288-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v2] menu: fix remove superfluous newline: change puts() ->
 printf("%s", )
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

Fix previous commit:
638f91b "fix compiler warnings: use puts() instead of printf()".

Because puts() function add a newline, use instead printf("%s", ).

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Vicente Bergas <vicencb@gmail.com>
---

Notes:
    v2:
     - corrected two typos in the description

 common/menu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/menu.c b/common/menu.c
index 30dced7..a672e59 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -274,7 +274,7 @@ int menu_show(struct menu *m)
 			printf("Auto Select in");
 		} else {
 			auto_display_len = strlen(m->auto_display);
-			puts(m->auto_display);
+			printf("%s", m->auto_display);
 		}
 		printf(" %2d", countdown--);
 	}
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
