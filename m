Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg480.qq.com ([59.36.132.97] helo=qq.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEU2j-0003mF-7I
 for barebox@lists.infradead.org; Tue, 23 Feb 2021 09:31:46 +0000
From: "=?ISO-8859-1?B?amFtZXN6eGo=?=" <jameszxj@gmail.com>
Mime-Version: 1.0
Date: Tue, 23 Feb 2021 17:31:22 +0800
Message-ID: <tencent_E28F8E77C0112E2550D5C300E9436E3CC309@qq.com>
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
Subject: [PATCH] extend the test in bbu_std_file_handler() to also check for
 -ENOTSUP.
To: =?ISO-8859-1?B?YmFyZWJveA==?= <barebox@lists.infradead.org>

extend the test in bbu_std_file_handler() to also check for  -ENOTSUP.

Signed-off-by: zhengxiaojun <jameszxj at gmail.com>
---
 common/bbu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 1279d56..ee9f78e 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -313,7 +313,7 @@ static int bbu_std_file_handler(struct bbu_handler *handler,
 		return fd;
 
 	ret = protect(fd, data->len, 0, 0);
-	if (ret && ret != -ENOSYS) {
+	if (ret && (ret != -ENOSYS) && (ret != -ENOTSUPP)) {
 		printf("unprotecting %s failed with %s\n", data->devicefile,
 				strerror(-ret));
 		goto err_close;
-- 
2.7.4
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
