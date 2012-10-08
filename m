Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp28.mail.ru ([94.100.176.181])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TL6vq-0002Qk-VR
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 06:35:16 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon,  8 Oct 2012 10:35:04 +0400
Message-Id: <1349678104-4531-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2] Add more generated files to .gitignore
To: barebox@lists.infradead.org

This patch adds at least one more generated file to .gitignore list:

shc@shc /home/git/bb_clps3 $ git status
# On branch my
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       barebox-flash-image

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 .gitignore |   12 +-----------
 1 files changed, 1 insertions(+), 11 deletions(-)

diff --git a/.gitignore b/.gitignore
index 9af6710..81e74a0 100644
--- a/.gitignore
+++ b/.gitignore
@@ -26,21 +26,11 @@
 #
 tags
 TAGS
+barebox*
 cross_arch
 cross_compile
-barebox
-barebox.S
-barebox.bin
-barebox.srec
-barebox.netx
-barebox.s5p
-barebox.spi
-barebox.ubl
-barebox.uimage
-barebox.map
 System.map
 Module.symvers
-barebox_default_env*
 
 #
 # Generated include files
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
