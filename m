Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfrEq-0004pG-Eo
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 12:04:37 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  4 Dec 2012 13:04:25 +0100
Message-Id: <1354622665-7824-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] password: fixed underflow on <backspace>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

due to missing/misplaced boundary check, deleting characters could
underflow the password buffer.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 common/password.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/common/password.c b/common/password.c
index a03e1db..d157a11 100644
--- a/common/password.c
+++ b/common/password.c
@@ -66,11 +66,14 @@ int password(unsigned char *passwd, size_t length, int flags, int timeout)
 			case CTL_CH('h'):
 			case KEY_DEL7:
 			case KEY_DEL:
-				if (flags & STAR && pos > 0)
-					puts("\b \b");
-				*buf = '\0';
-				buf--;
-				pos--;
+				if (pos > 0) {
+					if (flags & STAR)
+						puts("\b \b");
+
+					*buf = '\0';
+					buf--;
+					pos--;
+				}
 				continue;
 			default:
 				if (pos < length - 1) {
-- 
1.7.11.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
