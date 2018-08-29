Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuunz-0001Qd-9j
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 07:22:20 +0000
Received: by mail-pg1-x52d.google.com with SMTP id v66-v6so1927710pgb.10
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 00:22:08 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 29 Aug 2018 00:21:53 -0700
Message-Id: <20180829072153.13428-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180829072153.13428-1-andrew.smirnov@gmail.com>
References: <20180829072153.13428-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] commands: barebox-update: Improve nonexistent handler
 reporting
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert code printing said error message to be more informative and
avoid printing <NULL> for handler name.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/barebox-update.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index f76aa19a5..89aa9fddb 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -63,7 +63,15 @@ static int do_barebox_update(int argc, char *argv[])
 	}
 
 	if (!barebox_update_handler_exists(&data)) {
-		printf("handler '%s' does not exist\n", data.handler_name);
+		if (data.handler_name)
+			printf("handler '%s' does not exist\n",
+			       data.handler_name);
+		else if (data.devicefile)
+			printf("handler for '%s' does not exist\n",
+			       data.devicefile);
+		else
+			printf("default handler does not exist\n");
+
 		print_handlers_list();
 		return COMMAND_ERROR;
 	}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
