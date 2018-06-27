Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x236.google.com ([2607:f8b0:400e:c01::236])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXyt0-0000Gm-RE
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 01:04:45 +0000
Received: by mail-pl0-x236.google.com with SMTP id s24-v6so172079plq.6
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 18:04:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 18:04:06 -0700
Message-Id: <20180627010412.20646-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180627010412.20646-1-andrew.smirnov@gmail.com>
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 04/10] bbu: Make bbu_find_handler_by_device() public
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
