Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kaq-0004UG-DU
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:58:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id b13so6835195pfo.8
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:58:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:58:04 -0700
Message-Id: <20190907235805.23273-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] mfd: da9053: Drop unused 'priority' variable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/da9053.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mfd/da9053.c b/drivers/mfd/da9053.c
index f65f3e0bb2..1faba813be 100644
--- a/drivers/mfd/da9053.c
+++ b/drivers/mfd/da9053.c
@@ -214,7 +214,6 @@ static int da9053_set_timeout(struct watchdog *wd, unsigned timeout)
 
 static void da9053_detect_reset_source(struct da9053_priv *da9053)
 {
-	unsigned int priority;
 	enum reset_src_type type;
 	int ret;
 	u8 val;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
