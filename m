Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YOYT3-0004Ms-AA
 for barebox@lists.infradead.org; Thu, 19 Feb 2015 21:17:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Feb 2015 22:16:41 +0100
Message-Id: <1424380601-5174-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] environment: Do not remove base env directory
To: Barebox List <barebox@lists.infradead.org>

When removing empty directories do not remove the base
directory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/environment.c b/common/environment.c
index 2639411..7e176b3 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -230,6 +230,9 @@ static int file_remove_action(const char *filename, struct stat *statbuf,
 static int dir_remove_action(const char *filename, struct stat *statbuf,
 		void *userdata, int depth)
 {
+	if (!depth)
+		return 1;
+
 	rmdir(filename);
 
 	return 1;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
