Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2aP5-00037I-7o
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 06:21:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  3 Jul 2014 08:21:30 +0200
Message-Id: <1404368490-24902-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] automount: check for recursive automount
To: barebox@lists.infradead.org

automount_mount calls run_command which may trigger an automount
again. This results in an endless loop. A simple way to trigger
this is:

mkdir /x; automount /x false; cd /x; something

Use a static variable to detect if we are currently in automount_mount()
and bail out if we are.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index b0ac918..dd410b7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -409,6 +409,12 @@ static void automount_mount(const char *path, int instat)
 {
 	struct automount *am;
 	int ret;
+	static int in_automount;
+
+	if (in_automount)
+		return;
+
+	in_automount++;
 
 	list_for_each_entry(am, &automount_list, list) {
 		int len_path = strlen(path);
@@ -444,8 +450,10 @@ static void automount_mount(const char *path, int instat)
 		else
 			automount_remove(am->path);
 
-		return;
+		break;
 	}
+
+	in_automount--;
 }
 
 BAREBOX_MAGICVAR(automount_path, "mountpath passed to automount scripts");
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
