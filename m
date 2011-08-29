Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QyHIn-0005TK-1l
	for barebox@lists.infradead.org; Tue, 30 Aug 2011 05:56:01 +0000
Received: by bke17 with SMTP id 17so5532857bke.36
	for <barebox@lists.infradead.org>; Mon, 29 Aug 2011 22:55:58 -0700 (PDT)
Message-Id: <3c2cf8578f00f7200d39dc396856cb8a63e48d4d.1314683390.git.fercerpav@gmail.com>
From: Paul Fertser <fercerpav@gmail.com>
Date: Mon, 29 Aug 2011 16:25:42 +0400
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
Subject: [RFC][PATCH 1/3] spi: let master a chance to setup device before
	registering it
To: barebox@lists.infradead.org

Call setup() before registering the device because registering leads
to a probe routine of the slave device and that requires an
initialised master.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---

TBH, i do not fully understand the framework, so this and the following patches
might be rather wrong. But the issues i tried to fix were real indeed :)

 drivers/spi/spi.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index b561f9d..82393ea 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -80,7 +80,6 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	strcpy(proxy->dev.name, chip->name);
 	proxy->dev.type_data = proxy;
 	dev_add_child(master->dev, &proxy->dev);
-	status = register_device(&proxy->dev);
 
 	/* drivers may modify this initial i/o setup */
 	status = master->setup(proxy);
@@ -90,10 +89,10 @@ struct spi_device *spi_new_device(struct spi_master *master,
 		goto fail;
 	}
 
-	return proxy;
+	register_device(&proxy->dev);
 
+	return proxy;
 fail:
-	unregister_device(&proxy->dev);
 	free(proxy);
 	return NULL;
 }
-- 
1.5.2.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
