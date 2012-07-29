Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvOE4-0004nj-NL
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 07:47:45 +0000
Received: by mail-pb0-f49.google.com with SMTP id rq13so8523321pbb.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 00:47:44 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 29 Jul 2012 17:41:50 +1000
Message-Id: <1343547714-32740-4-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] i2c: add platform_data for i2c_board_info
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 drivers/i2c/i2c.c |    1 +
 include/i2c/i2c.h |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 5df0d30..15f5507 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -250,6 +250,7 @@ struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	client = xzalloc(sizeof *client);
 	strcpy(client->dev.name, chip->type);
 	client->dev.type_data = client;
+	client->dev.platform_data = chip->platform_data;
 	client->adapter = adapter;
 	client->addr = chip->addr;
 
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index ccbf518..c3e1763 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -99,6 +99,7 @@ struct i2c_client {
 struct i2c_board_info {
 	char		type[I2C_NAME_SIZE];	/**< name of device */
 	unsigned short	addr;			/**< stored in i2c_client.addr */
+	void		*platform_data;		/**< platform data for device */
 };
 
 /**
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
