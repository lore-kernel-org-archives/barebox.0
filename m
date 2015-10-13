Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zlumd-0003jO-Qc
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 08:18:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Oct 2015 10:17:45 +0200
Message-Id: <1444724265-15030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fcntl: Fix O_CREAT clashing with O_RWSIZE_8
To: Barebox List <barebox@lists.infradead.org>

O_CREAT and O_RWSIZE_8 are both defined as 0100. Fix this by moving the
O_RWSIZE_* flags to unused bits.

This bug leads to incomplete writes when the destination file is created
and mem_write is involved, for example with the memcpy command:

memcpy -s /some/file -d /dev/ram0 0 0 10

In this case only 8 bytes will be copied and it will be done using 8
byte accesses which may not work properly if the destination is not
sufficiently aligned, i.e.:

memcpy -s /some/file -d /dev/ram0 0 1 8

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
 include/fcntl.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/fcntl.h b/include/fcntl.h
index 501b415..12f370a 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -17,12 +17,12 @@
 #define O_NOFOLLOW	00400000	/* don't follow links */
 
 /* barebox additional flags */
-#define O_RWSIZE_MASK	00000170
-#define O_RWSIZE_SHIFT	3
-#define O_RWSIZE_1      00000010
-#define O_RWSIZE_2      00000020
-#define O_RWSIZE_4      00000040
-#define O_RWSIZE_8      00000100
+#define O_RWSIZE_MASK	017000000
+#define O_RWSIZE_SHIFT	18
+#define O_RWSIZE_1	001000000
+#define O_RWSIZE_2	002000000
+#define O_RWSIZE_4	004000000
+#define O_RWSIZE_8	010000000
 
 #define F_DUPFD		0	/* dup */
 #define F_GETFD		1	/* get close_on_exec */
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
