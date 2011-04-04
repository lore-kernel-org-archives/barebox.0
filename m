Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jXQ-00025l-KF
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:09:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:09:40 +0200
Message-Id: <1301922585-8144-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
References: <1301922585-8144-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] driver: Do not forget to remove device from active list
To: barebox@lists.infradead.org

Otherwise the remove function will be called twice leading
to bad effects.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/driver.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/lib/driver.c b/lib/driver.c
index ff92e44..4c10a49 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -147,6 +147,7 @@ int unregister_device(struct device_d *old_dev)
 		old_dev->bus->remove(old_dev);
 
 	list_del(&old_dev->list);
+	list_del(&old_dev->active);
 
 	/* remove device from parents child list */
 	if (old_dev->parent)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
