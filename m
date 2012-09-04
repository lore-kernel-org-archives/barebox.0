Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z8O-00082a-E1
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:50:06 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 21C59DC5B07
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:55:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  4 Sep 2012 21:50:05 +0200
Message-Id: <1346788217-16042-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120904194720.GB32603@game.jcrosoft.org>
 <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/19] fs: introduce get_mounted_path to get the path where a
 file is mounted
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |    9 +++++++++
 include/fs.h |    2 ++
 2 files changed, 11 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 5bfd713..7e670ec 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -243,6 +243,15 @@ static struct fs_device_d *get_fsdevice_by_path(const char *path)
 	return fs_dev_root;
 }
 
+char *get_mounted_path(const char *path)
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
index 07976d2..2c8b13b 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -168,6 +168,8 @@ void *read_file(const char *filename, size_t *size);
 char *normalise_path(const char *path);
 char *normalise_link(const char *pathname, const char* symlink);
 
+char *get_mounted_path(const char *path);
+
 /* Register a new filesystem driver */
 int register_fs_driver(struct fs_driver_d *fsdrv);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
