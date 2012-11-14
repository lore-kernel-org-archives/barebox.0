Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYYEF-00022Y-0Q
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 08:21:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Nov 2012 09:21:41 +0100
Message-Id: <1352881301-9744-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] replace barebox* in .gitignore with individual files
To: barebox@lists.infradead.org

This effectively reverts:

| commit f9df22b002af99532b66360e08128ea3e7e82a97
| Author: Alexander Shiyan <shc_work@mail.ru>
| Date:   Mon Oct 8 10:35:04 2012 +0400
|
|    Add more generated files to .gitignore

barebox* is not limited to the toplevel directory, so this ignores
all files starting with 'barebox' from which we have several we do
not wish to ignore. Add barebox-flash-image to the ignore list which
seemed to be the motivation for the original patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Shiyan <shc_work@mail.ru>
---
 .gitignore |   13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/.gitignore b/.gitignore
index 81e74a0..064753d 100644
--- a/.gitignore
+++ b/.gitignore
@@ -26,11 +26,22 @@
 #
 tags
 TAGS
-barebox*
 cross_arch
 cross_compile
+barebox
+barebox.S
+barebox.bin
+barebox.srec
+barebox.netx
+barebox.s5p
+barebox.spi
+barebox.ubl
+barebox.uimage
+barebox.map
+barebox-flash-image
 System.map
 Module.symvers
+barebox_default_env*
 
 #
 # Generated include files
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
