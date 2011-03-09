Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxL8l-00058f-S5
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 15:17:32 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  9 Mar 2011 16:17:24 +0100
Message-Id: <1299683846-20616-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
References: <1299683846-20616-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 3/5] Add generic routine for environment partition handling
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Juergen Beisert <jbe@pengutronix.de>
---
 common/environment.c  |   34 ++++++++++++++++++++++++++++++++++
 include/environment.h |    1 +
 2 files changed, 35 insertions(+), 0 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index eb8278f..3270a08 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -93,6 +93,40 @@ out:
 	return 1;
 }
 
+#ifdef __BAREBOX__
+int file_check_and_erase(char *filename)
+{
+	int fd;
+	int ret;
+
+	fd = open(filename, O_WRONLY | O_CREAT);
+	if (fd < 0) {
+		printf("could not open %s: %s\n", filename, errno_str());
+		return errno;
+	}
+
+	ret = protect(fd, ~0, 0, 0);
+
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != -ENOSYS) {
+		printf("could not unprotect %s: %s\n", filename, errno_str());
+		return errno;
+	}
+
+	ret = erase(fd, ~0, 0);
+
+	/* ENOSYS is no error here, many devices do not need it */
+	if (ret && errno != -ENOSYS) {
+		printf("could not erase %s: %s\n", filename, errno_str());
+		close(fd);
+		return errno;
+	}
+
+	close(fd);
+	return 0;
+}
+#endif /* __BAREBOX__ */
+
 /**
  * Make the current environment persistent
  * @param[in] filename where to store
diff --git a/include/environment.h b/include/environment.h
index 2b1f5d9..b2b95e0 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -58,6 +58,7 @@ int export(const char *);
 struct stat;
 int file_size_action(const char *, struct stat *, void *, int);
 int file_save_action(const char *, struct stat *, void *, int);
+int file_check_and_erase(char *filename);
 
 #endif /* __BAREBOX__ */
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
