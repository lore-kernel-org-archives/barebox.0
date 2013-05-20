Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeWQu-0000ZX-Nk
 for barebox@lists.infradead.org; Mon, 20 May 2013 20:11:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 22:11:20 +0200
Message-Id: <1369080684-11138-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
References: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] i2c: Add missing result check
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 4862df3..488b636 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -260,6 +260,10 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	client->dev.parent = &adapter->dev;
 
 	status = register_device(&client->dev);
+	if (status) {
+		free(client);
+		return NULL;
+	}
 
 #if 0
 	/* drivers may modify this initial i/o setup */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
