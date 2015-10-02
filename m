Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZhsPa-0001kQ-RS
 for barebox@lists.infradead.org; Fri, 02 Oct 2015 04:57:39 +0000
Received: by lbwr8 with SMTP id r8so20453037lbw.2
 for <barebox@lists.infradead.org>; Thu, 01 Oct 2015 21:57:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  2 Oct 2015 07:56:51 +0300
Message-Id: <1443761811-15621-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] commands: ls: use 14 digits for filesize
To: barebox@lists.infradead.org

10 digits are not enough for modern SATA/USB storages. E.g.:

    barebox> ls -l /dev/
    cr-------- 500107862016 ata0
    cr--------   33554432 ata0.0
    cr-------- 500073258496 ata0.1
    cr-------- 32224837632 disk0
    cr--------   67108864 disk0.0
    cr-------- 32156680192 disk0.1

14 digits look much better. E.g.:

    barebox> ls -l /dev/
    cr--------   500107862016 ata0
    cr--------       33554432 ata0.0
    cr--------   500073258496 ata0.1
    cr--------    32224837632 disk0
    cr--------       67108864 disk0.0
    cr--------    32156680192 disk0.1

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/ls.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ls.c b/commands/ls.c
index 1a5925d..09437af 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -32,7 +32,7 @@ static void ls_one(const char *path, const char* fullname, struct stat *s)
 	unsigned int namelen = strlen(path);
 
 	mkmodestr(s->st_mode, modestr);
-	printf("%s %10llu %*.*s", modestr, s->st_size, namelen, namelen, path);
+	printf("%s %14llu %*.*s", modestr, s->st_size, namelen, namelen, path);
 
 	if (S_ISLNK(s->st_mode)) {
 		char realname[PATH_MAX];
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
