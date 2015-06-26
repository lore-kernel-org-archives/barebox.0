Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8O73-000334-7Q
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:31:06 +0200
Message-Id: <1435303867-12889-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
References: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] commands: mount: detect the device to be mounted
To: Barebox List <barebox@lists.infradead.org>

Before mounting a device try to detect it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/commands/mount.c b/commands/mount.c
index 939e9bc..aa769d4 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -79,6 +79,8 @@ static int do_mount(int argc, char *argv[])
 		if (!strncmp(devstr, "/dev/", 5))
 			devstr += 5;
 
+		device_detect_by_name(devstr);
+
 		cdev = cdev_by_name(devstr);
 		if (!cdev)
 			return -ENOENT;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
