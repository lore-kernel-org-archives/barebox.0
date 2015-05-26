Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxFZh-0001ux-QT
 for barebox@lists.infradead.org; Tue, 26 May 2015 14:11:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 May 2015 16:10:58 +0200
Message-Id: <1432649458-4350-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1432649458-4350-1-git-send-email-s.hauer@pengutronix.de>
References: <1432649458-4350-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] Documentation: blspec: Document blspec over NFS
To: Barebox List <barebox@lists.infradead.org>

We support booting blspec entries found on NFS servers, add documentation
for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index fd1ba56..ac44cba 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -197,6 +197,13 @@ The entry can be listed with the -l option:
 When on barebox the SD card shows up as ``mmc1`` then this entry can be booted with
 ``boot mmc1`` or with setting ``global.boot.default`` to ``mmc1``.
 
+A bootloader spec entry can also reside on an NFS server in which case a RFC2224
+compatible NFS URI string must be passed to the boot command:
+
+.. code-block:: sh
+
+  boot nfs://nfshost//path/
+
 Network boot
 ------------
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
