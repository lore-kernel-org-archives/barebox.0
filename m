Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qssof-00069K-MP
	for barebox@lists.infradead.org; Mon, 15 Aug 2011 08:46:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Aug 2011 10:46:29 +0200
Message-Id: <1313397992-3065-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
References: <1313397992-3065-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] console: make console device a child of the hardware
	device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/common/console.c b/common/console.c
index d60e57f..1f6ee93 100644
--- a/common/console.c
+++ b/common/console.c
@@ -132,6 +132,8 @@ int console_register(struct console_device *newcdev)
 	dev->id = -1;
 	strcpy(dev->name, "cs");
 	dev->type_data = newcdev;
+	if (newcdev->dev)
+		dev_add_child(newcdev->dev, dev);
 	register_device(dev);
 
 	if (newcdev->setbrg) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
