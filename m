Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEHOv-0000iM-IS
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 10:53:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat,  9 Mar 2013 11:53:10 +0100
Message-Id: <1362826391-16215-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] fs: allocate FILE table dynamically
To: barebox@lists.infradead.org

Some systems are runnignfrom a very limited SRAM, but have a huge
malloc space in SDRAM. The bss normally is in SRAM, so we should
avoid having big structures there. The FILE table is 5120 bytes
big, so allocate it dynamically instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 6346112..7e2fb78 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -119,14 +119,19 @@ EXPORT_SYMBOL(mkmodestr);
 
 static char *cwd;
 
-static int init_cwd(void)
+static FILE *files;
+
+static int init_fs(void)
 {
 	cwd = xzalloc(PATH_MAX);
 	*cwd = '/';
+
+	files = xzalloc(sizeof(FILE) * MAX_FILES);
+
 	return 0;
 }
 
-postcore_initcall(init_cwd);
+postcore_initcall(init_fs);
 
 char *normalise_link(const char *pathname, const char *symlink)
 {
@@ -268,8 +273,6 @@ char *get_mounted_path(const char *path)
 	return fdev->path;
 }
 
-static FILE files[MAX_FILES];
-
 static FILE *get_file(void)
 {
 	int i;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
