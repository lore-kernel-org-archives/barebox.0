Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdXCe-0006Hn-7q
	for barebox@lists.infradead.org; Fri, 14 Jan 2011 00:07:40 +0000
Received: by mail-iw0-f177.google.com with SMTP id 38so2114546iwn.36
	for <barebox@lists.infradead.org>; Thu, 13 Jan 2011 16:07:40 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri, 14 Jan 2011 11:07:00 +1100
Message-Id: <1294963621-4177-2-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1294963621-4177-1-git-send-email-marc@cpdesign.com.au>
References: <1294963621-4177-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 1/2] i2c: add platform_data for i2c_board_info
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
index 2507d68..da61d01 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -98,6 +98,7 @@ struct i2c_client {
 struct i2c_board_info {
 	char		type[I2C_NAME_SIZE];	/**< name of device */
 	unsigned short	addr;			/**< stored in i2c_client.addr */
+	void		*platform_data;		/**< platform data for device */
 };
 
 /**
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
