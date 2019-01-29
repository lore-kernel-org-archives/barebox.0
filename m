Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNK0-0005Kb-A7
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id d72so8352067pga.9
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:49 -0800
Message-Id: <20190129065549.29161-20-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 19/19] libfile: Fix incorrect lseek check in
 open_and_lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

We can't use "int" to caputre output of lseek which is "loff_t", since
former does not cover all of the range of the values of the latter and
any pos >= 0xffff_ffff will result in a false positive "failure". To
avoid that replace the check to check that new position matches what
was requested.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 lib/libfile.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index 8f2aed230..9a223d232 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -556,8 +556,7 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
 		}
 	}
 
-	ret = lseek(fd, pos, SEEK_SET);
-	if (ret == -1) {
+	if (lseek(fd, pos, SEEK_SET) != pos) {
 		perror("lseek");
 		close(fd);
 		return -errno;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
