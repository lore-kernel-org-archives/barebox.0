Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKlx-0004P5-0E
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:04:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:20 +0100
Message-Id: <1383573870-11325-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/11] kernel-install: Add missing error messages
To: barebox@lists.infradead.org

In some cases kernel-install can fail without printing anything. Add
error messages for these cases.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/kernel-install.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/scripts/kernel-install.c b/scripts/kernel-install.c
index 6086357..459b45d 100644
--- a/scripts/kernel-install.c
+++ b/scripts/kernel-install.c
@@ -533,6 +533,7 @@ static char *mount_path(char *in_path, int *newmount)
 			*newmount = 1;
 			return out_path;
 		}
+		fprintf(stderr, "cannot mount %s\n", in_path);
 		return NULL;
 	case MOUNT_MOUNT:
 		out_path = mount_path_mount(in_path);
@@ -540,6 +541,7 @@ static char *mount_path(char *in_path, int *newmount)
 			*newmount = 1;
 			return out_path;
 		}
+		fprintf(stderr, "cannot mount %s\n", in_path);
 		return NULL;
 	}
 
@@ -789,12 +791,18 @@ static int do_add_kernel(void)
 	}
 
 	ret = make_directory(conf_dir);
-	if (ret)
+	if (ret) {
+		fprintf(stderr, "failed to create directory %s: %s\n",
+				conf_dir, strerror(errno));
 		return ret;
+	}
 
 	ret = make_directory(host_images_dir);
-	if (ret)
+	if (ret) {
+		fprintf(stderr, "failed to create directory %s: %s\n",
+				host_images_dir, strerror(errno));
 		return ret;
+	}
 
 	fd = open(conf_path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
 	if (fd < 0) {
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
