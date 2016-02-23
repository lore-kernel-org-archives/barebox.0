Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22c.google.com ([2a00:1450:4010:c07::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYJRS-0004HL-6f
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 20:20:19 +0000
Received: by mail-lf0-x22c.google.com with SMTP id j78so123004285lfb.1
 for <barebox@lists.infradead.org>; Tue, 23 Feb 2016 12:19:57 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 23 Feb 2016 23:19:47 +0300
Message-Id: <1456258787-28076-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands: magicvar: make locally used magicvar_find() static
To: barebox@lists.infradead.org

The patch fixes this compiler's warning:

    commands/magicvar.c:27:22: warning: no previous prototype for 'magicvar_find' [-Wmissing-prototypes]
     struct magicvar_dyn *magicvar_find(const char *name)
                          ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/magicvar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/magicvar.c b/commands/magicvar.c
index 6737eb5..8740784 100644
--- a/commands/magicvar.c
+++ b/commands/magicvar.c
@@ -24,7 +24,7 @@ static void magicvar_print_one(struct magicvar_dyn *md, int verbose)
 	}
 }
 
-struct magicvar_dyn *magicvar_find(const char *name)
+static struct magicvar_dyn *magicvar_find(const char *name)
 {
 	struct magicvar_dyn *md;
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
