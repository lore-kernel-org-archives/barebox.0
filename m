Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxFZh-0001up-QR
 for barebox@lists.infradead.org; Tue, 26 May 2015 14:11:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 May 2015 16:10:57 +0200
Message-Id: <1432649458-4350-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] Documentation: blspec: Fix typo
To: Barebox List <barebox@lists.infradead.org>

The device index is missing in the example, add it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 5ef1254..fd1ba56 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -194,7 +194,7 @@ The entry can be listed with the -l option:
         options:    console=ttymxc0,115200 root=PARTUUID=0007CB20-01
         linux:      11ab7c89d02c4f66a4e2474ea25b2b84.15/linux
 
-When on barebox the SD card shows up as ``mmc`` then this entry can be booted with
+When on barebox the SD card shows up as ``mmc1`` then this entry can be booted with
 ``boot mmc1`` or with setting ``global.boot.default`` to ``mmc1``.
 
 Network boot
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
