Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kaq-0004UU-RY
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:58:13 +0000
Received: by mail-pf1-x441.google.com with SMTP id s12so6855218pfe.6
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:58:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:58:05 -0700
Message-Id: <20190907235805.23273-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190907235805.23273-1-andrew.smirnov@gmail.com>
References: <20190907235805.23273-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/2] mfd: da9063: Drop unused 'priority' variable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/da9063.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index e2aa9211e6..5f77e5935b 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -161,7 +161,6 @@ static void da9063_detect_reset_source(struct da9063 *priv)
 {
 	int ret;
 	u8 val;
-	unsigned int priority;
 	enum reset_src_type type;
 
 	ret = i2c_read_reg(priv->client, DA9063_REG_FAULT_LOG, &val, 1);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
