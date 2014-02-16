Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEtXa-0004b7-M6
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 04:41:20 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 08:40:45 +0400
Message-Id: <1392525650-5551-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
References: <1392525650-5551-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/7] boot command: Remove redundant assignment
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/boot.c b/commands/boot.c
index c4b49a9..ccf5827 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -308,7 +308,7 @@ static int boot(const char *name)
 {
 	struct blspec *blspec;
 	struct blspec_entry *entry;
-	int ret = -ENOENT;
+	int ret;
 
 	blspec = blspec_alloc();
 	ret = bootentry_parse_one(blspec, name);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
