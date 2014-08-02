Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDS97-0005FR-AJ
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 05:46:21 +0000
Received: by mail-lb0-f174.google.com with SMTP id c11so3839375lbj.19
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 22:45:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  2 Aug 2014 09:45:54 +0400
Message-Id: <1406958354-12051-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] gen-dtb-s: make metadata binary fields always little-endian
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/gen-dtb-s | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 3e4158f..0db70f1 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -17,8 +17,8 @@ if [ "$imd" = "y" ]; then
 	if [ "$compat" != "notfound" ]; then
 
 		compatlen=$($FDTGET -t s "$dtb" / compatible | wc -c)
-		echo ".int 0x640c8005"
-		echo ".int " $compatlen
+		echo ".byte 0x05, 0x80, 0x0c, 0x64"
+		python -c "print(\".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\\n\" % ($compatlen & 0xff, ($compatlen >> 8) & 0xff, ($compatlen >> 16) & 0xff, ($compatlen >> 24) & 0xff))"
 		echo ".byte " $compat
 		echo ".balign 4"
 	fi
@@ -27,8 +27,8 @@ if [ "$imd" = "y" ]; then
 
 	if [ "$model" != "notfound" ]; then
 		modellen=$($FDTGET -t s "$dtb" / model | wc -c)
-		echo ".int 0x640c8004"
-		echo ".int " $modellen
+		echo ".byte 0x04, 0x80, 0x0c, 0x64"
+		python -c "print(\".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x\\n\" % ($modellen & 0xff, ($modellen >> 8) & 0xff, ($modellen >> 16) & 0xff, ($modellen >> 24) & 0xff))"
 		echo ".byte " $model
 		echo ".balign 4"
 	fi
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
