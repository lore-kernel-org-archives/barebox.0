Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a797x-00006T-S7
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 21:51:54 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 10 Dec 2015 21:50:51 +0000
Message-ID: <1449784257.26955.82.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <5A8FC7B931BD2C45829C4C3785466962@kymetacorp.com>
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
Subject: [PATCH] bootstrap: constify strings
To: barebox <barebox@lists.infradead.org>

Various parameters for device names, etc.  should be const strings.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 include/bootstrap.h   | 8 ++++----
 lib/bootstrap/devfs.c | 2 +-
 lib/bootstrap/disk.c  | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/bootstrap.h b/include/bootstrap.h
index 9863ff4..d3ee6be 100644
--- a/include/bootstrap.h
+++ b/include/bootstrap.h
@@ -15,10 +15,10 @@ typedef void (*kernel_entry_func)(int zero, int arch, void *params);
 void bootstrap_boot(kernel_entry_func func, bool barebox);
 
 #ifdef CONFIG_BOOTSTRAP_DEVFS
-void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
+void* bootstrap_read_devfs(const char *devname, bool use_bb, int offset,
 			   int default_size, int max_size);
 #else
-static inline void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
+static inline void* bootstrap_read_devfs(const char *devname, bool use_bb, int offset,
 			   int default_size, int max_size)
 {
 	return NULL;
@@ -26,9 +26,9 @@ static inline void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
 #endif
 
 #ifdef CONFIG_BOOTSTRAP_DISK
-void* bootstrap_read_disk(char *devname, char *fstype);
+void* bootstrap_read_disk(const char *devname, const char *fstype);
 #else
-static inline void* bootstrap_read_disk(char *devname, char *fstype)
+static inline void* bootstrap_read_disk(const char *devname, const char *fstype)
 {
 	return NULL;
 }
diff --git a/lib/bootstrap/devfs.c b/lib/bootstrap/devfs.c
index 5a64477..6a3dd76 100644
--- a/lib/bootstrap/devfs.c
+++ b/lib/bootstrap/devfs.c
@@ -80,7 +80,7 @@ static unsigned int get_image_size(void *head)
 }
 #endif
 
-void* bootstrap_read_devfs(char *devname, bool use_bb, int offset,
+void* bootstrap_read_devfs(const char *devname, bool use_bb, int offset,
 			   int default_size, int max_size)
 {
 	int ret;
diff --git a/lib/bootstrap/disk.c b/lib/bootstrap/disk.c
index ebf9ee5..a55d5d7 100644
--- a/lib/bootstrap/disk.c
+++ b/lib/bootstrap/disk.c
@@ -14,12 +14,12 @@
 #include <libfile.h>
 #include <bootstrap.h>
 
-void* bootstrap_read_disk(char *dev, char *fstype)
+void* bootstrap_read_disk(const char *dev, const char *fstype)
 {
 	int ret;
 	void *buf;
 	int len;
-	char *path = "/";
+	const char *path = "/";
 
 	ret = mount(dev, fstype, path, NULL);
 	if (ret) {
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
