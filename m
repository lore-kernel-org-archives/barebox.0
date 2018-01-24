Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeFkr-0005Ti-Si
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 07:46:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Jan 2018 08:45:28 +0100
Message-Id: <20180124074534.7966-2-s.hauer@pengutronix.de>
In-Reply-To: <20180124074534.7966-1-s.hauer@pengutronix.de>
References: <20180124074534.7966-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] startup: create /tmp
To: Barebox List <barebox@lists.infradead.org>

Some commands create temporary files in /. Create /tmp to offer
these commands an appropriate place for storing temporary files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/startup.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/startup.c b/common/startup.c
index 432be67cd6..8553849cb3 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -54,6 +54,7 @@ static int mount_root(void)
 {
 	mount("none", "ramfs", "/", NULL);
 	mkdir("/dev", 0);
+	mkdir("/tmp", 0);
 	mount("none", "devfs", "/dev", NULL);
 
 	if (IS_ENABLED(CONFIG_FS_EFIVARFS)) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
