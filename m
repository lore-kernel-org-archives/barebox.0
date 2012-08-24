Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqV-0005pm-8x
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:13 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C4FA4DC0FA7
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:06 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:06 +0200
Message-Id: <1345783818-28784-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/18] fs: introduce get_mounted_path to get the path where a
 file is mounted
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |    9 +++++++++
 include/fs.h |    2 ++
 2 files changed, 11 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index ca6340c..8ec368c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -242,6 +242,15 @@ static struct fs_device_d *get_fsdevice_by_path(const char *path)
 	return fs_dev_root;
 }
 
+char* get_mounted_path(const char *path)
+{
+	struct fs_device_d *fdev;
+
+	fdev = get_fsdevice_by_path(path);
+
+	return fdev->path;
+}
+
 static FILE files[MAX_FILES];
 
 static FILE *get_file(void)
diff --git a/include/fs.h b/include/fs.h
index 263823a..19b4418 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -174,6 +174,8 @@ void *read_file(const char *filename, size_t *size);
 char *normalise_path(const char *path);
 char *normalise_link(const char *pathname, const char* symlink);
 
+char* get_mounted_path(const char *path);
+
 /* Register a new filesystem driver */
 int register_fs_driver(struct fs_driver_d *fsdrv);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
