Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI9iU-0005UH-0w
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:05:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 15 Sep 2020 14:05:41 +0200
Message-Id: <20200915120541.22508-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200602075757.4734-2-a.fatoum@pengutronix.de>
References: <20200602075757.4734-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! restart: give all restart handlers a descriptive name
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

As suggested by Sascha, allow users to pass automatically allocated
name.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/restart.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/restart.c b/common/restart.c
index 3791337a7505..7bd39de8c318 100644
--- a/common/restart.c
+++ b/common/restart.c
@@ -64,7 +64,7 @@ int restart_handler_register_fn(const char *name,
 
 	rst = xzalloc(sizeof(*rst));
 
-	rst->name = name;
+	rst->name = xstrdup(name);
 	rst->restart = restart_fn;
 
 	ret = restart_handler_register(rst);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
