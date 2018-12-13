Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXL91-00051i-CM
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:10:52 +0000
Received: by mail-pg1-x543.google.com with SMTP id d72so598839pga.9
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:10:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:31 -0800
Message-Id: <20181213071033.30932-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] serial: amba-pl011: Fix regulator_get() return check
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

NULL is used to designate a dummy regulator, so it it should be safe
to use against regulator_enable(). Any value that would retrun true
for IS_ERR(), OTOH, is not. Such value would also pass "if (r)" check
without any problems.

Fix the code to use !IS_ERR() instead.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/amba-pl011.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 4c4067d5b..ce40f840f 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -185,7 +185,7 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 	struct regulator *r;
 
 	r = regulator_get(&dev->dev, NULL);
-	if (r) {
+	if (!IS_ERR(r)) {
 		int ret;
 
 		ret = regulator_enable(r);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
