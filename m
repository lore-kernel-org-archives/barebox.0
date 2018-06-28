Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x236.google.com ([2607:f8b0:400e:c05::236])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYOxW-0000qf-M3
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 04:55:07 +0000
Received: by mail-pg0-x236.google.com with SMTP id c10-v6so1910458pgu.9
 for <barebox@lists.infradead.org>; Wed, 27 Jun 2018 21:54:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 27 Jun 2018 21:54:30 -0700
Message-Id: <20180628045436.16710-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180628045436.16710-1-andrew.smirnov@gmail.com>
References: <20180628045436.16710-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 04/10] bbu: Make bbu_find_handler_by_device() public
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bbu.c  | 2 +-
 include/bbu.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 11e44f4a7..d9b0c7ece 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -117,7 +117,7 @@ static struct bbu_handler *bbu_find_handler(const char *name)
 	return NULL;
 }
 
-static struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
+struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
 {
 	struct bbu_handler *handler;
 
diff --git a/include/bbu.h b/include/bbu.h
index def568e49..b6e7410db 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -44,6 +44,8 @@ void bbu_handlers_list(void);
 
 int bbu_handlers_iterate(int (*fn)(struct bbu_handler *, void *), void *);
 
+struct bbu_handler *bbu_find_handler_by_device(const char *devicepath);
+
 #ifdef CONFIG_BAREBOX_UPDATE
 
 int bbu_register_handler(struct bbu_handler *);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
