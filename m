Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YbX2l-0002r6-O1
 for barebox@lists.infradead.org; Fri, 27 Mar 2015 16:23:36 +0000
Received: by lbdc10 with SMTP id c10so13232606lbd.2
 for <barebox@lists.infradead.org>; Fri, 27 Mar 2015 09:23:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 27 Mar 2015 19:23:04 +0300
Message-Id: <1427473384-30472-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! command: add hmac sum supportfor md5, sha1, sha224,
 sha256, sha384, sha512
To: barebox@lists.infradead.org

---
 commands/hashsum.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/hashsum.c b/commands/hashsum.c
index e2dc70e..8d3694f 100644
--- a/commands/hashsum.c
+++ b/commands/hashsum.c
@@ -36,7 +36,7 @@ static int do_hash(char *algo, int argc, char *argv[])
 	size_t keylen = 0;
 	int opt, ret;
 
-	while((opt = getopt(argc, argv, "h:")) > 0) {
+	while ((opt = getopt(argc, argv, "h:")) > 0) {
 		switch(opt) {
 		case 'h':
 			key = optarg;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
