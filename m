Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg6E-000328-8q
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:36 +0000
Received: by mail-pf0-x242.google.com with SMTP id z24-v6so4248569pfe.7
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:12:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:28 -0700
Message-Id: <20180615041136.23492-23-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 19/27] console_simple: Make use of list_add_tail()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/console_simple.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 91b6cb6cd..f13f9d71a 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -10,8 +10,7 @@ int console_register(struct console_device *newcdev)
 	if (!list_empty(&console_list))
 		return -EBUSY;
 
-	console_list.prev = console_list.next = &newcdev->list;
-	newcdev->list.prev = newcdev->list.next = &console_list;
+	list_add_tail(&newcdev->list, &console_list);
 
 	if (newcdev->setbrg) {
 		newcdev->baudrate = CONFIG_BAUDRATE;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
