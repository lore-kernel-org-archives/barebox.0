Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejgge-0007kg-37
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 07:32:05 +0000
Received: by mail-lf0-x244.google.com with SMTP id f137so5010351lfe.4
 for <barebox@lists.infradead.org>; Wed, 07 Feb 2018 23:31:52 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Feb 2018 10:31:45 +0300
Message-Id: <20180208073145.2644-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] i2c: i2c_master_send(): don't leave flags uninitialized
To: barebox@lists.infradead.org

Leaving the flags field unitialized can lead to performing
read operation instead of write operation.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/i2c.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index e9e7575585..608f8289bf 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -117,6 +117,7 @@ int i2c_master_send(struct i2c_client *client, const char *buf, int count)
 	int ret;
 
 	msg.addr = client->addr;
+	msg.flags = 0;
 	msg.len = count;
 	msg.buf = (char *)buf;
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
