Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aO11w-0005XE-F5
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 10:39:25 +0000
Received: by mail-wm0-x241.google.com with SMTP id u188so16556707wmu.0
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2016 02:39:03 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue, 26 Jan 2016 11:38:35 +0100
Message-Id: <1453804717-6563-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 1/3] fs: move struct timespec to include/linux/time.h
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/ubifs/ubifs.h     | 7 -------
 include/linux/time.h | 5 +++++
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/fs/ubifs/ubifs.h b/fs/ubifs/ubifs.h
index c025d34..6b7139c 100644
--- a/fs/ubifs/ubifs.h
+++ b/fs/ubifs/ubifs.h
@@ -77,13 +77,6 @@ void iput(struct inode *inode);
 #define atomic_long_dec(a)
 #define	atomic_long_sub(a, b)
 
-/* linux/include/time.h */
-
-struct timespec {
-	time_t	tv_sec;		/* seconds */
-	long	tv_nsec;	/* nanoseconds */
-};
-
 /* linux/include/dcache.h */
 
 /*
diff --git a/include/linux/time.h b/include/linux/time.h
index 3942e82..3a1bb50 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -5,4 +5,9 @@
 
 #define NSEC_PER_SEC	1000000000L
 
+struct timespec {
+	time_t	tv_sec;		/* seconds */
+	long	tv_nsec;	/* nanoseconds */
+};
+
 #endif
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
