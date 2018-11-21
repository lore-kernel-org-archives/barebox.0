Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPRA7-0006vs-6G
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 11:59:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 Nov 2018 12:59:04 +0100
Message-Id: <20181121115904.26371-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] mount command: Fix "mount /dev/<devname>"
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We used to put the device name without the "/dev/" component into
device_detect_by_name() and cdev_by_name(). Since 8ca7053b3ff we only
put the device name into device_detect_by_name(), but cdev_by_name()
still gets the full path. The result is that a "mount /dev/<devname>" no
longer works. Fix this.

Fixes: 8ca7053b3ff ("commands: mount: Make use of devpath_to_name()")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/mount.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/commands/mount.c b/commands/mount.c
index 834b06386b..f523f6b3b6 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -76,7 +76,9 @@ static int do_mount(int argc, char *argv[])
 		struct cdev *cdev;
 		const char *path;
 
-		device_detect_by_name(devpath_to_name(devstr));
+		devstr = devpath_to_name(devstr);
+
+		device_detect_by_name(devstr);
 
 		cdev = cdev_by_name(devstr);
 		if (!cdev)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
