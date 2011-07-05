Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QeDu9-0008Mz-A0
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 22:15:41 +0000
Received: by wwf22 with SMTP id 22so4655408wwf.18
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 15:14:49 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Wed,  6 Jul 2011 00:14:49 +0200
Message-Id: <1309904090-9100-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1309904090-9100-1-git-send-email-franck.jullien@gmail.com>
References: <1309904090-9100-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] spi: unregister dev if master->setup fails
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

If the device setup executed by the spi master fails,
unregister the created device.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/spi/spi.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 6456897..aefb916 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -91,6 +91,7 @@ struct spi_device *spi_new_device(struct spi_master *master,
 	return proxy;
 
 fail:
+	unregister_device(&proxy->dev);
 	free(proxy);
 	return NULL;
 }
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
