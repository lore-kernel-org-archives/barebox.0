Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sd925-0002M3-DV
 for barebox@lists.infradead.org; Fri, 08 Jun 2012 23:55:58 +0000
Received: by lbbgg6 with SMTP id gg6so1999803lbb.36
 for <barebox@lists.infradead.org>; Fri, 08 Jun 2012 16:55:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  9 Jun 2012 03:55:46 +0400
Message-Id: <1339199746-30441-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC] README: fix the directory layout section
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 README |   11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/README b/README
index cec9ccb..32a24d6 100644
--- a/README
+++ b/README
@@ -155,16 +155,17 @@ Directory Layout
 
 Most of the directory layout is based upon the Linux Kernel:
 
-arch/*/               -> contains architecture specific parts
-arch/*/mach-*/        -> SoC specific code
+arch/*/                           -> contains architecture specific parts
+arch/*/include/asm                -> architecture specific includes
+arch/*/mach-*/                    -> SoC specific code
+arch/*/mach-*/include/mach        -> SoC specific includes
+arch/*/boards/*/                  -> board specific parts
+arch/mips/boards/*/include/board  -> board specific includes
 
 drivers/serial        -> drivers
 drivers/net
 drivers/...
 
-include/asm-*         -> architecture specific includes
-include/asm-*/arch-*  -> SoC specific includes
-
 fs/                   -> filesystem support and filesystem drivers
 
 lib/                  -> generic library functions (getopt, readline and the
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
