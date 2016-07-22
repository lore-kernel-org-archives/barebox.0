Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp0-0005HZ-RX
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:18 +0200
Message-Id: <1469191472-14491-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/18] boot: Call blspec_scan_directory() only on strings
 containing an absolute path
To: Barebox List <barebox@lists.infradead.org>

Avoids an unnecessary "Nothing bootable found on..." warning.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 152615f..719ad95 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -202,9 +202,12 @@ static int bootentry_parse_one(struct blspec *blspec, const char *name)
 		ret = blspec_scan_devicename(blspec, name);
 		if (ret > 0)
 			found += ret;
-		ret = blspec_scan_directory(blspec, name);
-		if (ret > 0)
-			found += ret;
+
+		if (*name == '/') {
+			ret = blspec_scan_directory(blspec, name);
+			if (ret > 0)
+				found += ret;
+		}
 	}
 
 	if (!found) {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
