Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXCaa-0000PJ-Jd
 for barebox@lists.infradead.org; Sun, 24 Jun 2018 21:30:30 +0000
Received: by mail-pg0-x241.google.com with SMTP id z1-v6so5151275pgv.12
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 14:30:18 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 24 Jun 2018 14:29:57 -0700
Message-Id: <20180624212959.27468-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180624212959.27468-1-andrew.smirnov@gmail.com>
References: <20180624212959.27468-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] commands: mount: Make use of devpath_to_name()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/mount.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 4cf1179b7..834b06386 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -76,10 +76,7 @@ static int do_mount(int argc, char *argv[])
 		struct cdev *cdev;
 		const char *path;
 
-		if (!strncmp(devstr, "/dev/", 5))
-			devstr += 5;
-
-		device_detect_by_name(devstr);
+		device_detect_by_name(devpath_to_name(devstr));
 
 		cdev = cdev_by_name(devstr);
 		if (!cdev)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
