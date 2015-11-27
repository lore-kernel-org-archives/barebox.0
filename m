Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22d.google.com ([2a00:1450:4010:c07::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a2D6Z-0004g8-Cw
 for barebox@lists.infradead.org; Fri, 27 Nov 2015 07:06:04 +0000
Received: by lffu14 with SMTP id u14so119217865lff.1
 for <barebox@lists.infradead.org>; Thu, 26 Nov 2015 23:05:41 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Nov 2015 10:05:35 +0300
Message-Id: <1448607935-25129-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] environment: support env on at24 eeprom
To: barebox@lists.infradead.org

unprotect(), erase() and protect() return EOPNOTSUPP errno code
for at24 I2C eeproms, so envfs_save() doesn't store data
to these eeproms without this patch.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/environment.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index f6fd781..f412e62 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -324,16 +324,16 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	ret = protect(envfd, ~0, 0, 0);
 
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != ENOSYS) {
+	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
+	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
 		printf("could not unprotect %s: %s\n", filename, errno_str());
 		goto out;
 	}
 
 	ret = erase(envfd, ~0, 0);
 
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != ENOSYS) {
+	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
+	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
 		printf("could not erase %s: %s\n", filename, errno_str());
 		goto out;
 	}
@@ -355,8 +355,8 @@ int envfs_save(const char *filename, const char *dirname, unsigned flags)
 
 	ret = protect(envfd, ~0, 0, 1);
 
-	/* ENOSYS is no error here, many devices do not need it */
-	if (ret && errno != ENOSYS) {
+	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
+	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
 		printf("could not protect %s: %s\n", filename, errno_str());
 		goto out;
 	}
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
